; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c___sysfs_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c___sysfs_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_addrm_cxt = type { i32, i64, i32 }
%struct.sysfs_dirent = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@SYSFS_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sysfs_add_one(%struct.sysfs_addrm_cxt* %0, %struct.sysfs_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysfs_addrm_cxt*, align 8
  %5 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_addrm_cxt* %0, %struct.sysfs_addrm_cxt** %4, align 8
  store %struct.sysfs_dirent* %1, %struct.sysfs_dirent** %5, align 8
  %6 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %4, align 8
  %7 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %10 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @sysfs_find_dirent(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %4, align 8
  %19 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sysfs_get(i32 %20)
  %22 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %23 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %25 = call i64 @sysfs_type(%struct.sysfs_dirent* %24)
  %26 = load i64, i64* @SYSFS_DIR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %4, align 8
  %30 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %4, align 8
  %35 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @inc_nlink(i64 %36)
  br label %38

38:                                               ; preds = %33, %28, %17
  %39 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %4, align 8
  %40 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %5, align 8
  %44 = call i32 @sysfs_link_sibling(%struct.sysfs_dirent* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @sysfs_find_dirent(i32, i32) #1

declare dso_local i32 @sysfs_get(i32) #1

declare dso_local i64 @sysfs_type(%struct.sysfs_dirent*) #1

declare dso_local i32 @inc_nlink(i64) #1

declare dso_local i32 @sysfs_link_sibling(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
