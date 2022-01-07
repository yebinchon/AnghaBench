; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_chan_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_chan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 (%struct.sock*, i32)*, i32 }
%struct.l2cap_conn = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.l2cap_conn* }
%struct.TYPE_4__ = type { %struct.sock* }

@.str = private unnamed_addr constant [23 x i8] c"sk %p, conn %p, err %d\00", align 1
@BT_CLOSED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @l2cap_chan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_chan_del(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  store %struct.l2cap_conn* %10, %struct.l2cap_conn** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @l2cap_sock_clear_timer(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sock* %17, %struct.l2cap_conn* %18, i32 %19)
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %22 = icmp ne %struct.l2cap_conn* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @l2cap_chan_unlink(i32* %25, %struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %30, align 8
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %32 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hci_conn_put(i32 %33)
  br label %35

35:                                               ; preds = %23, %2
  %36 = load i32, i32* @BT_CLOSED, align 4
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load i32, i32* @SOCK_ZAPPED, align 4
  %41 = call i32 @sock_set_flag(%struct.sock* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = icmp ne %struct.sock* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @bt_accept_unlink(%struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = call i32 %56(%struct.sock* %57, i32 0)
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  %62 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %61, align 8
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 %62(%struct.sock* %63)
  br label %65

65:                                               ; preds = %59, %51
  ret void
}

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, %struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @hci_conn_put(i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_accept_unlink(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
