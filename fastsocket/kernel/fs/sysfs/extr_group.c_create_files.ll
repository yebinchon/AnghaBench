; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_group.c_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }
%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 (%struct.kobject*, %struct.attribute*, i32)*, %struct.attribute.0** }
%struct.attribute = type opaque
%struct.attribute.0 = type { i32, i32 }

@SYSFS_KOBJ_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysfs_dirent*, %struct.kobject*, %struct.attribute_group*, i32)* @create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_files(%struct.sysfs_dirent* %0, %struct.kobject* %1, %struct.attribute_group* %2, i32 %3) #0 {
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.attribute.0**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %5, align 8
  store %struct.kobject* %1, %struct.kobject** %6, align 8
  store %struct.attribute_group* %2, %struct.attribute_group** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %14 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %13, i32 0, i32 1
  %15 = load %struct.attribute.0**, %struct.attribute.0*** %14, align 8
  store %struct.attribute.0** %15, %struct.attribute.0*** %9, align 8
  br label %16

16:                                               ; preds = %72, %4
  %17 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %18 = load %struct.attribute.0*, %struct.attribute.0** %17, align 8
  %19 = icmp ne %struct.attribute.0* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %77

26:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %31 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %32 = load %struct.attribute.0*, %struct.attribute.0** %31, align 8
  %33 = getelementptr inbounds %struct.attribute.0, %struct.attribute.0* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sysfs_hash_and_remove(%struct.sysfs_dirent* %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %38 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %37, i32 0, i32 0
  %39 = load i32 (%struct.kobject*, %struct.attribute*, i32)*, i32 (%struct.kobject*, %struct.attribute*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.kobject*, %struct.attribute*, i32)* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %43 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %42, i32 0, i32 0
  %44 = load i32 (%struct.kobject*, %struct.attribute*, i32)*, i32 (%struct.kobject*, %struct.attribute*, i32)** %43, align 8
  %45 = load %struct.kobject*, %struct.kobject** %6, align 8
  %46 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %47 = load %struct.attribute.0*, %struct.attribute.0** %46, align 8
  %48 = bitcast %struct.attribute.0* %47 to %struct.attribute*
  %49 = load i32, i32* %11, align 4
  %50 = call i32 %44(%struct.kobject* %45, %struct.attribute* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %72

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %57 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %58 = load %struct.attribute.0*, %struct.attribute.0** %57, align 8
  %59 = load i32, i32* @SYSFS_KOBJ_ATTR, align 4
  %60 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %61 = load %struct.attribute.0*, %struct.attribute.0** %60, align 8
  %62 = getelementptr inbounds %struct.attribute.0, %struct.attribute.0* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @sysfs_add_file_mode(%struct.sysfs_dirent* %56, %struct.attribute.0* %58, i32 %59, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %77

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load %struct.attribute.0**, %struct.attribute.0*** %9, align 8
  %76 = getelementptr inbounds %struct.attribute.0*, %struct.attribute.0** %75, i32 1
  store %struct.attribute.0** %76, %struct.attribute.0*** %9, align 8
  br label %16

77:                                               ; preds = %70, %24
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %82 = load %struct.kobject*, %struct.kobject** %6, align 8
  %83 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %84 = call i32 @remove_files(%struct.sysfs_dirent* %81, %struct.kobject* %82, %struct.attribute_group* %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @sysfs_hash_and_remove(%struct.sysfs_dirent*, i32) #1

declare dso_local i32 @sysfs_add_file_mode(%struct.sysfs_dirent*, %struct.attribute.0*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @remove_files(%struct.sysfs_dirent*, %struct.kobject*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
