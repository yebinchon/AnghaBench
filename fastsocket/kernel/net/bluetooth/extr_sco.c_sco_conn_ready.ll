; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sco_conn = type { i32, i32, i32, %struct.sock* }
%struct.sock = type { i32 (%struct.sock*, i32)*, i8*, i32 (%struct.sock*)* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@BT_CONNECTED = common dso_local global i8* null, align 8
@BTPROTO_SCO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sco_conn*)* @sco_conn_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_conn_ready(%struct.sco_conn* %0) #0 {
  %2 = alloca %struct.sco_conn*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sco_conn* %0, %struct.sco_conn** %2, align 8
  %5 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sco_conn* %5)
  %7 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %8 = call i32 @sco_conn_lock(%struct.sco_conn* %7)
  %9 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %10 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %9, i32 0, i32 3
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @sco_sock_clear_timer(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @bh_lock_sock(%struct.sock* %16)
  %18 = load i8*, i8** @BT_CONNECTED, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 2
  %23 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %22, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 %23(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call i32 @bh_unlock_sock(%struct.sock* %26)
  br label %85

28:                                               ; preds = %1
  %29 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %30 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.sock* @sco_get_sock_listen(i32 %31)
  store %struct.sock* %32, %struct.sock** %3, align 8
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %86

36:                                               ; preds = %28
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @bh_lock_sock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call i32 @sock_net(%struct.sock* %39)
  %41 = load i32, i32* @BTPROTO_SCO, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sock* @sco_sock_alloc(i32 %40, i32* null, i32 %41, i32 %42)
  store %struct.sock* %43, %struct.sock** %4, align 8
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = icmp ne %struct.sock* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @bh_unlock_sock(%struct.sock* %47)
  br label %86

49:                                               ; preds = %36
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @sco_sock_init(%struct.sock* %50, %struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %57 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bacpy(i32* %55, i32 %58)
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %64 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bacpy(i32* %62, i32 %65)
  %67 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %68 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hci_conn_hold(i32 %69)
  %71 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 @__sco_chan_add(%struct.sco_conn* %71, %struct.sock* %72, %struct.sock* %73)
  %75 = load i8*, i8** @BT_CONNECTED, align 8
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 0
  %80 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %79, align 8
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 %80(%struct.sock* %81, i32 1)
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call i32 @bh_unlock_sock(%struct.sock* %83)
  br label %85

85:                                               ; preds = %49, %13
  br label %86

86:                                               ; preds = %85, %46, %35
  %87 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %88 = call i32 @sco_conn_unlock(%struct.sco_conn* %87)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sco_conn*) #1

declare dso_local i32 @sco_conn_lock(%struct.sco_conn*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local %struct.sock* @sco_get_sock_listen(i32) #1

declare dso_local %struct.sock* @sco_sock_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sco_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @hci_conn_hold(i32) #1

declare dso_local i32 @__sco_chan_add(%struct.sco_conn*, %struct.sock*, %struct.sock*) #1

declare dso_local i32 @sco_conn_unlock(%struct.sco_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
