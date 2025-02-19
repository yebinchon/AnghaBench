; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*, %struct.dentry*)* @configfs_attach_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_item(%struct.config_item* %0, %struct.config_item* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.config_item* %1, %struct.config_item** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %8 = load %struct.config_item*, %struct.config_item** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = call i32 @configfs_create_dir(%struct.config_item* %8, %struct.dentry* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %3
  %14 = load %struct.config_item*, %struct.config_item** %5, align 8
  %15 = call i32 @populate_attrs(%struct.config_item* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.config_item*, %struct.config_item** %5, align 8
  %25 = call i32 @configfs_remove_dir(%struct.config_item* %24)
  %26 = load i32, i32* @S_DEAD, align 4
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = call i32 @d_delete(%struct.dentry* %38)
  br label %40

40:                                               ; preds = %18, %13
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @configfs_create_dir(%struct.config_item*, %struct.dentry*) #1

declare dso_local i32 @populate_attrs(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @configfs_remove_dir(%struct.config_item*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
