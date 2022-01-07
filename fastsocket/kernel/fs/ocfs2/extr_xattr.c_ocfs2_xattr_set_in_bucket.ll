; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_in_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_in_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i64, i32*, i32 }
%struct.ocfs2_xattr_search = type { i64, %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@def_xv = common dso_local global i32 0, align 4
@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_set_in_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_in_bucket(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ocfs2_xattr_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i32 1, i32* %10, align 4
  %15 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %12, align 8
  %19 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %19, i32 0, i32 1
  %21 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  store %struct.ocfs2_xattr_entry* %21, %struct.ocfs2_xattr_entry** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strlen(i32 %28)
  %30 = call i32 @ocfs2_xattr_name_hash(%struct.inode* %22, i32 %25, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %4
  %36 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %13, align 8
  %37 = call i32 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  br label %50

49:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %55 = call i32 @ocfs2_xattr_bucket_value_truncate_xs(%struct.inode* %51, %struct.ocfs2_xattr_search* %52, i64 %53, %struct.ocfs2_xattr_set_ctxt* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %130

59:                                               ; preds = %50
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %121

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %35, %4
  %65 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  %72 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %73 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %72, i32 0, i32 1
  store i32* @def_xv, i32** %73, align 8
  %74 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  %75 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %76 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %64
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %80 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %83 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ocfs2_xattr_set_entry_in_bucket(%struct.inode* %78, i32 %81, %struct.ocfs2_xattr_info* %82, %struct.ocfs2_xattr_search* %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %130

92:                                               ; preds = %77
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %130

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %102 = call i32 @ocfs2_xattr_bucket_value_truncate_xs(%struct.inode* %98, %struct.ocfs2_xattr_search* %99, i64 %100, %struct.ocfs2_xattr_set_ctxt* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  %108 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %109 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %115 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %118 = call i32 @ocfs2_xattr_bucket_remove_xs(%struct.inode* %113, i32 %116, %struct.ocfs2_xattr_search* %117)
  br label %119

119:                                              ; preds = %112, %105
  br label %130

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %62
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %124 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @ocfs2_xattr_bucket_set_value_outside(%struct.inode* %122, i32 %125, %struct.ocfs2_xattr_search* %126, i8* %127, i64 %128)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %121, %119, %96, %89, %58
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

declare dso_local i32 @ocfs2_xattr_name_hash(%struct.inode*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xattr_bucket_value_truncate_xs(%struct.inode*, %struct.ocfs2_xattr_search*, i64, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_set_entry_in_bucket(%struct.inode*, i32, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_remove_xs(%struct.inode*, i32, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_bucket_set_value_outside(%struct.inode*, i32, %struct.ocfs2_xattr_search*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
