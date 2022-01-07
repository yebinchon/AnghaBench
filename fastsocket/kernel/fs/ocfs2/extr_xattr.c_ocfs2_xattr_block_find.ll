; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_search = type { i32, %struct.buffer_head*, %struct.TYPE_6__*, i32, i8*, i8*, %struct.TYPE_4__* }
%struct.buffer_head = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_find(%struct.inode* %0, i32 %1, i8* %2, %struct.ocfs2_xattr_search* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ocfs2_xattr_search*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_xattr_block*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %9, align 8
  %14 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %14, i32 0, i32 6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %21 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %114

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = call i32 @ocfs2_read_xattr_block(%struct.inode* %27, i32 %31, %struct.buffer_head** %11)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %114

39:                                               ; preds = %26
  %40 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %41 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %41, i32 0, i32 1
  store %struct.buffer_head* %40, %struct.buffer_head** %42, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %46, %struct.ocfs2_xattr_block** %12, align 8
  %47 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %39
  %55 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %58, i32 0, i32 2
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = bitcast %struct.TYPE_6__* %62 to i8*
  %64 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %65 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %69, i64 %73
  %75 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %76 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %78 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %83 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %87 = call i32 @ocfs2_xattr_find_entry(i32 %84, i8* %85, %struct.ocfs2_xattr_search* %86)
  store i32 %87, i32* %13, align 4
  br label %95

88:                                               ; preds = %39
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %94 = call i32 @ocfs2_xattr_index_block_find(%struct.inode* %89, %struct.buffer_head* %90, i32 %91, i8* %92, %struct.ocfs2_xattr_search* %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %88, %54
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @ENODATA, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %104, i32 0, i32 1
  store %struct.buffer_head* null, %struct.buffer_head** %105, align 8
  br label %110

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %109 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %5, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %112 = call i32 @brelse(%struct.buffer_head* %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %106, %35, %24
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ocfs2_read_xattr_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_find_entry(i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_index_block_find(%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
