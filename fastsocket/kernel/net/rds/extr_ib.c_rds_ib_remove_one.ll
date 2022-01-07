; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.c_rds_ib_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.c_rds_ib_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rds_ib_device = type { i32 }

@rds_ib_client = common dso_local global i32 0, align 4
@rds_ib_devices_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @rds_ib_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.rds_ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = call %struct.rds_ib_device* @ib_get_client_data(%struct.ib_device* %4, i32* @rds_ib_client)
  store %struct.rds_ib_device* %5, %struct.rds_ib_device** %3, align 8
  %6 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %7 = icmp ne %struct.rds_ib_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %11 = call i32 @rds_ib_dev_shutdown(%struct.rds_ib_device* %10)
  %12 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %13 = call i32 @ib_set_client_data(%struct.ib_device* %12, i32* @rds_ib_client, i32* null)
  %14 = call i32 @down_write(i32* @rds_ib_devices_lock)
  %15 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %16 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %15, i32 0, i32 0
  %17 = call i32 @list_del_rcu(i32* %16)
  %18 = call i32 @up_write(i32* @rds_ib_devices_lock)
  %19 = call i32 (...) @synchronize_rcu()
  %20 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %21 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %20)
  %22 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %23 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.rds_ib_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @rds_ib_dev_shutdown(%struct.rds_ib_device*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
