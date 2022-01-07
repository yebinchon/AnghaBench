; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_addrm_cxt = type { i32, i64, %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sysfs_dirent* }

@SYSFS_FLAG_REMOVED = common dso_local global i32 0, align 4
@SYSFS_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_remove_one(%struct.sysfs_addrm_cxt* %0, %struct.sysfs_dirent* %1) #0 {
  %3 = alloca %struct.sysfs_addrm_cxt*, align 8
  %4 = alloca %struct.sysfs_dirent*, align 8
  store %struct.sysfs_addrm_cxt* %0, %struct.sysfs_addrm_cxt** %3, align 8
  store %struct.sysfs_dirent* %1, %struct.sysfs_dirent** %4, align 8
  %5 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %6 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SYSFS_FLAG_REMOVED, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %12 = call i32 @sysfs_unlink_sibling(%struct.sysfs_dirent* %11)
  %13 = load i32, i32* @SYSFS_FLAG_REMOVED, align 4
  %14 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %15 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %19 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %18, i32 0, i32 2
  %20 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %19, align 8
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %22 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.sysfs_dirent* %20, %struct.sysfs_dirent** %23, align 8
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %25 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %26 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %25, i32 0, i32 2
  store %struct.sysfs_dirent* %24, %struct.sysfs_dirent** %26, align 8
  %27 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %28 = call i64 @sysfs_type(%struct.sysfs_dirent* %27)
  %29 = load i64, i64* @SYSFS_DIR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %33 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %38 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @drop_nlink(i64 %39)
  br label %41

41:                                               ; preds = %36, %31, %2
  %42 = load %struct.sysfs_addrm_cxt*, %struct.sysfs_addrm_cxt** %3, align 8
  %43 = getelementptr inbounds %struct.sysfs_addrm_cxt, %struct.sysfs_addrm_cxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sysfs_unlink_sibling(%struct.sysfs_dirent*) #1

declare dso_local i64 @sysfs_type(%struct.sysfs_dirent*) #1

declare dso_local i32 @drop_nlink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
