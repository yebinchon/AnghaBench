; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_lo_seg_intersecting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_lo_seg_intersecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_range = type { i64, i32 }

@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_range*, %struct.pnfs_layout_range*)* @lo_seg_intersecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_seg_intersecting(%struct.pnfs_layout_range* %0, %struct.pnfs_layout_range* %1) #0 {
  %3 = alloca %struct.pnfs_layout_range*, align 8
  %4 = alloca %struct.pnfs_layout_range*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pnfs_layout_range* %0, %struct.pnfs_layout_range** %3, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %4, align 8
  %9 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %10 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %14 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @end_offset(i64 %12, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %18 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %22 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @end_offset(i64 %20, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28, %2
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp sgt i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi i1 [ false, %28 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i64 @end_offset(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
