; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32, %struct.rds_connection*, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rds_iw_recv_tasklet_fn = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_send_wr = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_recv_wr = common dso_local global i32 0, align 4
@iw_nodev_conns_lock = common dso_local global i32 0, align 4
@iw_nodev_conns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"conn %p conn ic %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_iw_connection*, align 8
  %7 = alloca i64, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.rds_iw_connection* @kzalloc(i32 40, i32 %8)
  store %struct.rds_iw_connection* %9, %struct.rds_iw_connection** %6, align 8
  %10 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %11 = icmp ne %struct.rds_iw_connection* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %17 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %20 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %19, i32 0, i32 6
  %21 = load i32, i32* @rds_iw_recv_tasklet_fn, align 4
  %22 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %23 = ptrtoint %struct.rds_iw_connection* %22 to i64
  %24 = call i32 @tasklet_init(i32* %20, i32 %21, i64 %23)
  %25 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %26 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %25, i32 0, i32 5
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %29 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %32 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %31, i32 0, i32 3
  %33 = load i32, i32* @rds_iw_sysctl_max_send_wr, align 4
  %34 = call i32 @rds_iw_ring_init(i32* %32, i32 %33)
  %35 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %36 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %35, i32 0, i32 2
  %37 = load i32, i32* @rds_iw_sysctl_max_recv_wr, align 4
  %38 = call i32 @rds_iw_ring_init(i32* %36, i32 %37)
  %39 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %40 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %41 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %40, i32 0, i32 1
  store %struct.rds_connection* %39, %struct.rds_connection** %41, align 8
  %42 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %43 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %44 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %43, i32 0, i32 0
  store %struct.rds_iw_connection* %42, %struct.rds_iw_connection** %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @iw_nodev_conns_lock, i64 %45)
  %47 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %48 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %48, i32* @iw_nodev_conns)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @iw_nodev_conns_lock, i64 %50)
  %52 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %53 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %54 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %53, i32 0, i32 0
  %55 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %54, align 8
  %56 = call i32 @rdsdebug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %52, %struct.rds_iw_connection* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %15, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.rds_iw_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rds_iw_ring_init(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.rds_iw_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
