; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_activate_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_activate_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.w100_tg_info* }
%struct.w100_tg_info = type { i32 (%struct.w100fb_par*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100fb_activate_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100fb_activate_var(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca %struct.w100_tg_info*, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %4 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %5 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.w100_tg_info*, %struct.w100_tg_info** %7, align 8
  store %struct.w100_tg_info* %8, %struct.w100_tg_info** %3, align 8
  %9 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %10 = call i32 @w100_pwm_setup(%struct.w100fb_par* %9)
  %11 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %12 = call i32 @w100_setup_memory(%struct.w100fb_par* %11)
  %13 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %14 = call i32 @w100_init_clocks(%struct.w100fb_par* %13)
  %15 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %16 = call i32 @w100fb_clear_screen(%struct.w100fb_par* %15)
  %17 = call i32 (...) @w100_vsync()
  %18 = call i32 (...) @w100_update_disable()
  %19 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %20 = call i32 @w100_init_lcd(%struct.w100fb_par* %19)
  %21 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %22 = call i32 @w100_set_dispregs(%struct.w100fb_par* %21)
  %23 = call i32 (...) @w100_update_enable()
  %24 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %25 = call i32 @w100_init_graphic_engine(%struct.w100fb_par* %24)
  %26 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %27 = call i32 @calc_hsync(%struct.w100fb_par* %26)
  %28 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %29 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %1
  %33 = load %struct.w100_tg_info*, %struct.w100_tg_info** %3, align 8
  %34 = icmp ne %struct.w100_tg_info* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.w100_tg_info*, %struct.w100_tg_info** %3, align 8
  %37 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %36, i32 0, i32 0
  %38 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %37, align 8
  %39 = icmp ne i32 (%struct.w100fb_par*)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.w100_tg_info*, %struct.w100_tg_info** %3, align 8
  %42 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %41, i32 0, i32 0
  %43 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %42, align 8
  %44 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %45 = call i32 %43(%struct.w100fb_par* %44)
  br label %46

46:                                               ; preds = %40, %35, %32, %1
  ret void
}

declare dso_local i32 @w100_pwm_setup(%struct.w100fb_par*) #1

declare dso_local i32 @w100_setup_memory(%struct.w100fb_par*) #1

declare dso_local i32 @w100_init_clocks(%struct.w100fb_par*) #1

declare dso_local i32 @w100fb_clear_screen(%struct.w100fb_par*) #1

declare dso_local i32 @w100_vsync(...) #1

declare dso_local i32 @w100_update_disable(...) #1

declare dso_local i32 @w100_init_lcd(%struct.w100fb_par*) #1

declare dso_local i32 @w100_set_dispregs(%struct.w100fb_par*) #1

declare dso_local i32 @w100_update_enable(...) #1

declare dso_local i32 @w100_init_graphic_engine(%struct.w100fb_par*) #1

declare dso_local i32 @calc_hsync(%struct.w100fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
