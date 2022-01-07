; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/p9auth/extr_p9auth.c_cap_cleanup_module.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/p9auth/extr_p9auth.c_cap_cleanup_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@cap_major = common dso_local global i32 0, align 4
@cap_minor = common dso_local global i32 0, align 4
@cap_devices = common dso_local global %struct.TYPE_4__* null, align 8
@cap_nr_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cap_cleanup_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_cleanup_module() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @cap_major, align 4
  %4 = load i32, i32* @cap_minor, align 4
  %5 = call i32 @MKDEV(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cap_devices, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @cap_nr_devs, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cap_devices, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = call i32 @cap_trim(%struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cap_devices, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @cdev_del(i32* %23)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cap_devices, align 8
  %30 = call i32 @kfree(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @cap_nr_devs, align 4
  %34 = call i32 @unregister_chrdev_region(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cap_trim(%struct.TYPE_4__*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
