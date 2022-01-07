; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_process_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_process_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @dn_process_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_process_ack(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call zeroext i16 @le16_to_cpu(i32 %23)
  store i16 %24, i16* %10, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @skb_pull(%struct.sk_buff* %29, i32 2)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %9, align 4
  %35 = load i16, i16* %10, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i16, i16* %10, align 2
  %44 = zext i16 %43 to i32
  %45 = xor i32 %44, 8192
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %10, align 2
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i16, i16* %10, align 2
  %51 = call i32 @dn_ack(%struct.sock* %48, %struct.sk_buff* %49, i16 zeroext %50)
  br label %52

52:                                               ; preds = %47, %28
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %92

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call zeroext i16 @le16_to_cpu(i32 %62)
  store i16 %63, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %64, 32768
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @skb_pull(%struct.sk_buff* %68, i32 2)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %9, align 4
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i16, i16* %10, align 2
  %81 = zext i16 %80 to i32
  %82 = xor i32 %81, 8192
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %10, align 2
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load i16, i16* %10, align 2
  %88 = call i32 @dn_ack(%struct.sock* %85, %struct.sk_buff* %86, i16 zeroext %87)
  br label %89

89:                                               ; preds = %84, %67
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %58, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_ack(%struct.sock*, %struct.sk_buff*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
