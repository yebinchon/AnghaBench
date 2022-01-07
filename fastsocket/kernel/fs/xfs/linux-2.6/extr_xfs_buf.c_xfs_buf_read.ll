; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@XBF_READ = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@xb_get_read = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_LOCK = common dso_local global i32 0, align 4
@XBF_TRYLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @xfs_buf_read(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @XBF_READ, align 4
  %12 = load i32, i32* %9, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.TYPE_9__* @xfs_buf_get(i32* %14, i32 %15, i64 %16, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @_RET_IP_, align 4
  %25 = call i32 @trace_xfs_buf_read(%struct.TYPE_9__* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = call i32 @XFS_BUF_ISDONE(%struct.TYPE_9__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @xb_get_read, align 4
  %31 = call i32 @XFS_STATS_INC(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @_xfs_buf_read(%struct.TYPE_9__* %32, i32 %33)
  br label %49

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @XBF_ASYNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %52

41:                                               ; preds = %35
  %42 = load i32, i32* @XBF_READ, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %5, align 8
  br label %65

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @XBF_LOCK, align 4
  %55 = load i32, i32* @XBF_TRYLOCK, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = call i32 @xfs_buf_unlock(%struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = call i32 @xfs_buf_rele(%struct.TYPE_9__* %63)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %65

65:                                               ; preds = %62, %50
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %66
}

declare dso_local %struct.TYPE_9__* @xfs_buf_get(i32*, i32, i64, i32) #1

declare dso_local i32 @trace_xfs_buf_read(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XFS_BUF_ISDONE(%struct.TYPE_9__*) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @_xfs_buf_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xfs_buf_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @xfs_buf_rele(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
