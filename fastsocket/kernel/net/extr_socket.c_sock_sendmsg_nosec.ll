; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_sendmsg_nosec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_sendmsg_nosec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.kiocb = type { %struct.sock_iocb* }
%struct.sock_iocb = type { i32 }

@EIOCBQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_sendmsg_nosec(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kiocb, align 8
  %8 = alloca %struct.sock_iocb, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @init_sync_kiocb(%struct.kiocb* %7, i32* null)
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 0
  store %struct.sock_iocb* %8, %struct.sock_iocb** %11, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @__sock_sendmsg_nosec(%struct.kiocb* %7, %struct.socket* %12, %struct.msghdr* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @EIOCBQUEUED, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @wait_on_sync_kiocb(%struct.kiocb* %7)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @init_sync_kiocb(%struct.kiocb*, i32*) #1

declare dso_local i32 @__sock_sendmsg_nosec(%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64) #1

declare dso_local i32 @wait_on_sync_kiocb(%struct.kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
