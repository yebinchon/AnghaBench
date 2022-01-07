; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_read_remote_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_read_remote_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_read_remote_features = type { i32 }
%struct.hci_conn = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_READ_REMOTE_FEATURES = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_read_remote_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_read_remote_features(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_read_remote_features*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = load i32, i32* @HCI_OP_READ_REMOTE_FEATURES, align 4
  %18 = call %struct.hci_cp_read_remote_features* @hci_sent_cmd_data(%struct.hci_dev* %16, i32 %17)
  store %struct.hci_cp_read_remote_features* %18, %struct.hci_cp_read_remote_features** %5, align 8
  %19 = load %struct.hci_cp_read_remote_features*, %struct.hci_cp_read_remote_features** %5, align 8
  %20 = icmp ne %struct.hci_cp_read_remote_features* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_cp_read_remote_features*, %struct.hci_cp_read_remote_features** %5, align 8
  %27 = getelementptr inbounds %struct.hci_cp_read_remote_features, %struct.hci_cp_read_remote_features* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__le16_to_cpu(i32 %28)
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %25, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %6, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BT_CONFIG, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %40, i32 %41)
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = call i32 @hci_conn_put(%struct.hci_conn* %43)
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = call i32 @hci_dev_unlock(%struct.hci_dev* %47)
  br label %49

49:                                               ; preds = %46, %21, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_read_remote_features* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
