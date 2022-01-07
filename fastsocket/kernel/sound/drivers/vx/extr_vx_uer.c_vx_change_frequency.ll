; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_change_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_uer.c_vx_change_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i64, i32, i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@INTERNAL_QUARTZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vx_change_frequency(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %5 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %6 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %14 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTERNAL_QUARTZ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %12
  %20 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %21 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %22 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %21, i32 0, i32 3
  %23 = call i32 @vx_read_uer_status(%struct.vx_core* %20, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 48000
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 44100
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 32000
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31, %28
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %40 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %26, %18, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @vx_read_uer_status(%struct.vx_core*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
