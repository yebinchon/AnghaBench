; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_getlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_configfs_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }
%struct.config_item = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@configfs_rename_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @configfs_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_getlink(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  %12 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %11)
  store %struct.config_item* %12, %struct.config_item** %6, align 8
  %13 = load %struct.config_item*, %struct.config_item** %6, align 8
  %14 = icmp ne %struct.config_item* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %19)
  store %struct.config_item* %20, %struct.config_item** %7, align 8
  %21 = load %struct.config_item*, %struct.config_item** %7, align 8
  %22 = icmp ne %struct.config_item* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.config_item*, %struct.config_item** %6, align 8
  %25 = call i32 @config_item_put(%struct.config_item* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %18
  %29 = call i32 @down_read(i32* @configfs_rename_sem)
  %30 = load %struct.config_item*, %struct.config_item** %6, align 8
  %31 = load %struct.config_item*, %struct.config_item** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @configfs_get_target_path(%struct.config_item* %30, %struct.config_item* %31, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = call i32 @up_read(i32* @configfs_rename_sem)
  %35 = load %struct.config_item*, %struct.config_item** %6, align 8
  %36 = call i32 @config_item_put(%struct.config_item* %35)
  %37 = load %struct.config_item*, %struct.config_item** %7, align 8
  %38 = call i32 @config_item_put(%struct.config_item* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %23, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.dentry*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @configfs_get_target_path(%struct.config_item*, %struct.config_item*, i8*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
