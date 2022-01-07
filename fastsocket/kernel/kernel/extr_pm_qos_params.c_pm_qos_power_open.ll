; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_power_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_power_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i8* }

@name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"process_%d\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pm_qos_power_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_qos_power_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = call i32 (...) @lock_kernel()
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = call i64 @find_pm_qos_object_by_minor(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @name, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sprintf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @name, align 4
  %26 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %27 = call i32 @pm_qos_add_requirement(i64 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %37

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %2
  %34 = call i32 (...) @unlock_kernel()
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @find_pm_qos_object_by_minor(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @pm_qos_add_requirement(i64, i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
