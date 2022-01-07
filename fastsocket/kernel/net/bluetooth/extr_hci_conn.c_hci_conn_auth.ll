; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32, i32, i64 }
%struct.hci_cp_auth_requested = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@HCI_LM_AUTH = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@HCI_OP_AUTH_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i64, i64)* @hci_conn_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_conn_auth(%struct.hci_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hci_cp_auth_requested, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %9)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HCI_LM_AUTH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %50

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %34 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 4
  %36 = call i32 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %29
  %39 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = getelementptr inbounds %struct.hci_cp_auth_requested, %struct.hci_cp_auth_requested* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HCI_OP_AUTH_REQUESTED, align 4
  %48 = call i32 @hci_send_cmd(i32 %46, i32 %47, i32 4, %struct.hci_cp_auth_requested* %8)
  br label %49

49:                                               ; preds = %38, %29
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_auth_requested*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
