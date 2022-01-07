; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_unmask_evtchn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_events.c_unmask_evtchn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32*, i32* }
%struct.evtchn_unmask = type { i32 }
%struct.vcpu_info = type { i32, i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@EVTCHNOP_unmask = common dso_local global i32 0, align 4
@xen_vcpu = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unmask_evtchn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmask_evtchn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shared_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_unmask, align 4
  %6 = alloca %struct.vcpu_info*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %7, %struct.shared_info** %3, align 8
  %8 = call i32 (...) @get_cpu()
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @irqs_disabled()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cpu_from_evtchn(i32 %15)
  %17 = icmp ne i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.evtchn_unmask, %struct.evtchn_unmask* %5, i32 0, i32 0
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* @EVTCHNOP_unmask, align 4
  %25 = call i32 @HYPERVISOR_event_channel_op(i32 %24, %struct.evtchn_unmask* %5)
  br label %54

26:                                               ; preds = %1
  %27 = load i32, i32* @xen_vcpu, align 4
  %28 = call %struct.vcpu_info* @__get_cpu_var(i32 %27)
  store %struct.vcpu_info* %28, %struct.vcpu_info** %6, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %31 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @sync_clear_bit(i32 %29, i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %37 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i64 @sync_test_bit(i32 %35, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %26
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @BITS_PER_LONG, align 4
  %45 = sdiv i32 %43, %44
  %46 = load %struct.vcpu_info*, %struct.vcpu_info** %6, align 8
  %47 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %46, i32 0, i32 1
  %48 = call i32 @sync_test_and_set_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.vcpu_info*, %struct.vcpu_info** %6, align 8
  %52 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %42, %26
  br label %54

54:                                               ; preds = %53, %21
  %55 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_from_evtchn(i32) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_unmask*) #1

declare dso_local %struct.vcpu_info* @__get_cpu_var(i32) #1

declare dso_local i32 @sync_clear_bit(i32, i32*) #1

declare dso_local i64 @sync_test_bit(i32, i32*) #1

declare dso_local i32 @sync_test_and_set_bit(i32, i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
