; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_orphan_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_orphan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_2__ = type { i64 }

@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"removing '%s' from orphan dir %llu (namelen=%d)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_orphan_del(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dir_lookup_result, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  %16 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %21 = bitcast %struct.ocfs2_dir_lookup_result* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = call i32 (...) @mlog_entry_void()
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ocfs2_blkno_stringify(i64 %26, i8* %20)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %96

33:                                               ; preds = %5
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %39 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %37, i32 %38)
  %40 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @ocfs2_find_entry(i8* %20, i32 %40, %struct.inode* %41, %struct.ocfs2_dir_lookup_result* %15)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %96

48:                                               ; preds = %33
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i32 @ocfs2_delete_entry(i32* %49, %struct.inode* %50, %struct.ocfs2_dir_lookup_result* %15)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %96

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %63 = call i32 @ocfs2_journal_access_di(i32* %58, i32 %60, %struct.buffer_head* %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %96

69:                                               ; preds = %57
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %73, %struct.ocfs2_dinode** %13, align 8
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %81 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %80, i32 -1)
  br label %82

82:                                               ; preds = %79, %69
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %84 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %89 = call i32 @ocfs2_journal_dirty(i32* %87, %struct.buffer_head* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %92, %66, %54, %45, %30
  %97 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %15)
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @mlog_exit(i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlog_entry_void(...) #3

declare dso_local i32 @ocfs2_blkno_stringify(i64, i8*) #3

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #3

declare dso_local i32 @mlog_errno(i32) #3

declare dso_local i32 @mlog(i32, i8*, i8*, i64, i32) #3

declare dso_local i32 @ocfs2_find_entry(i8*, i32, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #3

declare dso_local i32 @ocfs2_delete_entry(i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #3

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #3

declare dso_local i32 @INODE_CACHE(%struct.inode*) #3

declare dso_local i64 @S_ISDIR(i32) #3

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #3

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #3

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #3

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #3

declare dso_local i32 @mlog_exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
