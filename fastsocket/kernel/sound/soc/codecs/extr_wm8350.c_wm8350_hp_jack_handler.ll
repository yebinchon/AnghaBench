; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }
%struct.wm8350_data = type { %struct.wm8350_jack_data, %struct.wm8350_jack_data }
%struct.wm8350_jack_data = type { i32, i32 }

@WM8350_JACK_L_LVL = common dso_local global i32 0, align 4
@WM8350_JACK_R_LVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Jack interrupt called with no jack\0A\00", align 1
@WM8350_JACK_PIN_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i32, i8*)* @wm8350_hp_jack_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_hp_jack_handler(%struct.wm8350* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wm8350_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wm8350_jack_data*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.wm8350_data*
  store %struct.wm8350_data* %13, %struct.wm8350_data** %7, align 8
  store %struct.wm8350_jack_data* null, %struct.wm8350_jack_data** %11, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %3
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %17 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %16, i32 0, i32 1
  store %struct.wm8350_jack_data* %17, %struct.wm8350_jack_data** %11, align 8
  %18 = load i32, i32* @WM8350_JACK_L_LVL, align 4
  store i32 %18, i32* %10, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %21 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %20, i32 0, i32 0
  store %struct.wm8350_jack_data* %21, %struct.wm8350_jack_data** %11, align 8
  %22 = load i32, i32* @WM8350_JACK_R_LVL, align 4
  store i32 %22, i32* %10, align 4
  br label %25

23:                                               ; preds = %3
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %19, %15
  %26 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %11, align 8
  %27 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %32 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %58

35:                                               ; preds = %25
  %36 = call i32 @msleep(i32 200)
  %37 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %38 = load i32, i32* @WM8350_JACK_PIN_STATUS, align 4
  %39 = call i32 @wm8350_reg_read(%struct.wm8350* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %11, align 8
  %46 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %11, align 8
  %51 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.wm8350_jack_data*, %struct.wm8350_jack_data** %11, align 8
  %55 = getelementptr inbounds %struct.wm8350_jack_data, %struct.wm8350_jack_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_soc_jack_report(i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %30
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
