; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_set_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_set_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, i64, i32, i32, i64, i32*, i64, i32* }

@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@XBF_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_set_empty(%struct.xfs_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %11 = call i32 @_xfs_buf_free_pages(%struct.xfs_buf* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 7
  store i32* null, i32** %14, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @XBF_MAPPED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  ret void
}

declare dso_local i32 @_xfs_buf_free_pages(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
