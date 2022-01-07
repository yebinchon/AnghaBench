; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_LED.c_led_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_LED.c_led_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { %struct.xt_led_info* }
%struct.xt_led_info = type { i64, %struct.xt_led_info_internal* }
%struct.xt_led_info_internal = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @led_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_tg_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.xt_led_info*, align 8
  %4 = alloca %struct.xt_led_info_internal*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %5 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %6 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %5, i32 0, i32 0
  %7 = load %struct.xt_led_info*, %struct.xt_led_info** %6, align 8
  store %struct.xt_led_info* %7, %struct.xt_led_info** %3, align 8
  %8 = load %struct.xt_led_info*, %struct.xt_led_info** %3, align 8
  %9 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %8, i32 0, i32 1
  %10 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %9, align 8
  store %struct.xt_led_info_internal* %10, %struct.xt_led_info_internal** %4, align 8
  %11 = load %struct.xt_led_info*, %struct.xt_led_info** %3, align 8
  %12 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %17 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %16, i32 0, i32 1
  %18 = call i32 @del_timer_sync(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %21 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %20, i32 0, i32 0
  %22 = call i32 @led_trigger_unregister(i32* %21)
  %23 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %24 = call i32 @kfree(%struct.xt_led_info_internal* %23)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @led_trigger_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.xt_led_info_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
