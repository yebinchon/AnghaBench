; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_update_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i64 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, i32, i32)*, i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_value_buf*, i64)* @ocfs2_xattr_update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_update_entry(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_value_buf* %4, i64 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_xattr_info*, align 8
  %10 = alloca %struct.ocfs2_xattr_search*, align 8
  %11 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ocfs2_xattr_info* %2, %struct.ocfs2_xattr_info** %9, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %10, align 8
  store %struct.ocfs2_xattr_value_buf* %4, %struct.ocfs2_xattr_value_buf** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %14, i32 0, i32 0
  %16 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @INODE_CACHE(%struct.inode* %18)
  %20 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %24 = call i32 %16(i32* %17, i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %80

30:                                               ; preds = %6
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @cpu_to_le16(i64 %31)
  %33 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @cpu_to_le64(i64 %39)
  %41 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @ocfs2_xattr_set_local(%struct.TYPE_3__* %53, i32 1)
  br label %60

55:                                               ; preds = %30
  %56 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @ocfs2_xattr_set_local(%struct.TYPE_3__* %58, i32 0)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %63 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @ocfs2_xattr_hash_entry(%struct.inode* %61, i32 %64, %struct.TYPE_3__* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %11, align 8
  %71 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ocfs2_journal_dirty(i32* %69, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %79

79:                                               ; preds = %76, %60
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_xattr_set_local(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ocfs2_xattr_hash_entry(%struct.inode*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
