; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_hci = type { i32, i32 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.hci_dev* }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@EBADFD = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @hci_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_hci*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.hci_dev*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_hci*
  store %struct.sockaddr_hci* %14, %struct.sockaddr_hci** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.hci_dev*, %struct.hci_dev** %20, align 8
  store %struct.hci_dev* %21, %struct.hci_dev** %12, align 8
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %22, %struct.sock* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %26 = icmp ne %struct.hci_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EBADFD, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %11, align 8
  %32 = call i32 @lock_sock(%struct.sock* %31)
  %33 = load i32*, i32** %8, align 8
  store i32 8, i32* %33, align 4
  %34 = load i32, i32* @AF_BLUETOOTH, align 4
  %35 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %10, align 8
  %41 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sock*, %struct.sock** %11, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %30, %27
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
