; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_expand_file_adinicb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_expand_file_adinicb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.page = type { i32 }
%struct.writeback_control = type { i32, i32 }
%struct.inode = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.udf_inode_info = type { i32, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@WB_SYNC_NONE = common dso_local global i32 0, align 4
@udf_aops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i8* null, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_expand_file_adinicb(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.udf_inode_info*, align 8
  %10 = alloca %struct.writeback_control, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %11)
  store %struct.udf_inode_info* %12, %struct.udf_inode_info** %9, align 8
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %10, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %10, i32 0, i32 1
  %15 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.TYPE_6__* @udf_aops, %struct.TYPE_6__** %18, align 8
  %19 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %20 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %28 = call i64 @UDF_QUERY_FLAG(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8*, i8** @ICBTAG_FLAG_AD_SHORT, align 8
  %32 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %33 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %38

34:                                               ; preds = %23
  %35 = load i8*, i8** @ICBTAG_FLAG_AD_LONG, align 8
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @mark_inode_dirty(%struct.inode* %39)
  br label %133

41:                                               ; preds = %3
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.page* @grab_cache_page(i32 %44, i32 0)
  store %struct.page* %45, %struct.page** %7, align 8
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = call i32 @PageLocked(%struct.page* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.page*, %struct.page** %7, align 8
  %53 = call i32 @PageUptodate(%struct.page* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %41
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = call i8* @kmap(%struct.page* %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %60 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %65 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %66 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = call i32 @memset(i8* %63, i32 0, i32 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %72 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %76 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %81 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(i8* %70, i8* %79, i32 %82)
  %84 = load %struct.page*, %struct.page** %7, align 8
  %85 = call i32 @flush_dcache_page(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i32 @SetPageUptodate(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %7, align 8
  %89 = call i32 @kunmap(%struct.page* %88)
  br label %90

90:                                               ; preds = %55, %41
  %91 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %92 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %96 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %101 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memset(i8* %99, i32 0, i32 %102)
  %104 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %105 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %110 = call i64 @UDF_QUERY_FLAG(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %90
  %113 = load i8*, i8** @ICBTAG_FLAG_AD_SHORT, align 8
  %114 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %115 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %120

116:                                              ; preds = %90
  %117 = load i8*, i8** @ICBTAG_FLAG_AD_LONG, align 8
  %118 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %119 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %125, align 8
  %127 = load %struct.page*, %struct.page** %7, align 8
  %128 = call i32 %126(%struct.page* %127, %struct.writeback_control* %10)
  %129 = load %struct.page*, %struct.page** %7, align 8
  %130 = call i32 @page_cache_release(%struct.page* %129)
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = call i32 @mark_inode_dirty(%struct.inode* %131)
  br label %133

133:                                              ; preds = %120, %38
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i64 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.page* @grab_cache_page(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
