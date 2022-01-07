; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c___sctp_write_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c___sctp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i32*, %struct.socket* }
%struct.socket = type { i64 }

@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*)* @__sctp_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_write_space(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %13 = call i64 @sctp_wspace(%struct.sctp_association* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = icmp ne %struct.socket* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 0
  %21 = call i64 @waitqueue_active(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 0
  %26 = call i32 @wake_up_interruptible(i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i64 @sctp_writeable(%struct.sock* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @waitqueue_active(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @wake_up_interruptible(i32* %45)
  br label %47

47:                                               ; preds = %42, %36, %31
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SEND_SHUTDOWN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load %struct.socket*, %struct.socket** %4, align 8
  %61 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %62 = load i32, i32* @POLL_OUT, align 4
  %63 = call i32 @sock_wake_async(%struct.socket* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %52, %47
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65, %15, %1
  ret void
}

declare dso_local i64 @sctp_wspace(%struct.sctp_association*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @sctp_writeable(%struct.sock*) #1

declare dso_local i32 @sock_wake_async(%struct.socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
