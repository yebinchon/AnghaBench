; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c___sock_sendmsg_nosec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c___sock_sendmsg_nosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.msghdr = type { i32 }
%struct.sock_iocb = type { i64, %struct.msghdr*, i32*, %struct.socket* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @__sock_sendmsg_nosec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sock_sendmsg_nosec(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock_iocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %11 = call %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb* %10)
  store %struct.sock_iocb* %11, %struct.sock_iocb** %9, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sock_update_classid(i32 %14)
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sock_update_netprioidx(i32 %18)
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = load %struct.sock_iocb*, %struct.sock_iocb** %9, align 8
  %22 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %21, i32 0, i32 3
  store %struct.socket* %20, %struct.socket** %22, align 8
  %23 = load %struct.sock_iocb*, %struct.sock_iocb** %9, align 8
  %24 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %26 = load %struct.sock_iocb*, %struct.sock_iocb** %9, align 8
  %27 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %26, i32 0, i32 1
  store %struct.msghdr* %25, %struct.msghdr** %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.sock_iocb*, %struct.sock_iocb** %9, align 8
  %30 = getelementptr inbounds %struct.sock_iocb, %struct.sock_iocb* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)**
  %36 = load i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)** %35, align 8
  %37 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %38 = load %struct.socket*, %struct.socket** %6, align 8
  %39 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 %36(%struct.kiocb* %37, %struct.socket* %38, %struct.msghdr* %39, i64 %40)
  ret i32 %41
}

declare dso_local %struct.sock_iocb* @kiocb_to_siocb(%struct.kiocb*) #1

declare dso_local i32 @sock_update_classid(i32) #1

declare dso_local i32 @sock_update_netprioidx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
