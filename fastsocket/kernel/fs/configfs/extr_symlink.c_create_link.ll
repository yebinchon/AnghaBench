; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_create_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.configfs_symlink = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@CONFIGFS_USET_DROPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*)* @create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_link(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.configfs_dirent*, align 8
  %9 = alloca %struct.configfs_symlink*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store %struct.config_item* %1, %struct.config_item** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %6, align 8
  %12 = getelementptr inbounds %struct.config_item, %struct.config_item* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  store %struct.configfs_dirent* %15, %struct.configfs_dirent** %8, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %19 = call i32 @configfs_dirent_is_ready(%struct.configfs_dirent* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.configfs_symlink* @kmalloc(i32 8, i32 %25)
  store %struct.configfs_symlink* %26, %struct.configfs_symlink** %9, align 8
  %27 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %28 = icmp ne %struct.configfs_symlink* %27, null
  br i1 %28, label %29, label %75

29:                                               ; preds = %22
  %30 = load %struct.config_item*, %struct.config_item** %6, align 8
  %31 = call i32 @config_item_get(%struct.config_item* %30)
  %32 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %33 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %35 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %36 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CONFIGFS_USET_DROPPING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %43 = load %struct.config_item*, %struct.config_item** %6, align 8
  %44 = call i32 @config_item_put(%struct.config_item* %43)
  %45 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %46 = call i32 @kfree(%struct.configfs_symlink* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %29
  %50 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %51 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %50, i32 0, i32 0
  %52 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %53 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %52, i32 0, i32 1
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %56 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %57 = load %struct.config_item*, %struct.config_item** %5, align 8
  %58 = getelementptr inbounds %struct.config_item, %struct.config_item* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @configfs_create_link(%struct.configfs_symlink* %56, %struct.TYPE_2__* %59, %struct.dentry* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %66 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %67 = getelementptr inbounds %struct.configfs_symlink, %struct.configfs_symlink* %66, i32 0, i32 0
  %68 = call i32 @list_del_init(i32* %67)
  %69 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %70 = load %struct.config_item*, %struct.config_item** %6, align 8
  %71 = call i32 @config_item_put(%struct.config_item* %70)
  %72 = load %struct.configfs_symlink*, %struct.configfs_symlink** %9, align 8
  %73 = call i32 @kfree(%struct.configfs_symlink* %72)
  br label %74

74:                                               ; preds = %64, %49
  br label %75

75:                                               ; preds = %74, %22
  br label %76

76:                                               ; preds = %75, %21
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %41
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @configfs_dirent_is_ready(%struct.configfs_dirent*) #1

declare dso_local %struct.configfs_symlink* @kmalloc(i32, i32) #1

declare dso_local i32 @config_item_get(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @kfree(%struct.configfs_symlink*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @configfs_create_link(%struct.configfs_symlink*, %struct.TYPE_2__*, %struct.dentry*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
