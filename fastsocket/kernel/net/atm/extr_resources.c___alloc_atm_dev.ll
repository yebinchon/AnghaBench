; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c___alloc_atm_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c___alloc_atm_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i8*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATM_PHY_SIG_UNKNOWN = common dso_local global i32 0, align 4
@ATM_OC3_PCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atm_dev* (i8*)* @__alloc_atm_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atm_dev* @__alloc_atm_dev(i8* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.atm_dev*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.atm_dev* @kzalloc(i32 32, i32 %5)
  store %struct.atm_dev* %6, %struct.atm_dev** %4, align 8
  %7 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %8 = icmp ne %struct.atm_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.atm_dev* null, %struct.atm_dev** %2, align 8
  br label %30

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %13 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @ATM_PHY_SIG_UNKNOWN, align 4
  %15 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %16 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @ATM_OC3_PCR, align 4
  %18 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %19 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %24 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %27 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  store %struct.atm_dev* %29, %struct.atm_dev** %2, align 8
  br label %30

30:                                               ; preds = %10, %9
  %31 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  ret %struct.atm_dev* %31
}

declare dso_local %struct.atm_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
