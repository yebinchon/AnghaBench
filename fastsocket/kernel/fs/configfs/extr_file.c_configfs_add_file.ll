; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_add_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_file.c_configfs_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__*, %struct.configfs_dirent* }
%struct.TYPE_2__ = type { i32 }
%struct.configfs_dirent = type { i32 }
%struct.configfs_attribute = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@I_MUTEX_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_add_file(%struct.dentry* %0, %struct.configfs_attribute* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.configfs_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load %struct.configfs_dirent*, %struct.configfs_dirent** %11, align 8
  store %struct.configfs_dirent* %12, %struct.configfs_dirent** %7, align 8
  %13 = load %struct.configfs_attribute*, %struct.configfs_attribute** %5, align 8
  %14 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @S_IALLUGO, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @I_MUTEX_NORMAL, align 4
  %25 = call i32 @mutex_lock_nested(i32* %23, i32 %24)
  %26 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %27 = load %struct.configfs_attribute*, %struct.configfs_attribute** %5, align 8
  %28 = bitcast %struct.configfs_attribute* %27 to i8*
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %26, i32* null, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
