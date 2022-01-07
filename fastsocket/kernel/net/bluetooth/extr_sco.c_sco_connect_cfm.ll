; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32 }
%struct.sco_conn = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"hcon %p bdaddr %s status %d\00", align 1
@SCO_LINK = common dso_local global i64 0, align 8
@ESCO_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i32)* @sco_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_connect_cfm(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sco_conn*, align 8
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
  %16 = load i64, i64* @SCO_LINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ESCO_LINK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %44

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.sco_conn* @sco_conn_add(%struct.hci_conn* %29, i32 %30)
  store %struct.sco_conn* %31, %struct.sco_conn** %6, align 8
  %32 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %33 = icmp ne %struct.sco_conn* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %36 = call i32 @sco_conn_ready(%struct.sco_conn* %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %43

38:                                               ; preds = %25
  %39 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bt_err(i32 %40)
  %42 = call i32 @sco_conn_del(%struct.hci_conn* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %37
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.sco_conn* @sco_conn_add(%struct.hci_conn*, i32) #1

declare dso_local i32 @sco_conn_ready(%struct.sco_conn*) #1

declare dso_local i32 @sco_conn_del(%struct.hci_conn*, i32) #1

declare dso_local i32 @bt_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
