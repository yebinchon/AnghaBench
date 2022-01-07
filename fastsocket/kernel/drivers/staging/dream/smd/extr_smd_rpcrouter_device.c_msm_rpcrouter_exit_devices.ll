; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_msm_rpcrouter_exit_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_msm_rpcrouter_exit_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpcrouter_cdev = common dso_local global i32 0, align 4
@msm_rpcrouter_class = common dso_local global i32 0, align 4
@msm_rpcrouter_devno = common dso_local global i32 0, align 4
@RPCROUTER_MAX_REMOTE_SERVERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_rpcrouter_exit_devices() #0 {
  %1 = call i32 @cdev_del(i32* @rpcrouter_cdev)
  %2 = load i32, i32* @msm_rpcrouter_class, align 4
  %3 = load i32, i32* @msm_rpcrouter_devno, align 4
  %4 = call i32 @device_destroy(i32 %2, i32 %3)
  %5 = load i32, i32* @msm_rpcrouter_devno, align 4
  %6 = load i64, i64* @RPCROUTER_MAX_REMOTE_SERVERS, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32 @unregister_chrdev_region(i32 %5, i64 %7)
  %9 = load i32, i32* @msm_rpcrouter_class, align 4
  %10 = call i32 @class_destroy(i32 %9)
  ret void
}

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i64) #1

declare dso_local i32 @class_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
