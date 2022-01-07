; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_internal_create_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_internal_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32 }
%struct.attribute_group = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i32, %struct.attribute_group*)* @internal_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_create_group(%struct.kobject* %0, i32 %1, %struct.attribute_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.attribute_group* %2, %struct.attribute_group** %7, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = icmp ne %struct.kobject* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.kobject*, %struct.kobject** %5, align 8
  %17 = getelementptr inbounds %struct.kobject, %struct.kobject* %16, i32 0, i32 0
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %17, align 8
  %19 = icmp ne %struct.sysfs_dirent* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i1 [ true, %3 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.kobject*, %struct.kobject** %5, align 8
  %31 = getelementptr inbounds %struct.kobject, %struct.kobject* %30, i32 0, i32 0
  %32 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %31, align 8
  %33 = icmp ne %struct.sysfs_dirent* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ false, %23 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %86

43:                                               ; preds = %35
  %44 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %45 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.kobject*, %struct.kobject** %5, align 8
  %50 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %51 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sysfs_create_subdir(%struct.kobject* %49, i64 %52, %struct.sysfs_dirent** %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %86

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %43
  %60 = load %struct.kobject*, %struct.kobject** %5, align 8
  %61 = getelementptr inbounds %struct.kobject, %struct.kobject* %60, i32 0, i32 0
  %62 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %61, align 8
  store %struct.sysfs_dirent* %62, %struct.sysfs_dirent** %8, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %65 = call i32 @sysfs_get(%struct.sysfs_dirent* %64)
  %66 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %67 = load %struct.kobject*, %struct.kobject** %5, align 8
  %68 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @create_files(%struct.sysfs_dirent* %66, %struct.kobject* %67, %struct.attribute_group* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %75 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %80 = call i32 @sysfs_remove_subdir(%struct.sysfs_dirent* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %63
  %83 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %84 = call i32 @sysfs_put(%struct.sysfs_dirent* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %56, %40
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sysfs_create_subdir(%struct.kobject*, i64, %struct.sysfs_dirent**) #1

declare dso_local i32 @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @create_files(%struct.sysfs_dirent*, %struct.kobject*, %struct.attribute_group*, i32) #1

declare dso_local i32 @sysfs_remove_subdir(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
