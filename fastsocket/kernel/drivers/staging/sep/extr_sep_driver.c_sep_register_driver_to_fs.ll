; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_register_driver_to_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_register_driver_to_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@sep_devno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sep_sec_driver\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"sep: major number allocation failed, retval is %d\0A\00", align 1
@sep_cdev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sep_file_operations = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"sep_driver:cdev_add failed, retval is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sep_register_driver_to_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_register_driver_to_fs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @alloc_chrdev_region(i32* @sep_devno, i32 0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @edbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %24

10:                                               ; preds = %0
  %11 = call i32 @cdev_init(%struct.TYPE_4__* @sep_cdev, i32* @sep_file_operations)
  %12 = load i32, i32* @THIS_MODULE, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sep_cdev, i32 0, i32 0), align 4
  %13 = load i32, i32* @sep_devno, align 4
  %14 = call i32 @cdev_add(%struct.TYPE_4__* @sep_cdev, i32 %13, i32 1)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @edbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @sep_devno, align 4
  %21 = call i32 @unregister_chrdev_region(i32 %20, i32 1)
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @edbg(i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
