; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_copy_expand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_copy_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32, i32, i64, i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.sk_buff* @alloc_skb(i64 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_headroom(%struct.sk_buff* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %90

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @skb_put(%struct.sk_buff* %35, i64 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %12, align 4
  br label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i64 @skb_copy_bits(%struct.sk_buff* %51, i32 %53, i64 %59, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %50
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @copy_skb_header(%struct.sk_buff* %71, %struct.sk_buff* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %70
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %5, align 8
  br label %90

90:                                               ; preds = %88, %30
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %91
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @copy_skb_header(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
