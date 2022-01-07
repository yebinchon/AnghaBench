; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_register_subsystem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_register_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.configfs_dirent* }
%struct.TYPE_5__ = type { i32 }
%struct.configfs_dirent = type { i32 }
%struct.configfs_subsystem = type { %struct.config_group }
%struct.config_group = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.qstr = type { i32, i64, i32 }
%struct.dentry = type { i32 }

@configfs_sb = common dso_local global %struct.TYPE_7__* null, align 8
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_register_subsystem(%struct.configfs_subsystem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.configfs_subsystem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.qstr, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_subsystem* %0, %struct.configfs_subsystem** %3, align 8
  %9 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %3, align 8
  %10 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %9, i32 0, i32 0
  store %struct.config_group* %10, %struct.config_group** %5, align 8
  %11 = call i32 (...) @configfs_pin_fs()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %114

16:                                               ; preds = %1
  %17 = load %struct.config_group*, %struct.config_group** %5, align 8
  %18 = getelementptr inbounds %struct.config_group, %struct.config_group* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.config_group*, %struct.config_group** %5, align 8
  %24 = getelementptr inbounds %struct.config_group, %struct.config_group* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.config_group*, %struct.config_group** %5, align 8
  %28 = getelementptr inbounds %struct.config_group, %struct.config_group* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configfs_sb, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.configfs_dirent*, %struct.configfs_dirent** %34, align 8
  store %struct.configfs_dirent* %35, %struct.configfs_dirent** %8, align 8
  %36 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %37 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_config_group(i32 %38)
  %40 = load %struct.config_group*, %struct.config_group** %5, align 8
  %41 = call i32 @link_group(i32 %39, %struct.config_group* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configfs_sb, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* @I_MUTEX_PARENT, align 4
  %49 = call i32 @mutex_lock_nested(i32* %47, i32 %48)
  %50 = load %struct.config_group*, %struct.config_group** %5, align 8
  %51 = getelementptr inbounds %struct.config_group, %struct.config_group* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @strlen(i64 %56)
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @full_name_hash(i64 %60, i32 %62)
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configfs_sb, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call %struct.dentry* @d_alloc(%struct.TYPE_6__* %69, %struct.qstr* %6)
  store %struct.dentry* %70, %struct.dentry** %7, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = icmp ne %struct.dentry* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %30
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = call i32 @d_add(%struct.dentry* %74, i32* null)
  %76 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %77 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.config_group*, %struct.config_group** %5, align 8
  %80 = getelementptr inbounds %struct.config_group, %struct.config_group* %79, i32 0, i32 0
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = call i32 @configfs_attach_group(i32 %78, %struct.TYPE_8__* %80, %struct.dentry* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = call i32 @d_delete(%struct.dentry* %86)
  %88 = load %struct.dentry*, %struct.dentry** %7, align 8
  %89 = call i32 @dput(%struct.dentry* %88)
  br label %97

90:                                               ; preds = %73
  %91 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %92 = load %struct.dentry*, %struct.dentry** %7, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @configfs_dir_set_ready(i32 %94)
  %96 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  br label %97

97:                                               ; preds = %90, %85
  br label %98

98:                                               ; preds = %97, %30
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configfs_sb, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.config_group*, %struct.config_group** %5, align 8
  %110 = call i32 @unlink_group(%struct.config_group* %109)
  %111 = call i32 (...) @configfs_release_fs()
  br label %112

112:                                              ; preds = %108, %98
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @configfs_pin_fs(...) #1

declare dso_local i32 @link_group(i32, %struct.config_group*) #1

declare dso_local i32 @to_config_group(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @full_name_hash(i64, i32) #1

declare dso_local %struct.dentry* @d_alloc(%struct.TYPE_6__*, %struct.qstr*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @configfs_attach_group(i32, %struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_dir_set_ready(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlink_group(%struct.config_group*) #1

declare dso_local i32 @configfs_release_fs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
