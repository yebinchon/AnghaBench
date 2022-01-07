; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xlog_cil_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { %struct.xfs_cil*, %struct.TYPE_2__* }
%struct.xfs_cil = type { i32, %struct.log*, %struct.xfs_cil_ctx*, i32, i32, i32, i32, i32 }
%struct.xfs_cil_ctx = type { i32, %struct.xfs_cil*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_MOUNT_DELAYLOG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xlog_cil_init(%struct.log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.log*, align 8
  %4 = alloca %struct.xfs_cil*, align 8
  %5 = alloca %struct.xfs_cil_ctx*, align 8
  store %struct.log* %0, %struct.log** %3, align 8
  %6 = load %struct.log*, %struct.log** %3, align 8
  %7 = getelementptr inbounds %struct.log, %struct.log* %6, i32 0, i32 0
  store %struct.xfs_cil* null, %struct.xfs_cil** %7, align 8
  %8 = load %struct.log*, %struct.log** %3, align 8
  %9 = getelementptr inbounds %struct.log, %struct.log* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XFS_MOUNT_DELAYLOG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = load i32, i32* @KM_MAYFAIL, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @kmem_zalloc(i32 48, i32 %20)
  %22 = bitcast i8* %21 to %struct.xfs_cil*
  store %struct.xfs_cil* %22, %struct.xfs_cil** %4, align 8
  %23 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %24 = icmp ne %struct.xfs_cil* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %17
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = load i32, i32* @KM_MAYFAIL, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @kmem_zalloc(i32 24, i32 %30)
  %32 = bitcast i8* %31 to %struct.xfs_cil_ctx*
  store %struct.xfs_cil_ctx* %32, %struct.xfs_cil_ctx** %5, align 8
  %33 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %34 = icmp ne %struct.xfs_cil_ctx* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %37 = call i32 @kmem_free(%struct.xfs_cil* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %2, align 4
  br label %80

39:                                               ; preds = %27
  %40 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %40, i32 0, i32 7
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %43, i32 0, i32 6
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %46, i32 0, i32 5
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %49, i32 0, i32 4
  %51 = call i32 @init_rwsem(i32* %50)
  %52 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %53 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %52, i32 0, i32 3
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %55, i32 0, i32 3
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %58, i32 0, i32 2
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %64 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %64, i32 0, i32 1
  store %struct.xfs_cil* %63, %struct.xfs_cil** %65, align 8
  %66 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %67 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %68 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %67, i32 0, i32 2
  store %struct.xfs_cil_ctx* %66, %struct.xfs_cil_ctx** %68, align 8
  %69 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %73 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.log*, %struct.log** %3, align 8
  %75 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %76 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %75, i32 0, i32 1
  store %struct.log* %74, %struct.log** %76, align 8
  %77 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %78 = load %struct.log*, %struct.log** %3, align 8
  %79 = getelementptr inbounds %struct.log, %struct.log* %78, i32 0, i32 0
  store %struct.xfs_cil* %77, %struct.xfs_cil** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %39, %35, %25, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_cil*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
