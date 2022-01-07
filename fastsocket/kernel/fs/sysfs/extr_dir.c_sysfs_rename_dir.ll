; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_rename_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_rename_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__*, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }

@sysfs_rename_mutex = common dso_local global i32 0, align 4
@sysfs_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_rename_dir(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.kobject*, %struct.kobject** %3, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 0
  %13 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  store %struct.sysfs_dirent* %13, %struct.sysfs_dirent** %5, align 8
  store %struct.dentry* null, %struct.dentry** %6, align 8
  store %struct.dentry* null, %struct.dentry** %7, align 8
  store %struct.dentry* null, %struct.dentry** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = call i32 @mutex_lock(i32* @sysfs_rename_mutex)
  store i32 0, i32* %10, align 4
  %15 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %97

22:                                               ; preds = %2
  %23 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %24 = call %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent* %23)
  store %struct.dentry* %24, %struct.dentry** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i64 @IS_ERR(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.dentry* %29)
  store i32 %30, i32* %10, align 4
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %97

31:                                               ; preds = %22
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load %struct.dentry*, %struct.dentry** %33, align 8
  store %struct.dentry* %34, %struct.dentry** %6, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %44 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @sysfs_find_dirent(i32 %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %84

50:                                               ; preds = %31
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call %struct.dentry* @d_alloc_name(%struct.dentry* %53, i8* %54)
  store %struct.dentry* %55, %struct.dentry** %8, align 8
  %56 = load %struct.dentry*, %struct.dentry** %8, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %84

59:                                               ; preds = %50
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kstrdup(i8* %62, i32 %63)
  store i8* %64, i8** %9, align 8
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %84

68:                                               ; preds = %59
  %69 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %70 = call i32 @sysfs_unlink_sibling(%struct.sysfs_dirent* %69)
  %71 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %72 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %76 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %78 = call i32 @sysfs_link_sibling(%struct.sysfs_dirent* %77)
  %79 = load %struct.dentry*, %struct.dentry** %8, align 8
  %80 = call i32 @d_add(%struct.dentry* %79, i32* null)
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = call i32 @d_move(%struct.dentry* %81, %struct.dentry* %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %68, %67, %58, %49
  %85 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = call i32 @dput(%struct.dentry* %93)
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = call i32 @dput(%struct.dentry* %95)
  br label %97

97:                                               ; preds = %84, %28, %21
  %98 = call i32 @mutex_unlock(i32* @sysfs_rename_mutex)
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.dentry* @sysfs_get_dentry(%struct.sysfs_dirent*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @sysfs_find_dirent(i32, i8*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @sysfs_unlink_sibling(%struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_link_sibling(%struct.sysfs_dirent*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
