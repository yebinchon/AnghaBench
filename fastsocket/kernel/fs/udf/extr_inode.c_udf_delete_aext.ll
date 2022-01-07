; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_delete_aext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_delete_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.allocExtDesc = type { i32 }
%struct.udf_inode_info = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_delete_aext(%struct.inode* %0, %struct.extent_position* byval(%struct.extent_position) align 8 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_position, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.allocExtDesc*, align 8
  %13 = alloca %struct.udf_inode_info*, align 8
  %14 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %6, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @get_bh(%struct.TYPE_5__* %20)
  %22 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @get_bh(%struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %18, %4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %26)
  store %struct.udf_inode_info* %27, %struct.udf_inode_info** %13, align 8
  %28 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %29 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 4, i32* %10, align 4
  br label %43

34:                                               ; preds = %25
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 4, i32* %10, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %33
  %44 = bitcast %struct.extent_position* %9 to i8*
  %45 = bitcast %struct.extent_position* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @udf_next_aext(%struct.inode* %46, %struct.extent_position* %1, %struct.kernel_lb_addr* %6, i32* %8, i32 1)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %238

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %85, %50
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @udf_next_aext(%struct.inode* %52, %struct.extent_position* %1, %struct.kernel_lb_addr* %6, i32* %8, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 30
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @udf_write_aext(%struct.inode* %56, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32 %60, i32 1)
  %62 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @brelse(%struct.TYPE_5__* %72)
  %74 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @get_bh(%struct.TYPE_5__* %75)
  %77 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %79, align 8
  %80 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %67, %55
  br label %51

86:                                               ; preds = %51
  %87 = call i32 @memset(%struct.kernel_lb_addr* %6, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp ne %struct.TYPE_5__* %89, %91
  br i1 %92, label %93, label %167

93:                                               ; preds = %86
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 2
  %99 = call i32 @udf_free_blocks(i32 %96, %struct.inode* %97, i32* %98, i32 0, i32 1)
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @udf_write_aext(%struct.inode* %100, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32 %101, i32 1)
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @udf_write_aext(%struct.inode* %103, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32 %104, i32 1)
  %106 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %93
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 2
  %112 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %113 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = call i32 @mark_inode_dirty(%struct.inode* %116)
  br label %166

118:                                              ; preds = %93
  %119 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %123, %struct.allocExtDesc** %12, align 8
  %124 = load %struct.allocExtDesc*, %struct.allocExtDesc** %12, align 8
  %125 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 2, %126
  %128 = sub nsw i32 0, %127
  %129 = call i32 @le32_add_cpu(i32* %125, i32 %128)
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %134 = call i32 @UDF_QUERY_FLAG(i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %118
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_6__* @UDF_SB(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 513
  br i1 %143, label %144, label %155

144:                                              ; preds = %136, %118
  %145 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 2, %151
  %153 = sub nsw i32 %150, %152
  %154 = call i32 @udf_update_tag(i64 %148, i32 %153)
  br label %161

155:                                              ; preds = %136
  %156 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @udf_update_tag(i64 %159, i32 4)
  br label %161

161:                                              ; preds = %155, %144
  %162 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load %struct.inode*, %struct.inode** %7, align 8
  %165 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %163, %struct.inode* %164)
  br label %166

166:                                              ; preds = %161, %109
  br label %229

167:                                              ; preds = %86
  %168 = load %struct.inode*, %struct.inode** %7, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @udf_write_aext(%struct.inode* %168, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32 %169, i32 1)
  %171 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = icmp ne %struct.TYPE_5__* %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %177 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.inode*, %struct.inode** %7, align 8
  %181 = call i32 @mark_inode_dirty(%struct.inode* %180)
  br label %228

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %187, %struct.allocExtDesc** %12, align 8
  %188 = load %struct.allocExtDesc*, %struct.allocExtDesc** %12, align 8
  %189 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %188, i32 0, i32 0
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 0, %190
  %192 = call i32 @le32_add_cpu(i32* %189, i32 %191)
  %193 = load %struct.inode*, %struct.inode** %7, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %197 = call i32 @UDF_QUERY_FLAG(i32 %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %182
  %200 = load %struct.inode*, %struct.inode** %7, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call %struct.TYPE_6__* @UDF_SB(i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %205, 513
  br i1 %206, label %207, label %217

207:                                              ; preds = %199, %182
  %208 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 @udf_update_tag(i64 %211, i32 %215)
  br label %223

217:                                              ; preds = %199
  %218 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @udf_update_tag(i64 %221, i32 4)
  br label %223

223:                                              ; preds = %217, %207
  %224 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load %struct.inode*, %struct.inode** %7, align 8
  %227 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %225, %struct.inode* %226)
  br label %228

228:                                              ; preds = %223, %174
  br label %229

229:                                              ; preds = %228, %166
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = call i32 @brelse(%struct.TYPE_5__* %231)
  %233 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = call i32 @brelse(%struct.TYPE_5__* %234)
  %236 = load i32, i32* %8, align 4
  %237 = ashr i32 %236, 30
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %229, %49
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @get_bh(%struct.TYPE_5__*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_free_blocks(i32, %struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(i32) #1

declare dso_local i32 @udf_update_tag(i64, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
