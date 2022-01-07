; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32, %struct.rds_connection*, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rds_ib_recv_tasklet_fn = common dso_local global i32 0, align 4
@rds_ib_sysctl_max_send_wr = common dso_local global i32 0, align 4
@rds_ib_sysctl_max_recv_wr = common dso_local global i32 0, align 4
@ib_nodev_conns_lock = common dso_local global i32 0, align 4
@ib_nodev_conns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"conn %p conn ic %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_ib_conn_alloc(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_ib_connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.rds_ib_connection* @kzalloc(i32 40, i32 %9)
  store %struct.rds_ib_connection* %10, %struct.rds_ib_connection** %6, align 8
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %12 = icmp ne %struct.rds_ib_connection* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %18 = call i32 @rds_ib_recv_alloc_caches(%struct.rds_ib_connection* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %23 = call i32 @kfree(%struct.rds_ib_connection* %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %16
  %26 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %27 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %26, i32 0, i32 0
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %30 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %29, i32 0, i32 7
  %31 = load i32, i32* @rds_ib_recv_tasklet_fn, align 4
  %32 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %33 = ptrtoint %struct.rds_ib_connection* %32 to i64
  %34 = call i32 @tasklet_init(i32* %30, i32 %31, i64 %33)
  %35 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %36 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %35, i32 0, i32 6
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %39 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %38, i32 0, i32 5
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %42 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %41, i32 0, i32 4
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %45 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %44, i32 0, i32 3
  %46 = load i32, i32* @rds_ib_sysctl_max_send_wr, align 4
  %47 = call i32 @rds_ib_ring_init(i32* %45, i32 %46)
  %48 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %49 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %48, i32 0, i32 2
  %50 = load i32, i32* @rds_ib_sysctl_max_recv_wr, align 4
  %51 = call i32 @rds_ib_ring_init(i32* %49, i32 %50)
  %52 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %53 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %54 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %53, i32 0, i32 1
  store %struct.rds_connection* %52, %struct.rds_connection** %54, align 8
  %55 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %56 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %57 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %56, i32 0, i32 0
  store %struct.rds_ib_connection* %55, %struct.rds_ib_connection** %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* @ib_nodev_conns_lock, i64 %58)
  %60 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %6, align 8
  %61 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %61, i32* @ib_nodev_conns)
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @ib_nodev_conns_lock, i64 %63)
  %65 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %66 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %67 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %66, i32 0, i32 0
  %68 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %67, align 8
  %69 = call i32 @rdsdebug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %65, %struct.rds_ib_connection* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %25, %21, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.rds_ib_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @rds_ib_recv_alloc_caches(%struct.rds_ib_connection*) #1

declare dso_local i32 @kfree(%struct.rds_ib_connection*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rds_ib_ring_init(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.rds_ib_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
