; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.cgroupfs_root* }
%struct.cgroupfs_root = type { i64, i32, i32, %struct.cgroup }
%struct.cgroup = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cgroup_sb_opts = type { i64, i64, i64, i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@cgroup_root_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @cgroup_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgroupfs_root*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.cgroup_sb_opts, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %12, align 8
  store %struct.cgroupfs_root* %13, %struct.cgroupfs_root** %8, align 8
  %14 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %8, align 8
  %15 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %14, i32 0, i32 3
  store %struct.cgroup* %15, %struct.cgroup** %9, align 8
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %18 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %25 = call i32 @mutex_lock(i32* @cgroup_root_mutex)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @parse_cgroupfs_options(i8* %26, %struct.cgroup_sb_opts* %10)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %78

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %8, align 8
  %35 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %78

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %8, align 8
  %49 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i64 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %78

56:                                               ; preds = %45, %41
  %57 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %8, align 8
  %58 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @rebind_subsystems(%struct.cgroupfs_root* %57, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %78

64:                                               ; preds = %56
  %65 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %66 = call i32 @cgroup_populate_dir(%struct.cgroup* %65)
  %67 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %8, align 8
  %72 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @strcpy(i32 %73, i64 %75)
  br label %77

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77, %63, %53, %38, %30
  %79 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @kfree(i64 %80)
  %82 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @kfree(i64 %83)
  %85 = call i32 @mutex_unlock(i32* @cgroup_root_mutex)
  %86 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %87 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %88 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = call i32 (...) @unlock_kernel()
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @parse_cgroupfs_options(i8*, %struct.cgroup_sb_opts*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @rebind_subsystems(%struct.cgroupfs_root*, i32) #1

declare dso_local i32 @cgroup_populate_dir(%struct.cgroup*) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
