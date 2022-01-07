; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_stale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32, %struct.xfs_buftarg*, i32, i32 }
%struct.xfs_buftarg = type { i32, i32 }

@XBF_STALE = common dso_local global i32 0, align 4
@_XBF_LRU_DISPOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_stale(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_buftarg*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %4 = load i32, i32* @XBF_STALE, align 4
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 4
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 2
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %1
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 3
  %19 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %18, align 8
  store %struct.xfs_buftarg* %19, %struct.xfs_buftarg** %3, align 8
  %20 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 2
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %16
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %29 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @_XBF_LRU_DISPOSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %35, i32 0, i32 2
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 1
  %44 = call i32 @atomic_dec(i32* %43)
  br label %45

45:                                               ; preds = %34, %27, %16
  %46 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %1
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %51 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %50, i32 0, i32 1
  %52 = call i32 @atomic_read(i32* %51)
  %53 = icmp sge i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
