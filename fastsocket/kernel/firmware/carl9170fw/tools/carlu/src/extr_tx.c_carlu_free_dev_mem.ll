; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_free_dev_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_free_dev_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32, i32, i32, i32 }
%struct.frame = type { i32, i64 }
%struct._carl9170_tx_superframe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*, %struct.frame*)* @carlu_free_dev_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlu_free_dev_mem(%struct.carlu* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct._carl9170_tx_superframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %8 = load %struct.frame*, %struct.frame** %4, align 8
  %9 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %12, %struct._carl9170_tx_superframe** %5, align 8
  %13 = load %struct.frame*, %struct.frame** %4, align 8
  %14 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.carlu*, %struct.carlu** %3, align 8
  %17 = getelementptr inbounds %struct.carlu, %struct.carlu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @roundup(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.carlu*, %struct.carlu** %3, align 8
  %22 = getelementptr inbounds %struct.carlu, %struct.carlu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = udiv i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.carlu*, %struct.carlu** %3, align 8
  %26 = getelementptr inbounds %struct.carlu, %struct.carlu* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SDL_mutexP(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.carlu*, %struct.carlu** %3, align 8
  %31 = getelementptr inbounds %struct.carlu, %struct.carlu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.carlu*, %struct.carlu** %3, align 8
  %35 = getelementptr inbounds %struct.carlu, %struct.carlu* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.carlu*, %struct.carlu** %3, align 8
  %39 = getelementptr inbounds %struct.carlu, %struct.carlu* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SDL_mutexV(i32 %40)
  ret void
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
