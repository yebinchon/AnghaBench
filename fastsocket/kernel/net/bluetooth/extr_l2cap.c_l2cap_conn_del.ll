; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"hcon %p conn %p, err %d\00", align 1
@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @l2cap_conn_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_conn_del(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 0
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %5, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %11 = icmp ne %struct.l2cap_conn* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %14, %struct.l2cap_conn* %15, i32 %16)
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree_skb(i32 %20)
  br label %22

22:                                               ; preds = %28, %13
  %23 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %24 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %6, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call i32 @bh_lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @l2cap_chan_del(%struct.sock* %31, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = call i32 @bh_unlock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = call i32 @l2cap_sock_kill(%struct.sock* %36)
  br label %22

38:                                               ; preds = %22
  %39 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %40 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %47 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %46, i32 0, i32 1
  %48 = call i32 @del_timer_sync(i32* %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 0
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %51, align 8
  %52 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %53 = call i32 @kfree(%struct.l2cap_conn* %52)
  br label %54

54:                                               ; preds = %49, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.l2cap_conn*, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_kill(%struct.sock*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
