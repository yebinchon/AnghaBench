; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c___sock_recvmsg_nosec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c___sock_recvmsg_nosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.msghdr = type { i32 }
%struct.sock_iocb = type { i64, i32, %struct.msghdr*, i32*, %struct.socket* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @__sock_recvmsg_nosec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sock_recvmsg_nosec(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock_iocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %13 = call %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb* %12)
  store %struct.sock_iocb* %13, %struct.sock_iocb** %11, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sock_update_classid(i32 %16)
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %20 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %19, i32 0, i32 4
  store %struct.socket* %18, %struct.socket** %20, align 8
  %21 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %22 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %24 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %25 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %24, i32 0, i32 2
  store %struct.msghdr* %23, %struct.msghdr** %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %28 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sock_iocb*, %struct.sock_iocb** %11, align 8
  %31 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)**
  %37 = load i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)** %36, align 8
  %38 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %39 = load %struct.socket*, %struct.socket** %7, align 8
  %40 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 %37(%struct.kiocb* %38, %struct.socket* %39, %struct.msghdr* %40, i64 %41, i32 %42)
  ret i32 %43
}

declare dso_local %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb*) #1

declare dso_local i32 @sock_update_classid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
