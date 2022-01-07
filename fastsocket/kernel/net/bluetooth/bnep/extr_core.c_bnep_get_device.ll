; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bnep_session = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hci_dev = type { i32 }
%struct.hci_conn = type { %struct.device }
%struct.TYPE_4__ = type { i32, i32 }

@ACL_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.bnep_session*)* @bnep_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @bnep_get_device(%struct.bnep_session* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.bnep_session* %0, %struct.bnep_session** %3, align 8
  %8 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %9 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @bt_sk(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %16 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @bt_sk(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.hci_dev* @hci_get_route(i32* %22, i32* %23)
  store %struct.hci_dev* %24, %struct.hci_dev** %6, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = icmp ne %struct.hci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %30 = load i32, i32* @ACL_LINK, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %29, i32 %30, i32* %31)
  store %struct.hci_conn* %32, %struct.hci_conn** %7, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %34 = call i32 @hci_dev_put(%struct.hci_dev* %33)
  %35 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %36 = icmp ne %struct.hci_conn* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 0
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi %struct.device* [ %39, %37 ], [ null, %40 ]
  store %struct.device* %42, %struct.device** %2, align 8
  br label %43

43:                                               ; preds = %41, %27
  %44 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %44
}

declare dso_local %struct.TYPE_4__* @bt_sk(i32) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
