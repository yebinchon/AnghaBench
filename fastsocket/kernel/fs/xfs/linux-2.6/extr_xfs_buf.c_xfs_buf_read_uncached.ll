; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_read_uncached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_buf_read_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_buftarg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_buf* @xfs_buf_read_uncached(%struct.xfs_mount* %0, %struct.xfs_buftarg* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_buftarg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_buf*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_buftarg* %1, %struct.xfs_buftarg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.xfs_buf* @xfs_buf_get_uncached(%struct.xfs_buftarg* %14, i64 %15, i32 %16)
  store %struct.xfs_buf* %17, %struct.xfs_buf** %12, align 8
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %19 = icmp ne %struct.xfs_buf* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.xfs_buf* null, %struct.xfs_buf** %6, align 8
  br label %43

21:                                               ; preds = %5
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %23 = call i32 @xfs_buf_lock(%struct.xfs_buf* %22)
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @XFS_BUF_SET_ADDR(%struct.xfs_buf* %24, i32 %25)
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %28 = call i32 @XFS_BUF_READ(%struct.xfs_buf* %27)
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %30 = call i32 @XFS_BUF_BUSY(%struct.xfs_buf* %29)
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %33 = call i32 @xfsbdstrat(%struct.xfs_mount* %31, %struct.xfs_buf* %32)
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %35 = call i32 @xfs_buf_iowait(%struct.xfs_buf* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %40 = call i32 @xfs_buf_relse(%struct.xfs_buf* %39)
  store %struct.xfs_buf* null, %struct.xfs_buf** %6, align 8
  br label %43

41:                                               ; preds = %21
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %42, %struct.xfs_buf** %6, align 8
  br label %43

43:                                               ; preds = %41, %38, %20
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  ret %struct.xfs_buf* %44
}

declare dso_local %struct.xfs_buf* @xfs_buf_get_uncached(%struct.xfs_buftarg*, i64, i32) #1

declare dso_local i32 @xfs_buf_lock(%struct.xfs_buf*) #1

declare dso_local i32 @XFS_BUF_SET_ADDR(%struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_BUF_READ(%struct.xfs_buf*) #1

declare dso_local i32 @XFS_BUF_BUSY(%struct.xfs_buf*) #1

declare dso_local i32 @xfsbdstrat(%struct.xfs_mount*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_iowait(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
