; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_in_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_in_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i64 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [53 x i8] c"Set xattr entry len = %lu index = %d in bucket %llu\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, i32, i32)* @ocfs2_xattr_set_entry_in_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_entry_in_bucket(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_search* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_xattr_info*, align 8
  %10 = alloca %struct.ocfs2_xattr_search*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_info** %9, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i64 @bucket_blkno(%struct.TYPE_6__* %23)
  %25 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i64 %24)
  %26 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %6
  %35 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i64 @bucket_blkno(%struct.TYPE_6__* %37)
  store i64 %38, i64* %14, align 8
  %39 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_6__* %41)
  %43 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @ocfs2_read_xattr_bucket(%struct.TYPE_6__* %45, i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %78

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %6
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %60 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %55, %struct.TYPE_6__* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %78

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %69 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @ocfs2_xattr_set_entry_normal(%struct.inode* %67, %struct.ocfs2_xattr_info* %68, %struct.ocfs2_xattr_search* %69, i32 %70, i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %75 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %73, %struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %66, %63, %50
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @mlog(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @bucket_blkno(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ocfs2_xattr_set_entry_normal(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, i32, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
