; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"(0x%p, %lu)\0A\00", align 1
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ocfs2_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %6, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 0, %29 ]
  %32 = call i32 @mlog_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.file* %22, i64 %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @ocfs2_inode_lock_with_page(%struct.inode* %33, i32* null, i32 0, %struct.page* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %88

46:                                               ; preds = %30
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 1
  %49 = call i64 @down_read_trylock(i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  store i32 %52, i32* %8, align 4
  br label %85

53:                                               ; preds = %46
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i64 @i_size_read(%struct.inode* %55)
  %57 = icmp sge i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = call i32 @zero_user(%struct.page* %59, i32 0, i32 %60)
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @SetPageUptodate(%struct.page* %62)
  store i32 0, i32* %8, align 4
  br label %80

64:                                               ; preds = %53
  %65 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call i32 @ocfs2_readpage_inline(%struct.inode* %72, %struct.page* %73)
  store i32 %74, i32* %8, align 4
  br label %79

75:                                               ; preds = %64
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = load i32, i32* @ocfs2_get_block, align 4
  %78 = call i32 @block_read_full_page(%struct.page* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %71
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %58
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %82, i32 0, i32 1
  %84 = call i32 @up_read(i32* %83)
  br label %85

85:                                               ; preds = %80, %51
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call i32 @ocfs2_inode_unlock(%struct.inode* %86, i32 0)
  br label %88

88:                                               ; preds = %85, %43
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.page*, %struct.page** %4, align 8
  %93 = call i32 @unlock_page(%struct.page* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mlog_exit(i32 %95)
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.file*, i64) #1

declare dso_local i32 @ocfs2_inode_lock_with_page(%struct.inode*, i32*, i32, %struct.page*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_readpage_inline(%struct.inode*, %struct.page*) #1

declare dso_local i32 @block_read_full_page(%struct.page*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
