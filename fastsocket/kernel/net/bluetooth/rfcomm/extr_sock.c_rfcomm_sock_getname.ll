; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_rc = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @rfcomm_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_rc*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_rc*
  store %struct.sockaddr_rc* %12, %struct.sockaddr_rc** %9, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %16, %struct.sock* %17)
  %19 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %9, align 8
  %20 = call i32 @memset(%struct.sockaddr_rc* %19, i32 0, i32 12)
  %21 = load i32, i32* @AF_BLUETOOTH, align 4
  %22 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %9, align 8
  %23 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %9, align 8
  %29 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %33, i32 0, i32 0
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @bacpy(i32* %34, i32* %37)
  br label %46

39:                                               ; preds = %4
  %40 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %9, align 8
  %41 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %40, i32 0, i32 0
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @bacpy(i32* %41, i32* %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32*, i32** %7, align 8
  store i32 12, i32* %47, align 4
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_rc*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
