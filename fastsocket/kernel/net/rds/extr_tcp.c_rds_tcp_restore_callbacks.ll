; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_restore_callbacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_restore_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32 }
%struct.rds_tcp_connection = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"restoring sock %p callbacks from tc %p\0A\00", align 1
@rds_tcp_tc_list_lock = common dso_local global i32 0, align 4
@rds_tcp_tc_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_restore_callbacks(%struct.socket* %0, %struct.rds_tcp_connection* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.rds_tcp_connection* %1, %struct.rds_tcp_connection** %4, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.socket* %5, %struct.rds_tcp_connection* %6)
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  %13 = call i32 @spin_lock(i32* @rds_tcp_tc_list_lock)
  %14 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %14, i32 0, i32 4
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load i32, i32* @rds_tcp_tc_count, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @rds_tcp_tc_count, align 4
  %19 = call i32 @spin_unlock(i32* @rds_tcp_tc_list_lock)
  %20 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %21 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %23 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.socket*, %struct.socket** %3, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 8
  %29 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %30 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 4
  %36 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %4, align 8
  %37 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @write_unlock_bh(i32* %50)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
