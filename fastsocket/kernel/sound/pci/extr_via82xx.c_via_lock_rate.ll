; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_via_lock_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_via_lock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_rate_lock = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_rate_lock*, i32)* @via_lock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_lock_rate(%struct.via_rate_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.via_rate_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.via_rate_lock* %0, %struct.via_rate_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %7 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %10 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %16 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %21 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %19, %14
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %30 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.via_rate_lock*, %struct.via_rate_lock** %3, align 8
  %34 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
