; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { %struct.snd_timer*, %struct.TYPE_2__* }
%struct.snd_timer = type { i32, i32, %struct.snd_wss*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_timer_id = type { i32, i64, i32, i32, i32 }

@SNDRV_TIMER_CLASS_CARD = common dso_local global i32 0, align 4
@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CS4231\00", align 1
@snd_wss_timer_free = common dso_local global i32 0, align 4
@snd_wss_timer_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_timer(%struct.snd_wss* %0, i32 %1, %struct.snd_timer** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_timer**, align 8
  %8 = alloca %struct.snd_timer*, align 8
  %9 = alloca %struct.snd_timer_id, align 8
  %10 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_timer** %2, %struct.snd_timer*** %7, align 8
  %11 = load i32, i32* @SNDRV_TIMER_CLASS_CARD, align 4
  %12 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %9, i32 0, i32 4
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %14 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %9, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %16 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %9, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %25 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @snd_timer_new(%struct.TYPE_2__* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %9, %struct.snd_timer** %8)
  store i32 %27, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %3
  %32 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %33 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %36 = call i32 @snd_wss_chip_id(%struct.snd_wss* %35)
  %37 = call i32 @strcpy(i32 %34, i32 %36)
  %38 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %39 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %40 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %39, i32 0, i32 2
  store %struct.snd_wss* %38, %struct.snd_wss** %40, align 8
  %41 = load i32, i32* @snd_wss_timer_free, align 4
  %42 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %43 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @snd_wss_timer_table, align 4
  %45 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %46 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %48 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %49 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %48, i32 0, i32 0
  store %struct.snd_timer* %47, %struct.snd_timer** %49, align 8
  %50 = load %struct.snd_timer**, %struct.snd_timer*** %7, align 8
  %51 = icmp ne %struct.snd_timer** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %54 = load %struct.snd_timer**, %struct.snd_timer*** %7, align 8
  store %struct.snd_timer* %53, %struct.snd_timer** %54, align 8
  br label %55

55:                                               ; preds = %52, %31
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @snd_timer_new(%struct.TYPE_2__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_wss_chip_id(%struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
