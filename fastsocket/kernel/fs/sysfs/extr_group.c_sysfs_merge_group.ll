; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_merge_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_sysfs_merge_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { %struct.attribute**, i32 }
%struct.attribute = type { i32 }
%struct.sysfs_dirent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SYSFS_KOBJ_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_merge_group(%struct.kobject* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute_group*, align 8
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attribute**, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %11 = icmp ne %struct.attribute_group* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.kobject*, %struct.kobject** %4, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %17 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sysfs_dirent* @sysfs_get_dirent(i32 %15, i32 %18)
  store %struct.sysfs_dirent* %19, %struct.sysfs_dirent** %6, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.kobject*, %struct.kobject** %4, align 8
  %22 = getelementptr inbounds %struct.kobject, %struct.kobject* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sysfs_dirent* @sysfs_get(i32 %23)
  store %struct.sysfs_dirent* %24, %struct.sysfs_dirent** %6, align 8
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %27 = icmp ne %struct.sysfs_dirent* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %32 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %33 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %32, i32 0, i32 0
  %34 = load %struct.attribute**, %struct.attribute*** %33, align 8
  store %struct.attribute** %34, %struct.attribute*** %8, align 8
  br label %35

35:                                               ; preds = %51, %31
  %36 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %37 = load %struct.attribute*, %struct.attribute** %36, align 8
  %38 = icmp ne %struct.attribute* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %47 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %48 = load %struct.attribute*, %struct.attribute** %47, align 8
  %49 = load i32, i32* @SYSFS_KOBJ_ATTR, align 4
  %50 = call i32 @sysfs_add_file(%struct.sysfs_dirent* %46, %struct.attribute* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %55 = getelementptr inbounds %struct.attribute*, %struct.attribute** %54, i32 1
  store %struct.attribute** %55, %struct.attribute*** %8, align 8
  br label %35

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %66 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %67 = getelementptr inbounds %struct.attribute*, %struct.attribute** %66, i32 -1
  store %struct.attribute** %67, %struct.attribute*** %8, align 8
  %68 = load %struct.attribute*, %struct.attribute** %67, align 8
  %69 = getelementptr inbounds %struct.attribute, %struct.attribute* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sysfs_hash_and_remove(%struct.sysfs_dirent* %65, i32 %70)
  br label %60

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %75 = call i32 @sysfs_put(%struct.sysfs_dirent* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %28
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.sysfs_dirent* @sysfs_get_dirent(i32, i32) #1

declare dso_local %struct.sysfs_dirent* @sysfs_get(i32) #1

declare dso_local i32 @sysfs_add_file(%struct.sysfs_dirent*, %struct.attribute*, i32) #1

declare dso_local i32 @sysfs_hash_and_remove(%struct.sysfs_dirent*, i32) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
