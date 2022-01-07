; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_value_outside.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_value_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i32, i32 }
%struct.ocfs2_xattr_search = type { i8* }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.ocfs2_xattr_value_root* }
%struct.ocfs2_xattr_value_root = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_value_buf*, i64)* @ocfs2_xattr_set_value_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_value_outside(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_value_buf* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_xattr_info*, align 8
  %10 = alloca %struct.ocfs2_xattr_search*, align 8
  %11 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %12 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %9, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %10, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  store %struct.ocfs2_xattr_value_buf* %4, %struct.ocfs2_xattr_value_buf** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strlen(i32 %21)
  store i64 %22, i64* %14, align 8
  %23 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr i8, i8* %25, i64 %26
  store i8* %27, i8** %15, align 8
  store %struct.ocfs2_xattr_value_root* null, %struct.ocfs2_xattr_value_root** %16, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @OCFS2_XATTR_SIZE(i64 %28)
  %30 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load i8*, i8** %15, align 8
  %36 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @memcpy(i8* %35, i32 %38, i64 %39)
  %41 = load i8*, i8** %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @OCFS2_XATTR_SIZE(i64 %42)
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = bitcast i8* %44 to %struct.ocfs2_xattr_value_root*
  store %struct.ocfs2_xattr_value_root* %45, %struct.ocfs2_xattr_value_root** %16, align 8
  %46 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = call i32 @cpu_to_le16(i32 1)
  %54 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %61 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %12, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %61, i32 0, i32 0
  store %struct.ocfs2_xattr_value_root* %60, %struct.ocfs2_xattr_value_root** %62, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %12, align 8
  %65 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  %69 = call i32 @ocfs2_xattr_value_truncate(%struct.inode* %63, %struct.ocfs2_xattr_value_buf* %64, i32 %67, %struct.ocfs2_xattr_set_ctxt* %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %6
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %7, align 4
  br label %112

76:                                               ; preds = %6
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  %79 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %82 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %10, align 8
  %83 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @ocfs2_xattr_update_entry(%struct.inode* %77, i32 %80, %struct.ocfs2_xattr_info* %81, %struct.ocfs2_xattr_search* %82, %struct.ocfs2_xattr_value_buf* %83, i64 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %7, align 4
  br label %112

92:                                               ; preds = %76
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %11, align 8
  %95 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %12, align 8
  %98 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %99 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %9, align 8
  %102 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__ocfs2_xattr_set_value_outside(%struct.inode* %93, i32 %96, %struct.ocfs2_xattr_value_buf* %97, i32 %100, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %110

110:                                              ; preds = %107, %92
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %88, %72
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @OCFS2_XATTR_SIZE(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_xattr_value_truncate(%struct.inode*, %struct.ocfs2_xattr_value_buf*, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_update_entry(%struct.inode*, i32, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_value_buf*, i64) #1

declare dso_local i32 @__ocfs2_xattr_set_value_outside(%struct.inode*, i32, %struct.ocfs2_xattr_value_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
