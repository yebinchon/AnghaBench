; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_claim_local_alloc_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_claim_local_alloc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_alloc_context = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_local_alloc = type { i32, i8* }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = call i32 (...) @mlog_entry_void()
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %21 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 1
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %15, align 8
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %35, %struct.ocfs2_dinode** %17, align 8
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %37 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %36)
  store %struct.ocfs2_local_alloc* %37, %struct.ocfs2_local_alloc** %18, align 8
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super* %38, %struct.ocfs2_dinode* %39, i64 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %6
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %105

49:                                               ; preds = %6
  %50 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %18, align 8
  %51 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %16, align 8
  %53 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %18, align 8
  %54 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i64*, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64*, i64** %12, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.inode*, %struct.inode** %15, align 8
  %65 = call i32 @INODE_CACHE(%struct.inode* %64)
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %70 = call i32 @ocfs2_journal_access_di(i32* %63, i32 %65, %struct.TYPE_7__* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %105

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %10, align 8
  %80 = icmp ne i64 %78, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @ocfs2_set_bit(i32 %82, i8* %84)
  br label %77

86:                                               ; preds = %77
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64*, i64** %12, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le32_add_cpu(i32* %90, i64 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %96 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @ocfs2_journal_dirty(i32* %94, %struct.TYPE_7__* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %105

104:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %101, %73, %44
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @mlog_exit(i32 %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super*, %struct.ocfs2_dinode*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_bit(i32, i8*) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
