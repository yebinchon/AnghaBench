; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* }
%struct.msghdr = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @pn_socket_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %10, align 8
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = call i64 @pn_socket_autobind(%struct.socket* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)** %24, align 8
  %26 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 %25(%struct.kiocb* %26, %struct.sock* %27, %struct.msghdr* %28, i64 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @pn_socket_autobind(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
