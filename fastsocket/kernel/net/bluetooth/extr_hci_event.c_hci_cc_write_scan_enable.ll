; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_scan_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_write_scan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_WRITE_SCAN_ENABLE = common dso_local global i32 0, align 4
@HCI_PSCAN = common dso_local global i32 0, align 4
@HCI_ISCAN = common dso_local global i32 0, align 4
@SCAN_INQUIRY = common dso_local global i32 0, align 4
@SCAN_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_write_scan_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_write_scan_enable(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_OP_WRITE_SCAN_ENABLE, align 4
  %20 = call i8* @hci_sent_cmd_data(%struct.hci_dev* %18, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %63

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @HCI_PSCAN, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load i32, i32* @HCI_ISCAN, align 4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SCAN_INQUIRY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load i32, i32* @HCI_ISCAN, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %27
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SCAN_PAGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @HCI_PSCAN, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 0
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @hci_req_complete(%struct.hci_dev* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i8* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_req_complete(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
