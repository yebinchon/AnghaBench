; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_set_value_outside.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_set_value_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_3__*, i32, %struct.ocfs2_xattr_entry* }
%struct.TYPE_3__ = type { i32* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, %struct.ocfs2_xattr_value_root*, i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_search*, i8*, i32)* @ocfs2_xattr_bucket_set_value_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_set_value_outside(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_search* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_xattr_search*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %15 = alloca %struct.ocfs2_xattr_entry*, align 8
  %16 = alloca %struct.ocfs2_xattr_header*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %19, i32 0, i32 2
  %21 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  store %struct.ocfs2_xattr_entry* %21, %struct.ocfs2_xattr_entry** %15, align 8
  %22 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.TYPE_3__* %24)
  store %struct.ocfs2_xattr_header* %25, %struct.ocfs2_xattr_header** %16, align 8
  %26 = bitcast %struct.ocfs2_xattr_value_buf* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %18, i32 0, i32 2
  %28 = load i32, i32* @ocfs2_journal_access, align 4
  store i32 %28, i32* %27, align 8
  %29 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %35 = icmp ne %struct.ocfs2_xattr_entry* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %38 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %33, %5
  %41 = phi i1 [ true, %33 ], [ true, %5 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %16, align 8
  %48 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %49 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %16, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %48, i64 %53
  %55 = call i32 @ocfs2_xattr_bucket_get_name_value(i32 %46, %struct.ocfs2_xattr_header* %47, %struct.ocfs2_xattr_entry* %54, i32* %13, i32* %12)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %101

61:                                               ; preds = %40
  %62 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %63 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i8* @bucket_block(%struct.TYPE_3__* %64, i32 %65)
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %15, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @OCFS2_XATTR_SIZE(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %70, i64 %75
  %77 = bitcast i8* %76 to %struct.ocfs2_xattr_value_root*
  store %struct.ocfs2_xattr_value_root* %77, %struct.ocfs2_xattr_value_root** %14, align 8
  %78 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %18, i32 0, i32 1
  store %struct.ocfs2_xattr_value_root* %78, %struct.ocfs2_xattr_value_root** %79, align 8
  %80 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %8, align 8
  %81 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %18, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @__ocfs2_xattr_set_value_outside(%struct.inode* %90, i32* %91, %struct.ocfs2_xattr_value_buf* %18, i8* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %61
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %100

100:                                              ; preds = %97, %61
  br label %101

101:                                              ; preds = %100, %58
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xattr_bucket_get_name_value(i32, %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_entry*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @bucket_block(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @__ocfs2_xattr_set_value_outside(%struct.inode*, i32*, %struct.ocfs2_xattr_value_buf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
