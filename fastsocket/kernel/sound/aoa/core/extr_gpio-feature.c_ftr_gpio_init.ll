; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/core/extr_gpio-feature.c_ftr_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.gpio_runtime = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"headphone-mute\00", align 1
@headphone_mute_gpio = common dso_local global i32 0, align 4
@headphone_mute_gpio_activestate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"amp-mute\00", align 1
@amp_mute_gpio = common dso_local global i32 0, align 4
@amp_mute_gpio_activestate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"lineout-mute\00", align 1
@lineout_mute_gpio = common dso_local global i32 0, align 4
@lineout_mute_gpio_activestate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hw-reset\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"audio-hw-reset\00", align 1
@hw_reset_gpio = common dso_local global i32 0, align 4
@hw_reset_gpio_activestate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"master-mute\00", align 1
@master_mute_gpio = common dso_local global i32 0, align 4
@master_mute_gpio_activestate = common dso_local global i32 0, align 4
@ftr_gpio_set_master = common dso_local global i32 0, align 4
@methods = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ftr_gpio_get_master = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"headphone-detect\00", align 1
@headphone_detect_gpio = common dso_local global i32 0, align 4
@headphone_detect_gpio_activestate = common dso_local global i32 0, align 4
@headphone_detect_node = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"lineout-detect\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"line-output-detect\00", align 1
@lineout_detect_gpio = common dso_local global i32 0, align 4
@lineout_detect_gpio_activestate = common dso_local global i32 0, align 4
@lineout_detect_node = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"linein-detect\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"line-input-detect\00", align 1
@linein_detect_gpio = common dso_local global i32 0, align 4
@linein_detect_gpio_activestate = common dso_local global i32 0, align 4
@linein_detect_node = common dso_local global i64 0, align 8
@headphone_detect_irq = common dso_local global i32 0, align 4
@lineout_detect_irq = common dso_local global i32 0, align 4
@linein_detect_irq = common dso_local global i32 0, align 4
@ftr_handle_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @ftr_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftr_gpio_init(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %3 = call i64 @get_gpio(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* null, i32* @headphone_mute_gpio, i32* @headphone_mute_gpio_activestate)
  %4 = call i64 @get_gpio(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* @amp_mute_gpio, i32* @amp_mute_gpio_activestate)
  %5 = call i64 @get_gpio(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* @lineout_mute_gpio, i32* @lineout_mute_gpio_activestate)
  %6 = call i64 @get_gpio(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* @hw_reset_gpio, i32* @hw_reset_gpio_activestate)
  %7 = call i64 @get_gpio(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* null, i32* @master_mute_gpio, i32* @master_mute_gpio_activestate)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ftr_gpio_set_master, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @methods, i32 0, i32 1), align 4
  %11 = load i32, i32* @ftr_gpio_get_master, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @methods, i32 0, i32 0), align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i64 @get_gpio(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* null, i32* @headphone_detect_gpio, i32* @headphone_detect_gpio_activestate)
  store i64 %13, i64* @headphone_detect_node, align 8
  %14 = call i64 @get_gpio(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* @lineout_detect_gpio, i32* @lineout_detect_gpio_activestate)
  store i64 %14, i64* @lineout_detect_node, align 8
  %15 = call i64 @get_gpio(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* @linein_detect_gpio, i32* @linein_detect_gpio_activestate)
  store i64 %15, i64* @linein_detect_node, align 8
  %16 = load i32, i32* @headphone_detect_gpio, align 4
  %17 = call i32 @gpio_enable_dual_edge(i32 %16)
  %18 = load i32, i32* @lineout_detect_gpio, align 4
  %19 = call i32 @gpio_enable_dual_edge(i32 %18)
  %20 = load i32, i32* @linein_detect_gpio, align 4
  %21 = call i32 @gpio_enable_dual_edge(i32 %20)
  %22 = load i64, i64* @headphone_detect_node, align 8
  %23 = call i32 @get_irq(i64 %22, i32* @headphone_detect_irq)
  %24 = load i64, i64* @lineout_detect_node, align 8
  %25 = call i32 @get_irq(i64 %24, i32* @lineout_detect_irq)
  %26 = load i64, i64* @linein_detect_node, align 8
  %27 = call i32 @get_irq(i64 %26, i32* @linein_detect_irq)
  %28 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %29 = call i32 @ftr_gpio_all_amps_off(%struct.gpio_runtime* %28)
  %30 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %31 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %33 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* @ftr_handle_notify, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %38 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* @ftr_handle_notify, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %43 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* @ftr_handle_notify, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %48 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %52 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %56 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @mutex_init(i32* %57)
  ret void
}

declare dso_local i64 @get_gpio(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @gpio_enable_dual_edge(i32) #1

declare dso_local i32 @get_irq(i64, i32*) #1

declare dso_local i32 @ftr_gpio_all_amps_off(%struct.gpio_runtime*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
