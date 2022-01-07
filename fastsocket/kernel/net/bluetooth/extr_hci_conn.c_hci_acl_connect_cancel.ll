; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_acl_connect_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_acl_connect_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hci_cp_create_conn_cancel = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@HCI_OP_CREATE_CONN_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*)* @hci_acl_connect_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_acl_connect_cancel(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_cp_create_conn_cancel, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %4 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %4)
  %6 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hci_cp_create_conn_cancel, %struct.hci_cp_create_conn_cancel* %3, i32 0, i32 0
  %15 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 1
  %17 = call i32 @bacpy(i32* %14, i32* %16)
  %18 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @HCI_OP_CREATE_CONN_CANCEL, align 4
  %22 = call i32 @hci_send_cmd(%struct.TYPE_2__* %20, i32 %21, i32 4, %struct.hci_cp_create_conn_cancel* %3)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.TYPE_2__*, i32, i32, %struct.hci_cp_create_conn_cancel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
