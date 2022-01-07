; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_remove_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_remove_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_device = type { i32 }
%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32*, i32 }

@ib_nodev_conns_lock = common dso_local global i32 0, align 4
@ib_nodev_conns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_remove_conn(%struct.rds_ib_device* %0, %struct.rds_connection* %1) #0 {
  %3 = alloca %struct.rds_ib_device*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_ib_connection*, align 8
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %3, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %4, align 8
  %6 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  store %struct.rds_ib_connection* %8, %struct.rds_ib_connection** %5, align 8
  %9 = call i32 @spin_lock(i32* @ib_nodev_conns_lock)
  %10 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %11 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %18 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %21 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %24 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %24, i32* @ib_nodev_conns)
  %26 = call i32 @spin_unlock(i32* @ib_nodev_conns_lock)
  %27 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %28 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %30 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
