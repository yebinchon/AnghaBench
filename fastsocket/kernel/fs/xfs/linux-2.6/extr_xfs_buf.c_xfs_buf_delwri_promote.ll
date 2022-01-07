; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_delwri_promote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_delwri_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i64, i32, %struct.xfs_buftarg* }
%struct.xfs_buftarg = type { i32, i32 }

@xfs_buf_age_centisecs = common dso_local global i32 0, align 4
@XBF_DELWRI = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_delwri_promote(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_buftarg*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 3
  %7 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %6, align 8
  store %struct.xfs_buftarg* %7, %struct.xfs_buftarg** %3, align 8
  %8 = load i32, i32* @xfs_buf_age_centisecs, align 4
  %9 = call i32 @msecs_to_jiffies(i32 10)
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XBF_DELWRI, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %50

33:                                               ; preds = %1
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 2
  %44 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %44, i32 0, i32 1
  %46 = call i32 @list_move(i32* %43, i32* %45)
  %47 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
