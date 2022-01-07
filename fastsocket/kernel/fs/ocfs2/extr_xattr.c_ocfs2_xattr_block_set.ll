; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { %struct.buffer_head*, %struct.TYPE_6__*, i32, i8*, i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32* }
%struct.ocfs2_xattr_block = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_block_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_set(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_xattr_block*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %13 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  store %struct.ocfs2_xattr_block* null, %struct.ocfs2_xattr_block** %11, align 8
  %16 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %16, i32 0, i32 0
  %18 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %19 = icmp ne %struct.buffer_head* %18, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ocfs2_create_xattr_block(i32* %21, %struct.inode* %22, i32 %25, i32 %28, %struct.buffer_head** %9, i32 0)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %119

35:                                               ; preds = %20
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %37, i32 0, i32 0
  store %struct.buffer_head* %36, %struct.buffer_head** %38, align 8
  %39 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %39, i32 0, i32 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %44, %struct.ocfs2_xattr_block** %11, align 8
  %45 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %11, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %48, i32 0, i32 1
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = bitcast %struct.TYPE_6__* %52 to i8*
  %54 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %11, align 8
  %57 = bitcast %struct.ocfs2_xattr_block* %56 to i8*
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %57, i64 %63
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %81

74:                                               ; preds = %4
  %75 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %75, i32 0, i32 0
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %80, %struct.ocfs2_xattr_block** %11, align 8
  br label %81

81:                                               ; preds = %74, %35
  %82 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %11, align 8
  %83 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %81
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %92 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %93 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %94 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %95 = call i32 @ocfs2_xattr_set_entry(%struct.inode* %90, %struct.ocfs2_xattr_info* %91, %struct.ocfs2_xattr_search* %92, %struct.ocfs2_xattr_set_ctxt* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @ENOSPC, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %89
  br label %119

104:                                              ; preds = %98
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %107 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %108 = call i32 @ocfs2_xattr_create_index_block(%struct.inode* %105, %struct.ocfs2_xattr_search* %106, %struct.ocfs2_xattr_set_ctxt* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %119

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %81
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %116 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %117 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %118 = call i32 @ocfs2_xattr_set_entry_index_block(%struct.inode* %114, %struct.ocfs2_xattr_info* %115, %struct.ocfs2_xattr_search* %116, %struct.ocfs2_xattr_set_ctxt* %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %113, %111, %103, %32
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

declare dso_local i32 @ocfs2_create_xattr_block(i32*, %struct.inode*, i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_set_entry(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, i32) #1

declare dso_local i32 @ocfs2_xattr_create_index_block(%struct.inode*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_set_entry_index_block(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
