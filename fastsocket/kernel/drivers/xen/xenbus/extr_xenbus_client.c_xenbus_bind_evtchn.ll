; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_bind_evtchn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_bind_evtchn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.evtchn_bind_interdomain = type { i32, i32, i32 }

@EVTCHNOP_bind_interdomain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"binding to event channel %d from domain %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_bind_evtchn(%struct.xenbus_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.evtchn_bind_interdomain, align 4
  %8 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @EVTCHNOP_bind_interdomain, align 4
  %16 = call i32 @HYPERVISOR_event_channel_op(i32 %15, %struct.evtchn_bind_interdomain* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %20, i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_interdomain*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
