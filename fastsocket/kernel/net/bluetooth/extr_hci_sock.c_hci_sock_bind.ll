; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_hci = type { i64, i64 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.hci_dev* }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@HCI_DEV_NONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@BT_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @hci_sock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_hci*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_hci*
  store %struct.sockaddr_hci* %13, %struct.sockaddr_hci** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  store %struct.hci_dev* null, %struct.hci_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %17, %struct.sock* %18)
  %20 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %21 = icmp ne %struct.sockaddr_hci* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_BLUETOOTH, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = call i32 @lock_sock(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.hci_dev*, %struct.hci_dev** %36, align 8
  %38 = icmp ne %struct.hci_dev* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EALREADY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %69

42:                                               ; preds = %31
  %43 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCI_DEV_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %8, align 8
  %50 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.hci_dev* @hci_dev_get(i64 %51)
  store %struct.hci_dev* %52, %struct.hci_dev** %10, align 8
  %53 = icmp ne %struct.hci_dev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %69

57:                                               ; preds = %48
  %58 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc(i32* %59)
  br label %61

61:                                               ; preds = %57, %42
  %62 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.hci_dev* %62, %struct.hci_dev** %65, align 8
  %66 = load i32, i32* @BT_BOUND, align 4
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %54, %39
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = call i32 @release_sock(%struct.sock* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %28
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
