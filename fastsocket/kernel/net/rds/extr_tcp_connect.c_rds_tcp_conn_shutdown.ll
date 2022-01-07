; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_connect.c_rds_tcp_conn_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_connect.c_rds_tcp_conn_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32, i64, %struct.TYPE_4__*, %struct.socket* }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32)* }

@.str = private unnamed_addr constant [37 x i8] c"shutting down conn %p tc %p sock %p\0A\00", align 1
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_conn_shutdown(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %5 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %5, i32 0, i32 0
  %7 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %6, align 8
  store %struct.rds_tcp_connection* %7, %struct.rds_tcp_connection** %3, align 8
  %8 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %8, i32 0, i32 3
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %4, align 8
  %11 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %12 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = call i32 @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %11, %struct.rds_tcp_connection* %12, %struct.socket* %13)
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = icmp ne %struct.socket* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %21, align 8
  %23 = load %struct.socket*, %struct.socket** %4, align 8
  %24 = load i32, i32* @RCV_SHUTDOWN, align 4
  %25 = load i32, i32* @SEND_SHUTDOWN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 %22(%struct.socket* %23, i32 %26)
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @lock_sock(i32 %30)
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %34 = call i32 @rds_tcp_restore_callbacks(%struct.socket* %32, %struct.rds_tcp_connection* %33)
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @release_sock(i32 %37)
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = call i32 @sock_release(%struct.socket* %39)
  br label %41

41:                                               ; preds = %17, %1
  %42 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %43 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %48 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @rds_inc_put(i32* %50)
  %52 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %53 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %52, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %56 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %58 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.rds_tcp_connection*, %struct.socket*) #1

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i32 @rds_tcp_restore_callbacks(%struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @release_sock(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @rds_inc_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
