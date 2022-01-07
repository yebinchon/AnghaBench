; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_ordered_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_ordered_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.writeback_control = type { i32 }
%struct.gfs2_inode = type { i32 }

@BH_Dirty = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@gfs2_get_block_noalloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_ordered_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ordered_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %7, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %18 = call i32 @gfs2_writepage_common(%struct.page* %16, %struct.writeback_control* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @page_has_buffers(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @BH_Dirty, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @BH_Uptodate, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = call i32 @create_empty_buffers(%struct.page* %28, i64 %33, i32 %38)
  br label %40

40:                                               ; preds = %27, %23
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @gfs2_page_add_databufs(%struct.gfs2_inode* %41, %struct.page* %42, i32 0, i64 %48)
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = load i32, i32* @gfs2_get_block_noalloc, align 4
  %52 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %53 = call i32 @block_write_full_page(%struct.page* %50, i32 %51, %struct.writeback_control* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %40, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_writepage_common(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i64, i32) #1

declare dso_local i32 @gfs2_page_add_databufs(%struct.gfs2_inode*, %struct.page*, i32, i64) #1

declare dso_local i32 @block_write_full_page(%struct.page*, i32, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
