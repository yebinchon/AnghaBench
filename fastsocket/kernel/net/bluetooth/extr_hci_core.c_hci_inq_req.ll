; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inq_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_inq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_inquiry_req = type { i32, i32, i32 }
%struct.hci_cp_inquiry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_INQUIRY = common dso_local global i32 0, align 4
@HCI_OP_INQUIRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64)* @hci_inq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inq_req(%struct.hci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_inquiry_req*, align 8
  %6 = alloca %struct.hci_cp_inquiry, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.hci_inquiry_req*
  store %struct.hci_inquiry_req* %8, %struct.hci_inquiry_req** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @HCI_INQUIRY, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %35

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %6, i32 0, i32 2
  %21 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %5, align 8
  %22 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %21, i32 0, i32 2
  %23 = call i32 @memcpy(i32* %20, i32* %22, i32 3)
  %24 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %5, align 8
  %25 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hci_inquiry_req*, %struct.hci_inquiry_req** %5, align 8
  %29 = getelementptr inbounds %struct.hci_inquiry_req, %struct.hci_inquiry_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = load i32, i32* @HCI_OP_INQUIRY, align 4
  %34 = call i32 @hci_send_cmd(%struct.hci_dev* %32, i32 %33, i32 12, %struct.hci_cp_inquiry* %6)
  br label %35

35:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_inquiry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
