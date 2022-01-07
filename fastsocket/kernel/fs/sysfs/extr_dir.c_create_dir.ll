; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_create_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kobject* }
%struct.sysfs_addrm_cxt = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@SYSFS_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.sysfs_dirent*, i8*, %struct.sysfs_dirent**)* @create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dir(%struct.kobject* %0, %struct.sysfs_dirent* %1, i8* %2, %struct.sysfs_dirent** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.sysfs_dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysfs_dirent**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysfs_addrm_cxt, align 4
  %12 = alloca %struct.sysfs_dirent*, align 8
  %13 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.sysfs_dirent* %1, %struct.sysfs_dirent** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sysfs_dirent** %3, %struct.sysfs_dirent*** %9, align 8
  %14 = load i32, i32* @S_IFDIR, align 4
  %15 = load i32, i32* @S_IRWXU, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IRUGO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IXUGO, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @SYSFS_DIR, align 4
  %24 = call %struct.sysfs_dirent* @sysfs_new_dirent(i8* %21, i32 %22, i32 %23)
  store %struct.sysfs_dirent* %24, %struct.sysfs_dirent** %12, align 8
  %25 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %26 = icmp ne %struct.sysfs_dirent* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load %struct.kobject*, %struct.kobject** %6, align 8
  %32 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %33 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.kobject* %31, %struct.kobject** %34, align 8
  %35 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %36 = call i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %11, %struct.sysfs_dirent* %35)
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %38 = call i32 @sysfs_add_one(%struct.sysfs_addrm_cxt* %11, %struct.sysfs_dirent* %37)
  store i32 %38, i32* %13, align 4
  %39 = call i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %11)
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %44 = load %struct.sysfs_dirent**, %struct.sysfs_dirent*** %9, align 8
  store %struct.sysfs_dirent* %43, %struct.sysfs_dirent** %44, align 8
  br label %48

45:                                               ; preds = %30
  %46 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %47 = call i32 @sysfs_put(%struct.sysfs_dirent* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.sysfs_dirent* @sysfs_new_dirent(i8*, i32, i32) #1

declare dso_local i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_add_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
