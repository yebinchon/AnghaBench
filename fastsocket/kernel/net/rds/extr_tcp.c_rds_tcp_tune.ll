; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i8*, i8* }

@RDS_TCP_DEFAULT_BUFSIZE = common dso_local global i8* null, align 8
@SOCK_SNDBUF_LOCK = common dso_local global i32 0, align 4
@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_tune(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 0
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = call i32 @rds_tcp_nonagle(%struct.socket* %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @lock_sock(%struct.sock* %9)
  %11 = load i8*, i8** @RDS_TCP_DEFAULT_BUFSIZE, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @RDS_TCP_DEFAULT_BUFSIZE, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @SOCK_SNDBUF_LOCK, align 4
  %18 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @release_sock(%struct.sock* %24)
  ret void
}

declare dso_local i32 @rds_tcp_nonagle(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
