; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_begin_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32*, %struct.TYPE_4__*, %struct.page*, %struct.page** }
%struct.TYPE_4__ = type { i64 }
%struct.page = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.inode*, %struct.ocfs2_write_ctxt*)* @ocfs2_write_begin_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_begin_inline(%struct.address_space* %0, %struct.inode* %1, %struct.ocfs2_write_ctxt* %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_write_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ocfs2_write_ctxt* %2, %struct.ocfs2_write_ctxt** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %8, align 8
  %16 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %11, align 8
  %22 = load %struct.address_space*, %struct.address_space** %4, align 8
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.page* @find_or_create_page(%struct.address_space* %22, i32 0, i32 %23)
  store %struct.page* %24, %struct.page** %9, align 8
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %104

32:                                               ; preds = %3
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %34, i32 0, i32 3
  store %struct.page* %33, %struct.page** %35, align 8
  %36 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %36, i32 0, i32 4
  %38 = load %struct.page**, %struct.page*** %37, align 8
  %39 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 0
  store %struct.page* %33, %struct.page** %39, align 8
  %40 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %43 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %44 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %104

53:                                               ; preds = %32
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @INODE_CACHE(%struct.inode* %55)
  %57 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %58 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %61 = call i32 @ocfs2_journal_access_di(i32* %54, i32 %56, %struct.TYPE_4__* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %65, i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %104

70:                                               ; preds = %53
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %81 = call i32 @ocfs2_set_inode_data_inline(%struct.inode* %79, %struct.ocfs2_dinode* %80)
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.page*, %struct.page** %9, align 8
  %84 = call i32 @PageUptodate(%struct.page* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = load %struct.page*, %struct.page** %9, align 8
  %89 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %90 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @ocfs2_read_inline_data(%struct.inode* %87, %struct.page* %88, %struct.TYPE_4__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %96, i32* %97)
  br label %104

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %103 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  br label %104

104:                                              ; preds = %100, %95, %64, %48, %27
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_inode_data_inline(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_read_inline_data(%struct.inode*, %struct.page*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
