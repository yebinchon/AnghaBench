; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_committed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_committed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_cil_ctx = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_MOUNT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xlog_cil_committed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_cil_committed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_cil_ctx*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.xfs_cil_ctx*
  store %struct.xfs_cil_ctx* %8, %struct.xfs_cil_ctx** %5, align 8
  %9 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %6, align 8
  %16 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @xfs_trans_committed_bulk(i32 %22, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %31, i32 0, i32 0
  %33 = call i32 @xfs_alloc_busy_sort(i32* %32)
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %35 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %35, i32 0, i32 0
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %38 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XFS_MOUNT_DISCARD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i1 [ false, %2 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @xfs_alloc_busy_clear(%struct.xfs_mount* %34, i32* %36, i32 %49)
  %51 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %56, i32 0, i32 3
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xlog_cil_free_logvec(i32 %66)
  %68 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %68, i32 0, i32 0
  %70 = call i32 @list_empty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %47
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %74 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @XFS_MOUNT_DISCARD, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %80 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %80, i32 0, i32 0
  %82 = call i32 @xfs_discard_extents(%struct.xfs_mount* %79, i32* %81)
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %84 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %84, i32 0, i32 0
  %86 = call i32 @xfs_alloc_busy_clear(%struct.xfs_mount* %83, i32* %85, i32 0)
  br label %87

87:                                               ; preds = %72, %47
  %88 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %89 = call i32 @kmem_free(%struct.xfs_cil_ctx* %88)
  ret void
}

declare dso_local i32 @xfs_trans_committed_bulk(i32, i32, i32, i32) #1

declare dso_local i32 @xfs_alloc_busy_sort(i32*) #1

declare dso_local i32 @xfs_alloc_busy_clear(%struct.xfs_mount*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xlog_cil_free_logvec(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_discard_extents(%struct.xfs_mount*, i32*) #1

declare dso_local i32 @kmem_free(%struct.xfs_cil_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
