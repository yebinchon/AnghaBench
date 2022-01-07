; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }
%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i64, i32, i32, %struct.rds_connection*, %struct.socket*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"setting sock %p callbacks to tc %p\0A\00", align 1
@rds_tcp_tc_list_lock = common dso_local global i32 0, align 4
@rds_tcp_tc_list = common dso_local global i32 0, align 4
@rds_tcp_tc_count = common dso_local global i32 0, align 4
@rds_tcp_listen_data_ready = common dso_local global i64 0, align 8
@rds_tcp_data_ready = common dso_local global i64 0, align 8
@rds_tcp_write_space = common dso_local global i32 0, align 4
@rds_tcp_state_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_set_callbacks(%struct.socket* %0, %struct.rds_connection* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %4, align 8
  %6 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  store %struct.rds_tcp_connection* %8, %struct.rds_tcp_connection** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %11 = call i32 @rdsdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.socket* %9, %struct.rds_tcp_connection* %10)
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @write_lock_bh(i32* %15)
  %17 = call i32 @spin_lock(i32* @rds_tcp_tc_list_lock)
  %18 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %19 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %18, i32 0, i32 5
  %20 = call i32 @list_add_tail(i32* %19, i32* @rds_tcp_tc_list)
  %21 = load i32, i32* @rds_tcp_tc_count, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @rds_tcp_tc_count, align 4
  %23 = call i32 @spin_unlock(i32* @rds_tcp_tc_list_lock)
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @rds_tcp_listen_data_ready, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.socket*, %struct.socket** %3, align 8
  %43 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %44 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %43, i32 0, i32 4
  store %struct.socket* %42, %struct.socket** %44, align 8
  %45 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %46 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %47 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %46, i32 0, i32 3
  store %struct.rds_connection* %45, %struct.rds_connection** %47, align 8
  %48 = load %struct.socket*, %struct.socket** %3, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %54 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %61 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.socket*, %struct.socket** %3, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %68 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %70 = ptrtoint %struct.rds_connection* %69 to i64
  %71 = load %struct.socket*, %struct.socket** %3, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %70, i64* %74, align 8
  %75 = load i64, i64* @rds_tcp_data_ready, align 8
  %76 = load %struct.socket*, %struct.socket** %3, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 %75, i64* %79, align 8
  %80 = load i32, i32* @rds_tcp_write_space, align 4
  %81 = load %struct.socket*, %struct.socket** %3, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* @rds_tcp_state_change, align 4
  %86 = load %struct.socket*, %struct.socket** %3, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = load %struct.socket*, %struct.socket** %3, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = call i32 @write_unlock_bh(i32* %93)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.socket*, %struct.rds_tcp_connection*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
