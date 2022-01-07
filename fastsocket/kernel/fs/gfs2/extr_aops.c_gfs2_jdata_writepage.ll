; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_jdata_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_jdata_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }
%struct.gfs2_sbd = type { i32 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_jdata_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_jdata_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i64 @PageChecked(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %22 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WB_SYNC_ALL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %54

27:                                               ; preds = %20
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %29 = load i64, i64* @RES_DINODE, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %28, i64 %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %54

35:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %39 = call i32 @gfs2_writepage_common(%struct.page* %37, %struct.writeback_control* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %45 = call i32 @__gfs2_jdata_writepage(%struct.page* %43, %struct.writeback_control* %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %51 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %34, %26
  %55 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %55, %struct.page* %56)
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call i32 @unlock_page(%struct.page* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_writepage_common(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @__gfs2_jdata_writepage(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
