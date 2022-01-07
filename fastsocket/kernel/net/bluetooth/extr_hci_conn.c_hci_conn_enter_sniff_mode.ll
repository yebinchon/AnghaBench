; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_enter_sniff_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_enter_sniff_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32, i32, i32, i32, %struct.hci_conn* }
%struct.hci_dev = type { i64, i32, i32, i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_cp_sniff_subrate = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hci_cp_sniff_mode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"conn %p mode %d\00", align 1
@HCI_RAW = common dso_local global i32 0, align 4
@HCI_CM_ACTIVE = common dso_local global i64 0, align 8
@HCI_LP_SNIFF = common dso_local global i32 0, align 4
@HCI_OP_SNIFF_SUBRATE = common dso_local global i32 0, align 4
@HCI_CONN_MODE_CHANGE_PEND = common dso_local global i32 0, align 4
@HCI_OP_SNIFF_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_conn_enter_sniff_mode(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_sniff_subrate, align 8
  %5 = alloca %struct.hci_cp_sniff_mode, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 7
  %8 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %9 = bitcast %struct.hci_conn* %8 to %struct.hci_dev*
  store %struct.hci_dev* %9, %struct.hci_dev** %3, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %11 = bitcast %struct.hci_conn* %10 to %struct.hci_dev*
  %12 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %11, i64 %14)
  %16 = load i32, i32* @HCI_RAW, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 6
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %100

22:                                               ; preds = %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @lmp_sniff_capable(%struct.hci_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %28 = bitcast %struct.hci_conn* %27 to %struct.hci_dev*
  %29 = call i32 @lmp_sniff_capable(%struct.hci_dev* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22
  br label %100

32:                                               ; preds = %26
  %33 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HCI_CM_ACTIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HCI_LP_SNIFF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %32
  br label %100

46:                                               ; preds = %38
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = call i64 @lmp_sniffsubr_capable(%struct.hci_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %52 = bitcast %struct.hci_conn* %51 to %struct.hci_dev*
  %53 = call i64 @lmp_sniffsubr_capable(%struct.hci_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = getelementptr inbounds %struct.hci_cp_sniff_subrate, %struct.hci_cp_sniff_subrate* %4, i32 0, i32 4
  store i8* %59, i8** %60, align 8
  %61 = call i8* @cpu_to_le16(i32 0)
  %62 = getelementptr inbounds %struct.hci_cp_sniff_subrate, %struct.hci_cp_sniff_subrate* %4, i32 0, i32 7
  store i8* %61, i8** %62, align 8
  %63 = call i8* @cpu_to_le16(i32 0)
  %64 = getelementptr inbounds %struct.hci_cp_sniff_subrate, %struct.hci_cp_sniff_subrate* %4, i32 0, i32 6
  store i8* %63, i8** %64, align 8
  %65 = call i8* @cpu_to_le16(i32 0)
  %66 = getelementptr inbounds %struct.hci_cp_sniff_subrate, %struct.hci_cp_sniff_subrate* %4, i32 0, i32 5
  store i8* %65, i8** %66, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = load i32, i32* @HCI_OP_SNIFF_SUBRATE, align 4
  %69 = call i32 @hci_send_cmd(%struct.hci_dev* %67, i32 %68, i32 64, %struct.hci_cp_sniff_subrate* %4)
  br label %70

70:                                               ; preds = %55, %50, %46
  %71 = load i32, i32* @HCI_CONN_MODE_CHANGE_PEND, align 4
  %72 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %73 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %72, i32 0, i32 5
  %74 = call i32 @test_and_set_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %70
  %77 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = getelementptr inbounds %struct.hci_cp_sniff_mode, %struct.hci_cp_sniff_mode* %5, i32 0, i32 4
  store i8* %80, i8** %81, align 8
  %82 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = getelementptr inbounds %struct.hci_cp_sniff_mode, %struct.hci_cp_sniff_mode* %5, i32 0, i32 3
  store i8* %85, i8** %86, align 8
  %87 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = getelementptr inbounds %struct.hci_cp_sniff_mode, %struct.hci_cp_sniff_mode* %5, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = call i8* @cpu_to_le16(i32 4)
  %93 = getelementptr inbounds %struct.hci_cp_sniff_mode, %struct.hci_cp_sniff_mode* %5, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = call i8* @cpu_to_le16(i32 1)
  %95 = getelementptr inbounds %struct.hci_cp_sniff_mode, %struct.hci_cp_sniff_mode* %5, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = load i32, i32* @HCI_OP_SNIFF_MODE, align 4
  %98 = bitcast %struct.hci_cp_sniff_mode* %5 to %struct.hci_cp_sniff_subrate*
  %99 = call i32 @hci_send_cmd(%struct.hci_dev* %96, i32 %97, i32 64, %struct.hci_cp_sniff_subrate* %98)
  br label %100

100:                                              ; preds = %21, %31, %45, %76, %70
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lmp_sniff_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_sniffsubr_capable(%struct.hci_dev*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_sniff_subrate*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
