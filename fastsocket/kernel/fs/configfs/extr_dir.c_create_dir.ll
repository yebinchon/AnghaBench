; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_create_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { %struct.configfs_dirent*, i32*, i32, %struct.TYPE_2__ }
%struct.configfs_dirent = type { i32 }
%struct.TYPE_2__ = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@CONFIGFS_DIR = common dso_local global i32 0, align 4
@CONFIGFS_USET_CREATING = common dso_local global i32 0, align 4
@init_dir = common dso_local global i32 0, align 4
@configfs_dentry_ops = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.dentry*, %struct.dentry*)* @create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dir(%struct.config_item* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.configfs_dirent*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %10 = load i32, i32* @S_IFDIR, align 4
  %11 = load i32, i32* @S_IRWXU, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IRUGO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @S_IXUGO, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.configfs_dirent*, %struct.configfs_dirent** %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @configfs_dirent_exists(%struct.configfs_dirent* %19, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %3
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.configfs_dirent*, %struct.configfs_dirent** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.config_item*, %struct.config_item** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CONFIGFS_DIR, align 4
  %35 = load i32, i32* @CONFIGFS_USET_CREATING, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %30, %struct.dentry* %31, %struct.config_item* %32, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %27, %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %38
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.configfs_dirent*, %struct.configfs_dirent** %43, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.configfs_dirent*, %struct.configfs_dirent** %46, align 8
  %48 = call i32 @configfs_set_dir_dirent_depth(%struct.configfs_dirent* %44, %struct.configfs_dirent* %47)
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @init_dir, align 4
  %52 = call i32 @configfs_create(%struct.dentry* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %41
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @inc_nlink(i32 %58)
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 1
  store i32* @configfs_dentry_ops, i32** %61, align 8
  br label %77

62:                                               ; preds = %41
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load %struct.configfs_dirent*, %struct.configfs_dirent** %64, align 8
  store %struct.configfs_dirent* %65, %struct.configfs_dirent** %9, align 8
  %66 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %67 = icmp ne %struct.configfs_dirent* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %70 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %71 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %70, i32 0, i32 0
  %72 = call i32 @list_del_init(i32* %71)
  %73 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %74 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %75 = call i32 @configfs_put(%struct.configfs_dirent* %74)
  br label %76

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @configfs_dirent_exists(%struct.configfs_dirent*, i32) #1

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, %struct.dentry*, %struct.config_item*, i32, i32) #1

declare dso_local i32 @configfs_set_dir_dirent_depth(%struct.configfs_dirent*, %struct.configfs_dirent*) #1

declare dso_local i32 @configfs_create(%struct.dentry*, i32, i32) #1

declare dso_local i32 @inc_nlink(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
