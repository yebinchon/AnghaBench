; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_make_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_make_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { %struct.dentry*, i32 }
%struct.dentry = type { i32*, i32 }

@configfs_dentry_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_make_dirent(%struct.configfs_dirent* %0, %struct.dentry* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.configfs_dirent*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.configfs_dirent*, %struct.configfs_dirent** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent* %13, i8* %14, i32 %15)
  store %struct.configfs_dirent* %16, %struct.configfs_dirent** %12, align 8
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %18 = call i64 @IS_ERR(%struct.configfs_dirent* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %22 = call i32 @PTR_ERR(%struct.configfs_dirent* %21)
  store i32 %22, i32* %6, align 4
  br label %40

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %26 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %29 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %28, i32 0, i32 0
  store %struct.dentry* %27, %struct.dentry** %29, align 8
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.configfs_dirent*, %struct.configfs_dirent** %12, align 8
  %34 = call i32 @configfs_get(%struct.configfs_dirent* %33)
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  store i32* @configfs_dentry_ops, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %23
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.configfs_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.configfs_dirent*) #1

declare dso_local i32 @configfs_get(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
