; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_add_sco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_add_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_add_sco = type { i32 }
%struct.hci_conn = type { i32, %struct.hci_conn* }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_ADD_SCO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s handle %d\00", align 1
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_add_sco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_add_sco(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_add_sco*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_OP_ADD_SCO, align 4
  %20 = call %struct.hci_cp_add_sco* @hci_sent_cmd_data(%struct.hci_dev* %18, i32 %19)
  store %struct.hci_cp_add_sco* %20, %struct.hci_cp_add_sco** %5, align 8
  %21 = load %struct.hci_cp_add_sco*, %struct.hci_cp_add_sco** %5, align 8
  %22 = icmp ne %struct.hci_cp_add_sco* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.hci_cp_add_sco*, %struct.hci_cp_add_sco** %5, align 8
  %26 = getelementptr inbounds %struct.hci_cp_add_sco, %struct.hci_cp_add_sco* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le16_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = call i32 @hci_dev_lock(%struct.hci_dev* %34)
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %36, i32 %37)
  store %struct.hci_conn* %38, %struct.hci_conn** %6, align 8
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = icmp ne %struct.hci_conn* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %24
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 1
  %44 = load %struct.hci_conn*, %struct.hci_conn** %43, align 8
  store %struct.hci_conn* %44, %struct.hci_conn** %7, align 8
  %45 = icmp ne %struct.hci_conn* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @BT_CLOSED, align 4
  %48 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %50, i32 %51)
  %53 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %54 = call i32 @hci_conn_del(%struct.hci_conn* %53)
  br label %55

55:                                               ; preds = %46, %41, %24
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = call i32 @hci_dev_unlock(%struct.hci_dev* %56)
  br label %58

58:                                               ; preds = %55, %23, %16
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_cp_add_sco* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
