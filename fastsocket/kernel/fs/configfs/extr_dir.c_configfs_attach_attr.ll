; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_attach_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { %struct.dentry*, %struct.configfs_attribute* }
%struct.configfs_attribute = type { i32 }
%struct.dentry = type { i32*, i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@configfs_init_file = common dso_local global i32 0, align 4
@configfs_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.configfs_dirent*, %struct.dentry*)* @configfs_attach_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_attach_attr(%struct.configfs_dirent* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configfs_dirent*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.configfs_attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %9 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %8, i32 0, i32 1
  %10 = load %struct.configfs_attribute*, %struct.configfs_attribute** %9, align 8
  store %struct.configfs_attribute* %10, %struct.configfs_attribute** %6, align 8
  %11 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %12 = call i32 @configfs_get(%struct.configfs_dirent* %11)
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %17 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %16, i32 0, i32 0
  store %struct.dentry* %15, %struct.dentry** %17, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = load %struct.configfs_attribute*, %struct.configfs_attribute** %6, align 8
  %20 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IALLUGO, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @configfs_init_file, align 4
  %27 = call i32 @configfs_create(%struct.dentry* %18, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  %32 = call i32 @configfs_put(%struct.configfs_dirent* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  store i32* @configfs_dentry_ops, i32** %36, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @d_rehash(%struct.dentry* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @configfs_get(%struct.configfs_dirent*) #1

declare dso_local i32 @configfs_create(%struct.dentry*, i32, i32) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
