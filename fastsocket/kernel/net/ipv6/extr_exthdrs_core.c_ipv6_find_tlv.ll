; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs_core.c_ipv6_find_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs_core.c_ipv6_find_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ipv6_opt_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_find_tlv(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6_opt_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i8* @skb_network_header(%struct.sk_buff* %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 2
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %90

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = bitcast i8* %32 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %33, %struct.ipv6_opt_hdr** %10, align 8
  %34 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = shl i32 %37, 3
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %90

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %82, %45
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %4, align 4
  br label %91

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  switch i32 %66, label %68 [
    i32 128, label %67
  ]

67:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %82

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %90

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %50

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89, %80, %44, %27
  store i32 -1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
