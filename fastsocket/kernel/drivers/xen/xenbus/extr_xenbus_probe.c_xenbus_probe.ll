; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@xenstored_ready = common dso_local global i64 0, align 8
@xenbus_frontend = common dso_local global i32 0, align 4
@fe_watch = common dso_local global i32 0, align 4
@xenstore_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenbus_probe(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %3 = load i64, i64* @xenstored_ready, align 8
  %4 = icmp sle i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = call i32 @xenbus_probe_devices(i32* @xenbus_frontend)
  %8 = call i32 @register_xenbus_watch(i32* @fe_watch)
  %9 = call i32 (...) @xenbus_backend_probe_and_watch()
  %10 = call i32 @blocking_notifier_call_chain(i32* @xenstore_chain, i32 0, i32* null)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xenbus_probe_devices(i32*) #1

declare dso_local i32 @register_xenbus_watch(i32*) #1

declare dso_local i32 @xenbus_backend_probe_and_watch(...) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
