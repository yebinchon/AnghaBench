; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_conn = type { i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.l2cap_conn* }

@HCI_AT_NO_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@BT_SECURITY_SDP = common dso_local global i32 0, align 4
@HCI_AT_GENERAL_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_AT_GENERAL_BONDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @l2cap_check_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_check_security(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @cpu_to_le16(i32 1)
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @HCI_AT_NO_BONDING_MITM, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BT_SECURITY_LOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @BT_SECURITY_SDP, align 4
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  br label %50

38:                                               ; preds = %1
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %47 [
    i32 129, label %43
    i32 128, label %45
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* @HCI_AT_GENERAL_BONDING_MITM, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @HCI_AT_GENERAL_BONDING, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %43
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %52 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @hci_conn_security(i32 %53, i32 %57, i32 %58)
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_conn_security(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
