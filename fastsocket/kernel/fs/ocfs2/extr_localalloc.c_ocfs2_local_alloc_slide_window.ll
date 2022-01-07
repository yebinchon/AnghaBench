; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_slide_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_slide_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@OCFS2_LA_EVENT_SLIDE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*)* @ocfs2_local_alloc_slide_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_slide_window(%struct.ocfs2_super* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %11, align 8
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = load i32, i32* @OCFS2_LA_EVENT_SLIDE, align 4
  %15 = call i32 @ocfs2_recalc_la_window(%struct.ocfs2_super* %13, i32 %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %17 = call i32 @ocfs2_local_alloc_reserve_for_window(%struct.ocfs2_super* %16, %struct.ocfs2_alloc_context** %11, %struct.inode** %7, %struct.buffer_head** %6)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  br label %130

29:                                               ; preds = %2
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %31 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %32 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %30, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %5, align 4
  store i32* null, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %130

41:                                               ; preds = %29
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %47, %struct.ocfs2_dinode** %9, align 8
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call %struct.ocfs2_dinode* @kmalloc(i32 %52, i32 %53)
  store %struct.ocfs2_dinode* %54, %struct.ocfs2_dinode** %10, align 8
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %56 = icmp ne %struct.ocfs2_dinode* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %130

62:                                               ; preds = %41
  %63 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(%struct.ocfs2_dinode* %63, %struct.ocfs2_dinode* %64, i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call i32 @INODE_CACHE(%struct.inode* %72)
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %78 = call i32 @ocfs2_journal_access_di(i32* %71, i32 %73, %struct.TYPE_5__* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %130

84:                                               ; preds = %62
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %86 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %89 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @ocfs2_journal_dirty(i32* %87, %struct.TYPE_5__* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %130

97:                                               ; preds = %84
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %103 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %98, i32* %99, %struct.ocfs2_dinode* %100, %struct.inode* %101, %struct.buffer_head* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %130

109:                                              ; preds = %97
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %113 = call i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super* %110, i32* %111, %struct.ocfs2_alloc_context* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  br label %124

124:                                              ; preds = %121, %116
  br label %130

125:                                              ; preds = %109
  %126 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %127 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @atomic_inc(i32* %128)
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %124, %106, %94, %81, %57, %36, %28
  %131 = load i32*, i32** %8, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %134, i32* %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %139 = call i32 @brelse(%struct.buffer_head* %138)
  %140 = load %struct.inode*, %struct.inode** %7, align 8
  %141 = icmp ne %struct.inode* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = call i32 @iput(%struct.inode* %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %147 = icmp ne %struct.ocfs2_dinode* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %150 = call i32 @kfree(%struct.ocfs2_dinode* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %153 = icmp ne %struct.ocfs2_alloc_context* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %156 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @mlog_exit(i32 %158)
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_recalc_la_window(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_local_alloc_reserve_for_window(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.ocfs2_dinode* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dinode*, %struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
