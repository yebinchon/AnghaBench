; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_set_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_set_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.cgroup_sb_opts = type { %struct.TYPE_2__*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@CGROUP_SUPER_MAGIC = common dso_local global i32 0, align 4
@cgroup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @cgroup_set_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_set_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgroup_sb_opts*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cgroup_sb_opts*
  store %struct.cgroup_sb_opts* %9, %struct.cgroup_sb_opts** %7, align 8
  %10 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %7, align 8
  %11 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %7, align 8
  %19 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %7, align 8
  %24 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ false, %17 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = call i32 @set_anon_super(%struct.super_block* %32, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %7, align 8
  %40 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 4
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %7, align 8
  %46 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.super_block* %44, %struct.super_block** %48, align 8
  %49 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @CGROUP_SUPER_MAGIC, align 4
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  store i32* @cgroup_ops, i32** %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %38, %36, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_anon_super(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
