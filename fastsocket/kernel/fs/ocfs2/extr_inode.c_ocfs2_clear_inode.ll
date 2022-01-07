; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ocfs2_inode_info = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Clearing inode: %llu, nlink = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Inode=%lu\0A\00", align 1
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Clear inode of %llu, inode has io markers\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Clear inode of %llu, inode has %u cache items\0A\00", align 1
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Clear inode of %llu, inode has a bad flag\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Clear inode of %llu, inode is locked\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Clear inode of %llu, io_mutex is locked\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Clear inode of %llu, alloc_sem is locked\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Clear inode of %llu has open count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %5)
  store %struct.ocfs2_inode_info* %6, %struct.ocfs2_inode_info** %4, align 8
  %7 = call i32 (...) @mlog_entry_void()
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %170

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_7__* @OCFS2_SB(i32 %22)
  %24 = icmp eq %struct.TYPE_7__* %23, null
  %25 = zext i1 %24 to i32
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call i32 @ocfs2_open_unlock(%struct.inode* %31)
  %33 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %33, i32 0, i32 10
  %35 = call i32 @ocfs2_mark_lockres_freeing(i32* %34)
  %36 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %36, i32 0, i32 9
  %38 = call i32 @ocfs2_mark_lockres_freeing(i32* %37)
  %39 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %39, i32 0, i32 8
  %41 = call i32 @ocfs2_mark_lockres_freeing(i32* %40)
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %11
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = call i32 @ocfs2_checkpoint_inode(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %11
  %53 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %53, i32 0, i32 11
  %55 = call i32 @list_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %60 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %63, i32 0)
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = call i32 @ocfs2_drop_inode_locks(%struct.inode* %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %72

72:                                               ; preds = %69, %52
  %73 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %74 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %73, i32 0, i32 10
  %75 = call i32 @ocfs2_lock_res_free(i32* %74)
  %76 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %77 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %76, i32 0, i32 9
  %78 = call i32 @ocfs2_lock_res_free(i32* %77)
  %79 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %80 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %79, i32 0, i32 8
  %81 = call i32 @ocfs2_lock_res_free(i32* %80)
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call %struct.TYPE_6__* @INODE_CACHE(%struct.inode* %82)
  %84 = call i32 @ocfs2_metadata_cache_exit(%struct.TYPE_6__* %83)
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = call %struct.TYPE_6__* @INODE_CACHE(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %90 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = call %struct.TYPE_6__* @INODE_CACHE(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %91, i32 %95)
  %97 = load %struct.inode*, %struct.inode** %2, align 8
  %98 = call %struct.TYPE_6__* @INODE_CACHE(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %107 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %108)
  %110 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %111 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %110, i32 0, i32 7
  %112 = call i32 @spin_is_locked(i32* %111)
  %113 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %114 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  %117 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %118 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %117, i32 0, i32 6
  %119 = call i32 @mutex_trylock(i32* %118)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %124 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %125)
  %127 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %128 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %127, i32 0, i32 6
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %131 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %130, i32 0, i32 5
  %132 = call i32 @down_write_trylock(i32* %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %137 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %138)
  %140 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %141 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %140, i32 0, i32 5
  %142 = call i32 @up_write(i32* %141)
  %143 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %144 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %147 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %150 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %148, i32 %151)
  %153 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %154 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %153, i32 0, i32 1
  store i32 0, i32* %154, align 8
  %155 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %156 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %158 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.inode*, %struct.inode** %2, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.TYPE_7__* @OCFS2_SB(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %168 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %167, i32 0, i32 2
  %169 = call i32 @jbd2_journal_release_jbd_inode(i32 %166, i32* %168)
  br label %170

170:                                              ; preds = %72, %10
  %171 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, ...) #1

declare dso_local %struct.TYPE_7__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_open_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_lockres_freeing(i32*) #1

declare dso_local i32 @ocfs2_checkpoint_inode(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_drop_inode_locks(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_exit(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @jbd2_journal_release_jbd_inode(i32, i32*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
