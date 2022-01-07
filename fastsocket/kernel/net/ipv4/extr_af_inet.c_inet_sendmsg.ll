; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* }
%struct.msghdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
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
  %14 = load %struct.sock*, %struct.sock** %10, align 8
  %15 = call i32 @inet_sock_cpu_or_flow_record(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call i64 @inet_autobind(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %21, %4
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)** %32, align 8
  %34 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 %33(%struct.kiocb* %34, %struct.sock* %35, %struct.msghdr* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @inet_sock_cpu_or_flow_record(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @inet_autobind(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
