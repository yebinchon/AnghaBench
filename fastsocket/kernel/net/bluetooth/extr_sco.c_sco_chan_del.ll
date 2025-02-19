; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_chan_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_chan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sco_conn = type { i32, i32* }
%struct.TYPE_2__ = type { %struct.sco_conn* }

@.str = private unnamed_addr constant [23 x i8] c"sk %p, conn %p, err %d\00", align 1
@BT_CLOSED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @sco_chan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_chan_del(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sco_conn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sco_conn*, %struct.sco_conn** %8, align 8
  store %struct.sco_conn* %9, %struct.sco_conn** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sock* %10, %struct.sco_conn* %11, i32 %12)
  %14 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %15 = icmp ne %struct.sco_conn* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %18 = call i32 @sco_conn_lock(%struct.sco_conn* %17)
  %19 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %20 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.sco_conn* null, %struct.sco_conn** %23, align 8
  %24 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %25 = call i32 @sco_conn_unlock(%struct.sco_conn* %24)
  %26 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %27 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hci_conn_put(i32 %28)
  br label %30

30:                                               ; preds = %16, %2
  %31 = load i32, i32* @BT_CLOSED, align 4
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 %39(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = load i32, i32* @SOCK_ZAPPED, align 4
  %44 = call i32 @sock_set_flag(%struct.sock* %42, i32 %43)
  ret void
}

declare dso_local %struct.TYPE_2__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, %struct.sco_conn*, i32) #1

declare dso_local i32 @sco_conn_lock(%struct.sco_conn*) #1

declare dso_local i32 @sco_conn_unlock(%struct.sco_conn*) #1

declare dso_local i32 @hci_conn_put(i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
