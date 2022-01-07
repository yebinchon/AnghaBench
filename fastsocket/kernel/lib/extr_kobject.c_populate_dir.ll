; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_populate_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_populate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_type = type { %struct.attribute** }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*)* @populate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_dir(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.kobj_type*, align 8
  %4 = alloca %struct.attribute*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %7 = load %struct.kobject*, %struct.kobject** %2, align 8
  %8 = call %struct.kobj_type* @get_ktype(%struct.kobject* %7)
  store %struct.kobj_type* %8, %struct.kobj_type** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.kobj_type*, %struct.kobj_type** %3, align 8
  %10 = icmp ne %struct.kobj_type* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.kobj_type*, %struct.kobj_type** %3, align 8
  %13 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %12, i32 0, i32 0
  %14 = load %struct.attribute**, %struct.attribute*** %13, align 8
  %15 = icmp ne %struct.attribute** %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load %struct.kobj_type*, %struct.kobj_type** %3, align 8
  %19 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %18, i32 0, i32 0
  %20 = load %struct.attribute**, %struct.attribute*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.attribute*, %struct.attribute** %20, i64 %22
  %24 = load %struct.attribute*, %struct.attribute** %23, align 8
  store %struct.attribute* %24, %struct.attribute** %4, align 8
  %25 = icmp ne %struct.attribute* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.kobject*, %struct.kobject** %2, align 8
  %28 = load %struct.attribute*, %struct.attribute** %4, align 8
  %29 = call i32 @sysfs_create_file(%struct.kobject* %27, %struct.attribute* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %32, %17
  br label %38

38:                                               ; preds = %37, %11, %1
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.kobj_type* @get_ktype(%struct.kobject*) #1

declare dso_local i32 @sysfs_create_file(%struct.kobject*, %struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
