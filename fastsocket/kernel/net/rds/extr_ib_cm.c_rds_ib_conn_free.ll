; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_conn_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_cm.c_rds_ib_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ic %p\0A\00", align 1
@ib_nodev_conns_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_conn_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rds_ib_connection*
  store %struct.rds_ib_connection* %6, %struct.rds_ib_connection** %3, align 8
  %7 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %8 = call i32 @rdsdebug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.rds_ib_connection* %7)
  %9 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32* [ %17, %13 ], [ @ib_nodev_conns_lock, %18 ]
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %24 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %29 = call i32 @rds_ib_recv_free_caches(%struct.rds_ib_connection* %28)
  %30 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %31 = call i32 @kfree(%struct.rds_ib_connection* %30)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_ib_connection*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rds_ib_recv_free_caches(%struct.rds_ib_connection*) #1

declare dso_local i32 @kfree(%struct.rds_ib_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
