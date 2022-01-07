; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_test_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_test_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.cgroupfs_root* }
%struct.cgroupfs_root = type { i64, i32 }
%struct.cgroup_sb_opts = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @cgroup_test_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_test_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cgroup_sb_opts*, align 8
  %7 = alloca %struct.cgroupfs_root*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cgroup_sb_opts*
  store %struct.cgroup_sb_opts* %9, %struct.cgroup_sb_opts** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %11, align 8
  store %struct.cgroupfs_root* %12, %struct.cgroupfs_root** %7, align 8
  %13 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %6, align 8
  %14 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %6, align 8
  %19 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %7, align 8
  %22 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i64 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %17, %2
  %28 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %6, align 8
  %29 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %6, align 8
  %34 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %27
  %38 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %6, align 8
  %39 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %7, align 8
  %42 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %37, %32
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
