; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconn_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_disconn_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*)* @l2cap_disconn_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_disconn_ind(%struct.hci_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %5 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %6 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %5, i32 0, i32 1
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %7, %struct.l2cap_conn** %4, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %8)
  %10 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %11 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACL_LINK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = icmp ne %struct.l2cap_conn* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  store i32 19, i32* %2, align 4
  br label %23

19:                                               ; preds = %15
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
