; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i64, i64, i32 (%struct.sock*)* }
%struct.TYPE_2__ = type { %struct.sock* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @l2cap_conn_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_conn_ready(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.l2cap_chan_list*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %5 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %5, i32 0, i32 0
  store %struct.l2cap_chan_list* %6, %struct.l2cap_chan_list** %3, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %7)
  %9 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %9, i32 0, i32 0
  %11 = call i32 @read_lock(i32* %10)
  %12 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %4, align 8
  br label %15

15:                                               ; preds = %50, %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @bh_lock_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_SEQPACKET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @l2cap_sock_clear_timer(%struct.sock* %27)
  %29 = load i64, i64* @BT_CONNECTED, align 8
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 2
  %34 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %33, align 8
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 %34(%struct.sock* %35)
  br label %47

37:                                               ; preds = %18
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_CONNECT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @l2cap_do_start(%struct.sock* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 @bh_unlock_sock(%struct.sock* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.sock*, %struct.sock** %53, align 8
  store %struct.sock* %54, %struct.sock** %4, align 8
  br label %15

55:                                               ; preds = %15
  %56 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %3, align 8
  %57 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %56, i32 0, i32 0
  %58 = call i32 @read_unlock(i32* %57)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @l2cap_do_start(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
