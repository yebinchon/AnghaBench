; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.xfs_name = type { i32 }

@xs_attr_remove = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_remove(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_name, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @xs_attr_remove, align 4
  %11 = call i32 @XFS_STATS_INC(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @XFS_FORCED_SHUTDOWN(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @xfs_attr_name_to_xname(%struct.xfs_name* %9, i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %29 = call i32 @xfs_ilock(%struct.TYPE_7__* %27, i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i32 @xfs_inode_hasattr(%struct.TYPE_7__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %36 = call i32 @xfs_iunlock(%struct.TYPE_7__* %34, i32 %35)
  %37 = load i32, i32* @ENOATTR, align 4
  %38 = call i32 @XFS_ERROR(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %42 = call i32 @xfs_iunlock(%struct.TYPE_7__* %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @xfs_attr_remove_int(%struct.TYPE_7__* %43, %struct.xfs_name* %9, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %33, %24, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_attr_name_to_xname(%struct.xfs_name*, i8*) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xfs_inode_hasattr(%struct.TYPE_7__*) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_attr_remove_int(%struct.TYPE_7__*, %struct.xfs_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
