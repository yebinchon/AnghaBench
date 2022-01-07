; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dccp.c_dccp_find_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_dccp.c_dccp_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }

@dccp_buflock = common dso_local global i32 0, align 4
@dccp_optbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.sk_buff*, i32, %struct.dccp_hdr*, i32*)* @dccp_find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_find_option(i8 zeroext %0, %struct.sk_buff* %1, i32 %2, %struct.dccp_hdr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_hdr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dccp_hdr* %3, %struct.dccp_hdr** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %17 = call i32 @__dccp_hdr_len(%struct.dccp_hdr* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %19 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %23 = call i32 @__dccp_hdr_len(%struct.dccp_hdr* %22)
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %26 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %30 = call i32 @__dccp_hdr_len(%struct.dccp_hdr* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %97

33:                                               ; preds = %5
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %99

37:                                               ; preds = %33
  %38 = call i32 @spin_lock_bh(i32* @dccp_buflock)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @dccp_optbuf, align 4
  %45 = call i8* @skb_header_pointer(%struct.sk_buff* %39, i32 %42, i32 %43, i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %95

49:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @spin_unlock_bh(i32* @dccp_buflock)
  store i32 1, i32* %6, align 4
  br label %99

66:                                               ; preds = %54
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %92

77:                                               ; preds = %66
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %88

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %86
  %89 = phi i32 [ %84, %86 ], [ 1, %87 ]
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %88, %74
  br label %50

93:                                               ; preds = %50
  %94 = call i32 @spin_unlock_bh(i32* @dccp_buflock)
  store i32 0, i32* %6, align 4
  br label %99

95:                                               ; preds = %48
  %96 = call i32 @spin_unlock_bh(i32* @dccp_buflock)
  br label %97

97:                                               ; preds = %95, %32
  %98 = load i32*, i32** %11, align 8
  store i32 1, i32* %98, align 4
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %93, %64, %36
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @__dccp_hdr_len(%struct.dccp_hdr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
