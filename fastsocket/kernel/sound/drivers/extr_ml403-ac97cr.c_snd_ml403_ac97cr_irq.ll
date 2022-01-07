; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ml403_ac97cr = type { i32, i32, i64, i32, i32, i64, %struct.platform_device* }
%struct.platform_device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_playback_ind2_copy = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_playback_ind2_zero = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_capture_ind2_copy = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_capture_ind2_null = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INIT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"irq(): irq %d is meant to be disabled! So, now try to disable it _really_!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ml403_ac97cr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_ml403_ac97cr*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_ml403_ac97cr*
  store %struct.snd_ml403_ac97cr* %10, %struct.snd_ml403_ac97cr** %6, align 8
  %11 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %12 = icmp eq %struct.snd_ml403_ac97cr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %17 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %16, i32 0, i32 6
  %18 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  store %struct.platform_device* %18, %struct.platform_device** %7, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %20 = call i32 @platform_get_irq(%struct.platform_device* %19, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %26 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %31 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %34 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %33, i32 0, i32 3
  %35 = load i32, i32* @snd_ml403_ac97cr_playback_ind2_copy, align 4
  %36 = load i32, i32* @snd_ml403_ac97cr_playback_ind2_zero, align 4
  %37 = call i32 @snd_pcm_indirect2_playback_interrupt(i32 %32, i32* %34, i32 %35, i32 %36)
  br label %39

38:                                               ; preds = %24
  br label %67

39:                                               ; preds = %29
  br label %65

40:                                               ; preds = %15
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = call i32 @platform_get_irq(%struct.platform_device* %41, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %48 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %53 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %6, align 8
  %56 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %55, i32 0, i32 0
  %57 = load i32, i32* @snd_ml403_ac97cr_capture_ind2_copy, align 4
  %58 = load i32, i32* @snd_ml403_ac97cr_capture_ind2_null, align 4
  %59 = call i32 @snd_pcm_indirect2_capture_interrupt(i32 %54, i32* %56, i32 %57, i32 %58)
  br label %61

60:                                               ; preds = %46
  br label %67

61:                                               ; preds = %51
  br label %64

62:                                               ; preds = %40
  %63 = load i32, i32* @IRQ_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %74

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %60, %38
  %68 = load i32, i32* @INIT_INFO, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @PDEBUG(i32 %68, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @disable_irq_nosync(i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %65, %62, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @snd_pcm_indirect2_playback_interrupt(i32, i32*, i32, i32) #1

declare dso_local i32 @snd_pcm_indirect2_capture_interrupt(i32, i32*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
