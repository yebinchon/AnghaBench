; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_uninit_applicant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_uninit_applicant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.garp_port* }
%struct.garp_port = type { %struct.garp_applicant** }
%struct.garp_applicant = type { i32 }
%struct.garp_application = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GARP_EVENT_TRANSMIT_PDU = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @garp_uninit_applicant(%struct.net_device* %0, %struct.garp_application* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.garp_application*, align 8
  %5 = alloca %struct.garp_port*, align 8
  %6 = alloca %struct.garp_applicant*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.garp_application* %1, %struct.garp_application** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.garp_port*, %struct.garp_port** %8, align 8
  store %struct.garp_port* %9, %struct.garp_port** %5, align 8
  %10 = load %struct.garp_port*, %struct.garp_port** %5, align 8
  %11 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %10, i32 0, i32 0
  %12 = load %struct.garp_applicant**, %struct.garp_applicant*** %11, align 8
  %13 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %14 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.garp_applicant*, %struct.garp_applicant** %12, i64 %15
  %17 = load %struct.garp_applicant*, %struct.garp_applicant** %16, align 8
  store %struct.garp_applicant* %17, %struct.garp_applicant** %6, align 8
  %18 = call i32 (...) @ASSERT_RTNL()
  %19 = load %struct.garp_port*, %struct.garp_port** %5, align 8
  %20 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %19, i32 0, i32 0
  %21 = load %struct.garp_applicant**, %struct.garp_applicant*** %20, align 8
  %22 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %23 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.garp_applicant*, %struct.garp_applicant** %21, i64 %24
  %26 = load %struct.garp_applicant*, %struct.garp_applicant** %25, align 8
  %27 = call i32 @rcu_assign_pointer(%struct.garp_applicant* %26, i32* null)
  %28 = call i32 (...) @synchronize_rcu()
  %29 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %30 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %29, i32 0, i32 0
  %31 = call i32 @del_timer_sync(i32* %30)
  %32 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %33 = load i32, i32* @GARP_EVENT_TRANSMIT_PDU, align 4
  %34 = call i32 @garp_gid_event(%struct.garp_applicant* %32, i32 %33)
  %35 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %36 = call i32 @garp_pdu_queue(%struct.garp_applicant* %35)
  %37 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %38 = call i32 @garp_queue_xmit(%struct.garp_applicant* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.garp_application*, %struct.garp_application** %4, align 8
  %41 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @dev_mc_delete(%struct.net_device* %39, i32 %43, i32 %44, i32 0)
  %46 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %47 = call i32 @kfree(%struct.garp_applicant* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @garp_release_port(%struct.net_device* %48)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rcu_assign_pointer(%struct.garp_applicant*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @garp_gid_event(%struct.garp_applicant*, i32) #1

declare dso_local i32 @garp_pdu_queue(%struct.garp_applicant*) #1

declare dso_local i32 @garp_queue_xmit(%struct.garp_applicant*) #1

declare dso_local i32 @dev_mc_delete(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.garp_applicant*) #1

declare dso_local i32 @garp_release_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
