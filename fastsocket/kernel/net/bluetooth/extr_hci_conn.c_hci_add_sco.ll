; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_add_sco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_add_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_add_sco = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4
@HCI_OP_ADD_SCO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_add_sco(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.hci_cp_add_sco, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %5, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %10)
  %12 = load i32, i32* @BT_CONNECT, align 4
  %13 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.hci_cp_add_sco, %struct.hci_cp_add_sco* %6, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds %struct.hci_cp_add_sco, %struct.hci_cp_add_sco* %6, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %30 = load i32, i32* @HCI_OP_ADD_SCO, align 4
  %31 = call i32 @hci_send_cmd(%struct.hci_dev* %29, i32 %30, i32 16, %struct.hci_cp_add_sco* %6)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_add_sco*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
