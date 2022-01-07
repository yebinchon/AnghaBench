; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_writepage_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_writepage_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.page = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_4__ = type { i32 (%struct.page*, i32)* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_writepage_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_writepage_common(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @i_size_read(%struct.inode* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gfs2_glock_is_held_excl(i32 %30)
  %32 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %75

35:                                               ; preds = %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %71

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %41
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57, %41
  %61 = load %struct.page*, %struct.page** %4, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %66, align 8
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 %67(%struct.page* %68, i32 0)
  br label %75

70:                                               ; preds = %57, %51
  store i32 1, i32* %3, align 4
  br label %78

71:                                               ; preds = %40
  %72 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %72, %struct.page* %73)
  br label %75

75:                                               ; preds = %71, %60, %34
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = call i32 @unlock_page(%struct.page* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_glock_is_held_excl(i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
