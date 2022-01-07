; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hci_cp_set_conn_encrypt = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@BT_SECURITY_SDP = common dso_local global i64 0, align 8
@BT_SECURITY_LOW = common dso_local global i64 0, align 8
@HCI_LM_ENCRYPT = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@HCI_OP_SET_CONN_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_security(%struct.hci_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hci_cp_set_conn_encrypt, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %9)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @BT_SECURITY_SDP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @BT_SECURITY_LOW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %19
  store i32 1, i32* %4, align 4
  br label %70

32:                                               ; preds = %24, %15
  %33 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HCI_LM_ENCRYPT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @hci_conn_auth(%struct.hci_conn* %40, i64 %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %32
  %45 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %46 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 3
  %48 = call i64 @test_and_set_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %70

51:                                               ; preds = %44
  %52 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @hci_conn_auth(%struct.hci_conn* %52, i64 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cpu_to_le16(i32 %60)
  %62 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* @HCI_OP_SET_CONN_ENCRYPT, align 4
  %68 = call i32 @hci_send_cmd(%struct.TYPE_2__* %66, i32 %67, i32 8, %struct.hci_cp_set_conn_encrypt* %8)
  br label %69

69:                                               ; preds = %57, %51
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %50, %39, %31, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @hci_conn_auth(%struct.hci_conn*, i64, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.TYPE_2__*, i32, i32, %struct.hci_cp_set_conn_encrypt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
