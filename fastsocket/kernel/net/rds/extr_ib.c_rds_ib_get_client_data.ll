; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.c_rds_ib_get_client_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.c_rds_ib_get_client_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_device = type { i32 }
%struct.ib_device = type { i32 }

@rds_ib_client = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_device* @rds_ib_get_client_data(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.rds_ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %6 = call %struct.rds_ib_device* @ib_get_client_data(%struct.ib_device* %5, i32* @rds_ib_client)
  store %struct.rds_ib_device* %6, %struct.rds_ib_device** %3, align 8
  %7 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %8 = icmp ne %struct.rds_ib_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %11 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  ret %struct.rds_ib_device* %15
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rds_ib_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
