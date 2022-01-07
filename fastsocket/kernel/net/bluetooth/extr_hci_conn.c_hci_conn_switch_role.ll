; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_switch_role.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_switch_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32 }
%struct.hci_cp_switch_role = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@HCI_LM_MASTER = common dso_local global i32 0, align 4
@HCI_CONN_RSWITCH_PEND = common dso_local global i32 0, align 4
@HCI_OP_SWITCH_ROLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_switch_role(%struct.hci_conn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_cp_switch_role, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %7)
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HCI_LM_MASTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %38

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @HCI_CONN_RSWITCH_PEND, align 4
  %21 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 3
  %23 = call i32 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hci_cp_switch_role, %struct.hci_cp_switch_role* %6, i32 0, i32 1
  %27 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %28 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %27, i32 0, i32 2
  %29 = call i32 @bacpy(i32* %26, i32* %28)
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.hci_cp_switch_role, %struct.hci_cp_switch_role* %6, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HCI_OP_SWITCH_ROLE, align 4
  %36 = call i32 @hci_send_cmd(i32 %34, i32 %35, i32 16, %struct.hci_cp_switch_role* %6)
  br label %37

37:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_switch_role*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
