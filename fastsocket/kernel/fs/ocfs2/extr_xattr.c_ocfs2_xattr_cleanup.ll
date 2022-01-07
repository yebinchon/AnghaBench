; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { i64, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, i32, i32)*, i32 }

@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_value_buf*, i64)* @ocfs2_xattr_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_cleanup(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_value_buf* %4, i64 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_xattr_info*, align 8
  %10 = alloca %struct.ocfs2_xattr_search*, align 8
  %11 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_info** %9, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %10, align 8
  store %struct.ocfs2_xattr_value_buf* %4, %struct.ocfs2_xattr_value_buf** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strlen(i32 %19)
  store i64 %20, i64* %14, align 8
  %21 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  store i8* %25, i8** %15, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i64 @OCFS2_XATTR_SIZE(i64 %26)
  %28 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %16, align 8
  %30 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %30, i32 0, i32 0
  %32 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i32 @INODE_CACHE(%struct.inode* %34)
  %36 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %40 = call i32 %32(i32* %33, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %71

46:                                               ; preds = %6
  %47 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @le16_add_cpu(i32* %50, i32 -1)
  %52 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @memset(i8* %55, i32 0, i64 4)
  %57 = load i8*, i8** %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i32 @memset(i8* %57, i32 0, i64 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ocfs2_journal_dirty(i32* %60, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %70

70:                                               ; preds = %67, %46
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @OCFS2_XATTR_SIZE(i64) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
