; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_among.c_ebt_mac_wormhash_check_integrity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_among.c_ebt_mac_wormhash_check_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_mac_wormhash = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_mac_wormhash*)* @ebt_mac_wormhash_check_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_mac_wormhash_check_integrity(%struct.ebt_mac_wormhash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ebt_mac_wormhash*, align 8
  %4 = alloca i32, align 4
  store %struct.ebt_mac_wormhash* %0, %struct.ebt_mac_wormhash** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %59

8:                                                ; preds = %5
  %9 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %10 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %17 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %15, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 -256, %26
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %8
  %29 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %30 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 -512, %38
  store i32 %39, i32* %2, align 4
  br label %71

40:                                               ; preds = %28
  %41 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %42 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %49 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 -768, %53
  store i32 %54, i32* %2, align 4
  br label %71

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %61 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 256
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %3, align 8
  %66 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 -3072, i32* %2, align 4
  br label %71

70:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %52, %37, %25
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
