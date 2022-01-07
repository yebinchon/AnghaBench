; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_fs_subr.c_xfs_flush_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_fs_subr.c_xfs_flush_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { %struct.address_space* }

@XFS_ITRUNCATED = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_flush_pages(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_2__* @VFS_I(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @XFS_ITRUNCATED, align 4
  %21 = call i32 @xfs_iflags_clear(i32* %19, i32 %20)
  %22 = load %struct.address_space*, %struct.address_space** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @LLONG_MAX, align 4
  br label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @filemap_fdatawrite_range(%struct.address_space* %22, i32 %23, i32 %31)
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @XBF_ASYNC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @xfs_wait_on_pages(i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_2__* @VFS_I(i32*) #1

declare dso_local i32 @xfs_iflags_clear(i32*, i32) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @xfs_wait_on_pages(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
