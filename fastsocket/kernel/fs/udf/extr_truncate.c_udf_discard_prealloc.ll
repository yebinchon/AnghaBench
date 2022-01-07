; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_udf_discard_prealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_truncate.c_udf_discard_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.extent_position = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i64, i32, i32 }
%struct.allocExtDesc = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EXT_NOT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_discard_prealloc(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.extent_position, align 8
  %4 = alloca %struct.kernel_lb_addr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_inode_info*, align 8
  %11 = alloca %struct.allocExtDesc*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = bitcast %struct.extent_position* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  store i64 0, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %13)
  store %struct.udf_inode_info* %14, %struct.udf_inode_info** %10, align 8
  %15 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %16 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %1
  br label %144

29:                                               ; preds = %20
  %30 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %31 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %38 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 4, i32* %9, align 4
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %47 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  br label %50

50:                                               ; preds = %54, %45
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = call i32 @udf_next_aext(%struct.inode* %51, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i64* %5, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @EXT_NOT_RECORDED_ALLOCATED, align 4
  %62 = ashr i32 %61, 30
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %137

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %65
  store i32 %68, i32* %66, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @extent_trunc(%struct.inode* %72, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32 %73, i64 %74, i32 0)
  %76 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %82)
  %84 = sub nsw i32 %81, %83
  %85 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %86 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = call i32 @mark_inode_dirty(%struct.inode* %87)
  br label %136

89:                                               ; preds = %64
  %90 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %94, %struct.allocExtDesc** %11, align 8
  %95 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %struct.allocExtDesc*, %struct.allocExtDesc** %11, align 8
  %102 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %2, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %107 = call i32 @UDF_QUERY_FLAG(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %89
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_7__* @UDF_SB(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 513
  br i1 %116, label %117, label %125

117:                                              ; preds = %109, %89
  %118 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @udf_update_tag(i64 %121, i32 %123)
  br label %131

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @udf_update_tag(i64 %129, i32 4)
  br label %131

131:                                              ; preds = %125, %117
  %132 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load %struct.inode*, %struct.inode** %2, align 8
  %135 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_6__* %133, %struct.inode* %134)
  br label %136

136:                                              ; preds = %131, %79
  br label %137

137:                                              ; preds = %136, %59
  %138 = load i64, i64* %6, align 8
  %139 = load %struct.udf_inode_info*, %struct.udf_inode_info** %10, align 8
  %140 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = call i32 @brelse(%struct.TYPE_6__* %142)
  br label %144

144:                                              ; preds = %137, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i64*, i32) #2

declare dso_local i32 @extent_trunc(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i64, i32) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @UDF_QUERY_FLAG(i32, i32) #2

declare dso_local %struct.TYPE_7__* @UDF_SB(i32) #2

declare dso_local i32 @udf_update_tag(i64, i32) #2

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_6__*, %struct.inode*) #2

declare dso_local i32 @brelse(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
