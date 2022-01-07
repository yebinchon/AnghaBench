; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_msmfb_remove_mdp_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_msmfb_remove_mdp_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.class_interface = type { i32 }

@mdp = common dso_local global %struct.TYPE_2__* null, align 8
@msm_panel_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.class_interface*)* @msmfb_remove_mdp_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmfb_remove_mdp_device(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.class_interface*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.class_interface* %1, %struct.class_interface** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdp, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = icmp ne %struct.device* %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  %11 = call i32 @platform_driver_unregister(i32* @msm_panel_driver)
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @mdp, align 8
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
