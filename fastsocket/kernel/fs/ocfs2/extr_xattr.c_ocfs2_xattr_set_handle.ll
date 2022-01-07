; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i8*, i8*, i64 }
%struct.ocfs2_xattr_search = type { i32, i32, i64, %struct.buffer_head* }
%struct.ocfs2_xattr_set_ctxt = type { %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32* }
%struct.TYPE_4__ = type { i32 }

@ENODATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_set_handle(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i8* %4, i8* %5, i64 %6, i32 %7, %struct.ocfs2_alloc_context* %8, %struct.ocfs2_alloc_context* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca %struct.ocfs2_dinode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ocfs2_xattr_info, align 8
  %25 = alloca %struct.ocfs2_xattr_search, align 8
  %26 = alloca %struct.ocfs2_xattr_search, align 8
  %27 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  store i32* %0, i32** %12, align 8
  store %struct.inode* %1, %struct.inode** %13, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.ocfs2_alloc_context* %8, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* %9, %struct.ocfs2_alloc_context** %21, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 0
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 1
  %31 = load i8*, i8** %16, align 8
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 2
  %33 = load i8*, i8** %17, align 8
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 3
  %35 = load i64, i64* %18, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 2
  %39 = load i64, i64* @ENODATA, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %41, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 2
  %45 = load i64, i64* @ENODATA, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %47, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 0
  %49 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  store %struct.ocfs2_alloc_context* %49, %struct.ocfs2_alloc_context** %48, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 1
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* %51, %struct.ocfs2_alloc_context** %50, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 2
  %53 = load i32*, i32** %12, align 8
  store i32* %53, i32** %52, align 8
  %54 = load %struct.inode*, %struct.inode** %13, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @OCFS2_SB(%struct.TYPE_3__* %56)
  %58 = call i32 @ocfs2_supports_xattr(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %10
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %133

63:                                               ; preds = %10
  %64 = load %struct.inode*, %struct.inode** %13, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = call i32 @ocfs2_xattr_bucket_new(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @mlog_errno(i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %133

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %87 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 3
  store %struct.buffer_head* %86, %struct.buffer_head** %87, align 8
  %88 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 3
  store %struct.buffer_head* %86, %struct.buffer_head** %88, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %92, %struct.ocfs2_dinode** %22, align 8
  %93 = load %struct.inode*, %struct.inode** %13, align 8
  %94 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @down_write(i32* %95)
  %97 = load %struct.inode*, %struct.inode** %13, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @ocfs2_xattr_ibody_find(%struct.inode* %97, i32 %98, i8* %99, %struct.ocfs2_xattr_search* %25)
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %23, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  br label %121

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.inode*, %struct.inode** %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 @ocfs2_xattr_block_find(%struct.inode* %109, i32 %110, i8* %111, %struct.ocfs2_xattr_search* %26)
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %121

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %104
  %118 = load %struct.inode*, %struct.inode** %13, align 8
  %119 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %22, align 8
  %120 = call i32 @__ocfs2_xattr_set_handle(%struct.inode* %118, %struct.ocfs2_dinode* %119, %struct.ocfs2_xattr_info* %24, %struct.ocfs2_xattr_search* %25, %struct.ocfs2_xattr_search* %26, %struct.ocfs2_xattr_set_ctxt* %27)
  store i32 %120, i32* %23, align 4
  br label %121

121:                                              ; preds = %117, %115, %103
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @up_write(i32* %124)
  %126 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @brelse(i32 %127)
  %129 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ocfs2_xattr_bucket_free(i32 %130)
  %132 = load i32, i32* %23, align 4
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %121, %78, %60
  %134 = load i32, i32* %11, align 4
  ret i32 %134
}

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_3__*) #1

declare dso_local i32 @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_ibody_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_block_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @__ocfs2_xattr_set_handle(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
