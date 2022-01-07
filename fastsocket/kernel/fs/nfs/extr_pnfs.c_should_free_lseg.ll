; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_should_free_lseg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_should_free_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_range = type { i64 }

@IOMODE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_range*, %struct.pnfs_layout_range*)* @should_free_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_free_lseg(%struct.pnfs_layout_range* %0, %struct.pnfs_layout_range* %1) #0 {
  %3 = alloca %struct.pnfs_layout_range*, align 8
  %4 = alloca %struct.pnfs_layout_range*, align 8
  store %struct.pnfs_layout_range* %0, %struct.pnfs_layout_range** %3, align 8
  store %struct.pnfs_layout_range* %1, %struct.pnfs_layout_range** %4, align 8
  %5 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %6 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IOMODE_ANY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %12 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %15 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10, %2
  %19 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %20 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %4, align 8
  %21 = call i64 @lo_seg_intersecting(%struct.pnfs_layout_range* %19, %struct.pnfs_layout_range* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i1 [ false, %10 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @lo_seg_intersecting(%struct.pnfs_layout_range*, %struct.pnfs_layout_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
