; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_tx.c_ieee80211_alloc_txb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_tx.c_ieee80211_alloc_txb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txb = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_txb* @ieee80211_alloc_txb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_txb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_txb*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = add i64 16, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.ieee80211_txb* @kmalloc(i32 %14, i32 %15)
  store %struct.ieee80211_txb* %16, %struct.ieee80211_txb** %8, align 8
  %17 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %18 = icmp ne %struct.ieee80211_txb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.ieee80211_txb* null, %struct.ieee80211_txb** %4, align 8
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %22 = call i32 @memset(%struct.ieee80211_txb* %21, i32 0, i32 16)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %58, %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_alloc_skb(i32 %34)
  %36 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %29

61:                                               ; preds = %54, %29
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_kfree_skb_any(i32 %80)
  br label %69

82:                                               ; preds = %69
  %83 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  %84 = call i32 @kfree(%struct.ieee80211_txb* %83)
  store %struct.ieee80211_txb* null, %struct.ieee80211_txb** %4, align 8
  br label %87

85:                                               ; preds = %61
  %86 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %8, align 8
  store %struct.ieee80211_txb* %86, %struct.ieee80211_txb** %4, align 8
  br label %87

87:                                               ; preds = %85, %82, %19
  %88 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %4, align 8
  ret %struct.ieee80211_txb* %88
}

declare dso_local %struct.ieee80211_txb* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_txb*, i32, i32) #1

declare dso_local i32 @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_txb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
