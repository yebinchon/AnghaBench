; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.xfs_name = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_lookup(%struct.TYPE_9__* %0, %struct.xfs_name* %1, %struct.TYPE_9__** %2, %struct.xfs_name* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.xfs_name*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.xfs_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store %struct.xfs_name* %3, %struct.xfs_name** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %15 = call i32 @trace_xfs_lookup(%struct.TYPE_9__* %13, %struct.xfs_name* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @XFS_FORCED_SHUTDOWN(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EIO, align 4
  %23 = call i32 @XFS_ERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %60

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @xfs_ilock_map_shared(%struct.TYPE_9__* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %29 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %30 = call i32 @xfs_dir_lookup(i32* null, %struct.TYPE_9__* %27, %struct.xfs_name* %28, i32* %10, %struct.xfs_name* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @xfs_iunlock_map_shared(%struct.TYPE_9__* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %43 = call i32 @xfs_iget(i32 %40, i32* null, i32 %41, i32 0, i32 0, %struct.TYPE_9__** %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %60

48:                                               ; preds = %46
  %49 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %50 = icmp ne %struct.xfs_name* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %53 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kmem_free(i32 %54)
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %58, align 8
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %47, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @trace_xfs_lookup(%struct.TYPE_9__*, %struct.xfs_name*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_ilock_map_shared(%struct.TYPE_9__*) #1

declare dso_local i32 @xfs_dir_lookup(i32*, %struct.TYPE_9__*, %struct.xfs_name*, i32*, %struct.xfs_name*) #1

declare dso_local i32 @xfs_iunlock_map_shared(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xfs_iget(i32, i32*, i32, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @kmem_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
