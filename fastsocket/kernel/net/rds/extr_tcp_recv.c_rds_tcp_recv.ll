; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"recv worker conn %p tc %p sock %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_tcp_recv(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %6 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  store %struct.rds_tcp_connection* %8, %struct.rds_tcp_connection** %3, align 8
  %9 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %13 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call i32 @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %12, %struct.rds_tcp_connection* %13, %struct.socket* %14)
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lock_sock(i32 %18)
  %20 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @KM_USER0, align 4
  %23 = call i32 @rds_tcp_read_sock(%struct.rds_connection* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @release_sock(i32 %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.rds_tcp_connection*, %struct.socket*) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @rds_tcp_read_sock(%struct.rds_connection*, i32, i32) #1

declare dso_local i32 @release_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
