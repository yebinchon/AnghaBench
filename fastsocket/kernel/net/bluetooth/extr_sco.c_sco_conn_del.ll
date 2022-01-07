; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.sco_conn* }
%struct.sco_conn = type { i32 }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"hcon %p conn %p, err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i32)* @sco_conn_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_conn_del(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sco_conn*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 0
  %10 = load %struct.sco_conn*, %struct.sco_conn** %9, align 8
  store %struct.sco_conn* %10, %struct.sco_conn** %6, align 8
  %11 = icmp ne %struct.sco_conn* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %15 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %14, %struct.sco_conn* %15, i32 %16)
  %18 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %19 = call %struct.sock* @sco_chan_get(%struct.sco_conn* %18)
  store %struct.sock* %19, %struct.sock** %7, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = call i32 @bh_lock_sock(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call i32 @sco_sock_clear_timer(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sco_chan_del(%struct.sock* %26, i32 %27)
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = call i32 @bh_unlock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = call i32 @sco_sock_kill(%struct.sock* %31)
  br label %33

33:                                               ; preds = %21, %13
  %34 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  store %struct.sco_conn* null, %struct.sco_conn** %35, align 8
  %36 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %37 = call i32 @kfree(%struct.sco_conn* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.sco_conn*, i32) #1

declare dso_local %struct.sock* @sco_chan_get(%struct.sco_conn*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @sco_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sco_sock_kill(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.sco_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
