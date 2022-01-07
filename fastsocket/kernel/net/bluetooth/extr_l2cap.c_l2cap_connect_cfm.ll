; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32 }
%struct.l2cap_conn = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"hcon %p bdaddr %s status %d\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i32)* @l2cap_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_connect_cfm(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 1
  %10 = call i32 @batostr(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %7, i32 %10, i32 %11)
  %13 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACL_LINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %23, i32 %24)
  store %struct.l2cap_conn* %25, %struct.l2cap_conn** %6, align 8
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %27 = icmp ne %struct.l2cap_conn* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %30 = call i32 @l2cap_conn_ready(%struct.l2cap_conn* %29)
  br label %31

31:                                               ; preds = %28, %22
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bt_err(i32 %34)
  %36 = call i32 @l2cap_conn_del(%struct.hci_conn* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*, i32) #1

declare dso_local i32 @l2cap_conn_ready(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_conn_del(%struct.hci_conn*, i32) #1

declare dso_local i32 @bt_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
