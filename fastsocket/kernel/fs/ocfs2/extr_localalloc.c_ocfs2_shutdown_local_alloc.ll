; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_shutdown_local_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_shutdown_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.buffer_head*, i32, i32 }
%struct.buffer_head = type { i32, i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }

@ocfs2_wq = common dso_local global i32 0, align 4
@OCFS2_LA_UNUSED = common dso_local global i64 0, align 8
@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_LA_DISABLED = common dso_local global i64 0, align 8
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_shutdown_local_alloc(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %9, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %11 = call i32 (...) @mlog_entry_void()
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 3
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = load i32, i32* @ocfs2_wq, align 4
  %16 = call i32 @flush_workqueue(i32 %15)
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OCFS2_LA_UNUSED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %156

23:                                               ; preds = %1
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %24, i32 %25, i32 %28)
  store %struct.inode* %29, %struct.inode** %5, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %156

37:                                               ; preds = %23
  %38 = load i64, i64* @OCFS2_LA_DISABLED, align 8
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %42 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %43 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %44 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %41, i32 %42, i32 %43)
  store %struct.inode* %44, %struct.inode** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %156

52:                                               ; preds = %37
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @ocfs2_inode_lock(%struct.inode* %56, %struct.buffer_head** %7, i32 1)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %150

63:                                               ; preds = %52
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %65 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %66 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %64, i32 %65)
  store i32* %66, i32** %4, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @PTR_ERR(i32* %71)
  %73 = call i32 @mlog_errno(i32 %72)
  store i32* null, i32** %4, align 8
  br label %145

74:                                               ; preds = %63
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 1
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  store %struct.buffer_head* %77, %struct.buffer_head** %6, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %81, %struct.ocfs2_dinode** %10, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_NOFS, align 4
  %86 = call %struct.ocfs2_dinode* @kmalloc(i32 %84, i32 %85)
  store %struct.ocfs2_dinode* %86, %struct.ocfs2_dinode** %9, align 8
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %88 = icmp ne %struct.ocfs2_dinode* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %74
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %141

92:                                               ; preds = %74
  %93 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(%struct.ocfs2_dinode* %93, %struct.ocfs2_dinode* %94, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call i32 @INODE_CACHE(%struct.inode* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %103 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %104 = call i32 @ocfs2_journal_access_di(i32* %99, i32 %101, %struct.buffer_head* %102, i32 %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %141

110:                                              ; preds = %92
  %111 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %112 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %115 = call i32 @ocfs2_journal_dirty(i32* %113, %struct.buffer_head* %114)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %141

121:                                              ; preds = %110
  %122 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %125 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %124, i32 0, i32 1
  store %struct.buffer_head* null, %struct.buffer_head** %125, align 8
  %126 = load i64, i64* @OCFS2_LA_UNUSED, align 8
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %128 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %134 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %129, i32* %130, %struct.ocfs2_dinode* %131, %struct.inode* %132, %struct.buffer_head* %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %121
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %140

140:                                              ; preds = %137, %121
  br label %141

141:                                              ; preds = %140, %118, %107, %89
  %142 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %142, i32* %143)
  br label %145

145:                                              ; preds = %141, %70
  %146 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @ocfs2_inode_unlock(%struct.inode* %148, i32 1)
  br label %150

150:                                              ; preds = %145, %60
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = call i32 @iput(%struct.inode* %154)
  br label %156

156:                                              ; preds = %150, %47, %32, %22
  %157 = load %struct.inode*, %struct.inode** %5, align 8
  %158 = icmp ne %struct.inode* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = call i32 @iput(%struct.inode* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %164 = icmp ne %struct.ocfs2_dinode* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %167 = call i32 @kfree(%struct.ocfs2_dinode* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.ocfs2_dinode* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dinode*, %struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
