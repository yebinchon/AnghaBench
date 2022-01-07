; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_rele.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_rele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.xfs_perag* }
%struct.xfs_perag = type { i32, i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XBF_STALE = common dso_local global i32 0, align 4
@XBF_DELWRI = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_rele(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.xfs_perag*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %6 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  store %struct.xfs_perag* %6, %struct.xfs_perag** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = load i32, i32* @_RET_IP_, align 4
  %9 = call i32 @trace_xfs_buf_rele(%struct.TYPE_7__* %7, i32 %8)
  %10 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %11 = icmp ne %struct.xfs_perag* %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = call i32 @list_empty(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call i32 @RB_EMPTY_NODE(i32* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @xfs_buf_free(%struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %25, %12
  br label %94

29:                                               ; preds = %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = call i32 @RB_EMPTY_NODE(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %45, i32 0, i32 0
  %47 = call i64 @atomic_dec_and_lock(i32* %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %29
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @XBF_STALE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = call i32 @xfs_buf_lru_add(%struct.TYPE_7__* %62)
  %64 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  br label %93

67:                                               ; preds = %56, %49
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @xfs_buf_lru_del(%struct.TYPE_7__* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XBF_DELWRI, align 4
  %74 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %84 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %83, i32 0, i32 1
  %85 = call i32 @rb_erase(i32* %82, i32* %84)
  %86 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %87 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %90 = call i32 @xfs_perag_put(%struct.xfs_perag* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = call i32 @xfs_buf_free(%struct.TYPE_7__* %91)
  br label %93

93:                                               ; preds = %67, %61
  br label %94

94:                                               ; preds = %28, %93, %29
  ret void
}

declare dso_local i32 @trace_xfs_buf_rele(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xfs_buf_free(%struct.TYPE_7__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @xfs_buf_lru_add(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_buf_lru_del(%struct.TYPE_7__*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
