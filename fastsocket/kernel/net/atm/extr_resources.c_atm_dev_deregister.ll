; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c_atm_dev_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c_atm_dev_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, i32 }

@ATM_DF_REMOVED = common dso_local global i32 0, align 4
@atm_dev_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atm_dev_deregister(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %3 = load i32, i32* @ATM_DF_REMOVED, align 4
  %4 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %5 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* @ATM_DF_REMOVED, align 4
  %9 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %10 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = call i32 @mutex_lock(i32* @atm_dev_mutex)
  %13 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %14 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @mutex_unlock(i32* @atm_dev_mutex)
  %17 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %18 = call i32 @atm_dev_release_vccs(%struct.atm_dev* %17)
  %19 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %20 = call i32 @atm_unregister_sysfs(%struct.atm_dev* %19)
  %21 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %22 = call i32 @atm_proc_dev_deregister(%struct.atm_dev* %21)
  %23 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %24 = call i32 @atm_dev_put(%struct.atm_dev* %23)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atm_dev_release_vccs(%struct.atm_dev*) #1

declare dso_local i32 @atm_unregister_sysfs(%struct.atm_dev*) #1

declare dso_local i32 @atm_proc_dev_deregister(%struct.atm_dev*) #1

declare dso_local i32 @atm_dev_put(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
