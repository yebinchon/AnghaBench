; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rfcomm_dev = type { i32, i32 }
%struct.hci_dev = type { i32 }
%struct.hci_conn = type { %struct.device }

@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.rfcomm_dev*)* @rfcomm_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @rfcomm_get_device(%struct.rfcomm_dev* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rfcomm_dev*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %3, align 8
  %6 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %6, i32 0, i32 0
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %8, i32 0, i32 1
  %10 = call %struct.hci_dev* @hci_get_route(i32* %7, i32* %9)
  store %struct.hci_dev* %10, %struct.hci_dev** %4, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = icmp ne %struct.hci_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = load i32, i32* @ACL_LINK, align 4
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 0
  %19 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %15, i32 %16, i32* %18)
  store %struct.hci_conn* %19, %struct.hci_conn** %5, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = call i32 @hci_dev_put(%struct.hci_dev* %20)
  %22 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %23 = icmp ne %struct.hci_conn* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 0
  br label %28

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.device* [ %26, %24 ], [ null, %27 ]
  store %struct.device* %29, %struct.device** %2, align 8
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %31
}

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
