; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hidp_session = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.TYPE_4__ = type { i32 }
%struct.hci_dev = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.hidp_session*)* @hidp_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @hidp_get_device(%struct.hidp_session* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  %8 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %9 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @bt_sk(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %16 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @bt_sk(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* %21, i32** %5, align 8
  store %struct.device* null, %struct.device** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.hci_dev* @hci_get_route(i32* %22, i32* %23)
  store %struct.hci_dev* %24, %struct.hci_dev** %7, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %26 = icmp ne %struct.hci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = load i32, i32* @ACL_LINK, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_5__* @hci_conn_hash_lookup_ba(%struct.hci_dev* %29, i32 %30, i32* %31)
  %33 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %34 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %36 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %41 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.device* %43, %struct.device** %6, align 8
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = call i32 @hci_dev_put(%struct.hci_dev* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %47, %struct.device** %2, align 8
  br label %48

48:                                               ; preds = %44, %27
  %49 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %49
}

declare dso_local %struct.TYPE_6__* @bt_sk(i32) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
