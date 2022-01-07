; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, i64, i32, i32, i32, i32, i32, %struct.xfs_buftarg*, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_buftarg = type { i32 }

@xfs_buf_zone = common dso_local global i32 0, align 4
@XBF_LOCK = common dso_local global i32 0, align 4
@XBF_MAPPED = common dso_local global i32 0, align 4
@XBF_DONT_BLOCK = common dso_local global i32 0, align 4
@XBF_TRYLOCK = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_READ_AHEAD = common dso_local global i32 0, align 4
@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@xb_create = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_buf* @xfs_buf_alloc(%struct.xfs_buftarg* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.xfs_buftarg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @xfs_buf_zone, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @xb_to_km(i32 %12)
  %14 = call %struct.xfs_buf* @kmem_zone_zalloc(i32 %11, i32 %13)
  store %struct.xfs_buf* %14, %struct.xfs_buf** %10, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %16 = icmp ne %struct.xfs_buf* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.xfs_buf* null, %struct.xfs_buf** %5, align 8
  br label %89

22:                                               ; preds = %4
  %23 = load i32, i32* @XBF_LOCK, align 4
  %24 = load i32, i32* @XBF_MAPPED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @XBF_DONT_BLOCK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @XBF_TRYLOCK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @XBF_ASYNC, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @XBF_READ_AHEAD, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 14
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 13
  %42 = call i32 @atomic_set(i32* %41, i32 1)
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %44 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %43, i32 0, i32 12
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 11
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %50 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %49, i32 0, i32 10
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %53 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %52, i32 0, i32 9
  %54 = call i32 @RB_CLEAR_NODE(i32* %53)
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %56 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %55, i32 0, i32 8
  %57 = call i32 @sema_init(i32* %56, i32 0)
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %59 = call i32 @XB_SET_OWNER(%struct.xfs_buf* %58)
  %60 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %6, align 8
  %61 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %62 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %61, i32 0, i32 7
  store %struct.xfs_buftarg* %60, %struct.xfs_buftarg** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %65 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %68 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %70 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %73 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  %75 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %76 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %78 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %77, i32 0, i32 4
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  %80 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %81 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %80, i32 0, i32 3
  %82 = call i32 @init_waitqueue_head(i32* %81)
  %83 = load i32, i32* @xb_create, align 4
  %84 = call i32 @XFS_STATS_INC(i32 %83)
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %86 = load i32, i32* @_RET_IP_, align 4
  %87 = call i32 @trace_xfs_buf_init(%struct.xfs_buf* %85, i32 %86)
  %88 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  store %struct.xfs_buf* %88, %struct.xfs_buf** %5, align 8
  br label %89

89:                                               ; preds = %22, %21
  %90 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  ret %struct.xfs_buf* %90
}

declare dso_local %struct.xfs_buf* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xb_to_km(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @XB_SET_OWNER(%struct.xfs_buf*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @trace_xfs_buf_init(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
