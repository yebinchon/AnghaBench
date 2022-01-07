; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_alloc_dev_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_alloc_dev_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32, i64, i64, i64, i32, i32 }
%struct.frame = type { i32, i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlu*, %struct.frame*)* @carlu_alloc_dev_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_alloc_dev_mem(%struct.carlu* %0, %struct.frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca %struct._carl9170_tx_superframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store %struct.frame* %1, %struct.frame** %5, align 8
  %9 = load %struct.frame*, %struct.frame** %5, align 8
  %10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %13, %struct._carl9170_tx_superframe** %6, align 8
  %14 = load %struct.frame*, %struct.frame** %5, align 8
  %15 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.carlu*, %struct.carlu** %4, align 8
  %18 = getelementptr inbounds %struct.carlu, %struct.carlu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @roundup(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.carlu*, %struct.carlu** %4, align 8
  %23 = getelementptr inbounds %struct.carlu, %struct.carlu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = udiv i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.carlu*, %struct.carlu** %4, align 8
  %27 = getelementptr inbounds %struct.carlu, %struct.carlu* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SDL_mutexP(i32 %28)
  %30 = load %struct.carlu*, %struct.carlu** %4, align 8
  %31 = getelementptr inbounds %struct.carlu, %struct.carlu* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.carlu*, %struct.carlu** %4, align 8
  %34 = getelementptr inbounds %struct.carlu, %struct.carlu* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %2
  %38 = load %struct.carlu*, %struct.carlu** %4, align 8
  %39 = getelementptr inbounds %struct.carlu, %struct.carlu* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.carlu*, %struct.carlu** %4, align 8
  %45 = getelementptr inbounds %struct.carlu, %struct.carlu* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37, %2
  %49 = load %struct.carlu*, %struct.carlu** %4, align 8
  %50 = getelementptr inbounds %struct.carlu, %struct.carlu* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SDL_mutexV(i32 %51)
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %78

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = load %struct.carlu*, %struct.carlu** %4, align 8
  %59 = getelementptr inbounds %struct.carlu, %struct.carlu* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.carlu*, %struct.carlu** %4, align 8
  %63 = getelementptr inbounds %struct.carlu, %struct.carlu* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.carlu*, %struct.carlu** %4, align 8
  %67 = getelementptr inbounds %struct.carlu, %struct.carlu* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = sext i32 %68 to i64
  %71 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %6, align 8
  %72 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.carlu*, %struct.carlu** %4, align 8
  %75 = getelementptr inbounds %struct.carlu, %struct.carlu* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @SDL_mutexV(i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %55, %48
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @SDL_mutexP(i32) #1

declare dso_local i32 @SDL_mutexV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
