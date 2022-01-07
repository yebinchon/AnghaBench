; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_cdev_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_cdev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.cdev = type { i32, %struct.module* }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (%struct.cdev*)* @cdev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @cdev_get(%struct.cdev* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.kobject*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %6 = load %struct.cdev*, %struct.cdev** %3, align 8
  %7 = getelementptr inbounds %struct.cdev, %struct.cdev* %6, i32 0, i32 1
  %8 = load %struct.module*, %struct.module** %7, align 8
  store %struct.module* %8, %struct.module** %4, align 8
  %9 = load %struct.module*, %struct.module** %4, align 8
  %10 = icmp ne %struct.module* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.module*, %struct.module** %4, align 8
  %13 = call i32 @try_module_get(%struct.module* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.kobject* null, %struct.kobject** %2, align 8
  br label %27

16:                                               ; preds = %11, %1
  %17 = load %struct.cdev*, %struct.cdev** %3, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 0
  %19 = call %struct.kobject* @kobject_get(i32* %18)
  store %struct.kobject* %19, %struct.kobject** %5, align 8
  %20 = load %struct.kobject*, %struct.kobject** %5, align 8
  %21 = icmp ne %struct.kobject* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.module*, %struct.module** %4, align 8
  %24 = call i32 @module_put(%struct.module* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.kobject*, %struct.kobject** %5, align 8
  store %struct.kobject* %26, %struct.kobject** %2, align 8
  br label %27

27:                                               ; preds = %25, %15
  %28 = load %struct.kobject*, %struct.kobject** %2, align 8
  ret %struct.kobject* %28
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
