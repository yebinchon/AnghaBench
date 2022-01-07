; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.hci_dev* }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@hci_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @hci_sock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %9, %struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.hci_dev*, %struct.hci_dev** %18, align 8
  store %struct.hci_dev* %19, %struct.hci_dev** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @bt_sock_unlink(i32* @hci_sk_list, %struct.sock* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %23 = icmp ne %struct.hci_dev* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = call i32 @hci_dev_put(%struct.hci_dev* %28)
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @sock_orphan(%struct.sock* %31)
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = call i32 @skb_queue_purge(i32* %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = call i32 @skb_queue_purge(i32* %37)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @sock_put(%struct.sock* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %30, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @bt_sock_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
