; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_dt_to_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_dt_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32 }
%struct.version_info = type { i32, i32 }
%struct.dt_info = type { i32, i32, i32 }
%struct.fdt_header = type { i32 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4
@version_table = common dso_local global %struct.version_info* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unknown device tree blob version %d\0A\00", align 1
@bin_emitter = common dso_local global i32 0, align 4
@FDT_END = common dso_local global i32 0, align 4
@minsize = common dso_local global i64 0, align 8
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Warning: blob size %d >= minimum size %d\0A\00", align 1
@padsize = common dso_local global i32 0, align 4
@alignsize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Error writing device tree blob: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Short write on device tree blob\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_to_blob(i32* %0, %struct.dt_info* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.version_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.data, align 4
  %10 = alloca %struct.data, align 4
  %11 = alloca %struct.data, align 4
  %12 = alloca %struct.data, align 4
  %13 = alloca %struct.fdt_header, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.data, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.data, align 4
  %18 = alloca %struct.data, align 4
  %19 = alloca %struct.data, align 4
  %20 = alloca %struct.data, align 4
  %21 = alloca %struct.data, align 4
  %22 = alloca %struct.data, align 4
  %23 = alloca %struct.data, align 4
  store i32* %0, i32** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.version_info* null, %struct.version_info** %7, align 8
  %24 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  %25 = bitcast %struct.data* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  %26 = bitcast %struct.data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  %27 = bitcast %struct.data* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.version_info*, %struct.version_info** @version_table, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.version_info* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.version_info*, %struct.version_info** @version_table, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.version_info, %struct.version_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.version_info, %struct.version_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.version_info*, %struct.version_info** @version_table, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.version_info, %struct.version_info* %43, i64 %45
  store %struct.version_info* %46, %struct.version_info** %7, align 8
  br label %47

47:                                               ; preds = %42, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.version_info*, %struct.version_info** %7, align 8
  %53 = icmp ne %struct.version_info* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %59 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.version_info*, %struct.version_info** %7, align 8
  %62 = call i32 @flatten_tree(i32 %60, i32* @bin_emitter, %struct.data* %11, %struct.data* %12, %struct.version_info* %61)
  %63 = load i32, i32* @FDT_END, align 4
  %64 = call i32 @bin_emit_cell(%struct.data* %11, i32 %63)
  %65 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %66 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.version_info*, %struct.version_info** %7, align 8
  %69 = call i64 @flatten_reserve_list(i32 %67, %struct.version_info* %68)
  %70 = bitcast %struct.data* %15 to i64*
  store i64 %69, i64* %70, align 4
  %71 = bitcast %struct.data* %10 to i8*
  %72 = bitcast %struct.data* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load %struct.version_info*, %struct.version_info** %7, align 8
  %74 = getelementptr inbounds %struct.data, %struct.data* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.data, %struct.data* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %81 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @make_fdt_header(%struct.fdt_header* %13, %struct.version_info* %73, i32 %75, i32 %77, i32 %79, i32 %82)
  %84 = load i64, i64* @minsize, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %57
  %87 = load i64, i64* @minsize, align 8
  %88 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fdt32_to_cpu(i32 %89)
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %87, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  store i32 0, i32* %14, align 4
  %97 = load i32, i32* @quiet, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fdt32_to_cpu(i32 %102)
  %104 = load i64, i64* @minsize, align 8
  %105 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %96
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %57
  %109 = load i32, i32* @padsize, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @padsize, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i64, i64* @alignsize, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fdt32_to_cpu(i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i64, i64* @alignsize, align 8
  %123 = call i32 @ALIGN(i32 %121, i64 %122)
  %124 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @fdt32_to_cpu(i32 %125)
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %116, %113
  %129 = load i32, i32* %14, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @fdt32_to_cpu(i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @cpu_to_fdt32(i32 %138)
  %140 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %131, %128
  %142 = load %struct.version_info*, %struct.version_info** %7, align 8
  %143 = getelementptr inbounds %struct.version_info, %struct.version_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = bitcast %struct.data* %9 to i64*
  %146 = load i64, i64* %145, align 4
  %147 = call i64 @data_append_data(i64 %146, %struct.fdt_header* %13, i32 %144)
  %148 = bitcast %struct.data* %17 to i64*
  store i64 %147, i64* %148, align 4
  %149 = bitcast %struct.data* %9 to i8*
  %150 = bitcast %struct.data* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 8, i1 false)
  %151 = bitcast %struct.data* %9 to i64*
  %152 = load i64, i64* %151, align 4
  %153 = call i64 @data_append_align(i64 %152, i32 8)
  %154 = bitcast %struct.data* %18 to i64*
  store i64 %153, i64* %154, align 4
  %155 = bitcast %struct.data* %9 to i8*
  %156 = bitcast %struct.data* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 8, i1 false)
  %157 = bitcast %struct.data* %9 to i64*
  %158 = load i64, i64* %157, align 4
  %159 = bitcast %struct.data* %10 to i64*
  %160 = load i64, i64* %159, align 4
  %161 = call i64 @data_merge(i64 %158, i64 %160)
  %162 = bitcast %struct.data* %19 to i64*
  store i64 %161, i64* %162, align 4
  %163 = bitcast %struct.data* %9 to i8*
  %164 = bitcast %struct.data* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 8, i1 false)
  %165 = bitcast %struct.data* %9 to i64*
  %166 = load i64, i64* %165, align 4
  %167 = call i64 @data_append_zeroes(i64 %166, i32 4)
  %168 = bitcast %struct.data* %20 to i64*
  store i64 %167, i64* %168, align 4
  %169 = bitcast %struct.data* %9 to i8*
  %170 = bitcast %struct.data* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 %170, i64 8, i1 false)
  %171 = bitcast %struct.data* %9 to i64*
  %172 = load i64, i64* %171, align 4
  %173 = bitcast %struct.data* %11 to i64*
  %174 = load i64, i64* %173, align 4
  %175 = call i64 @data_merge(i64 %172, i64 %174)
  %176 = bitcast %struct.data* %21 to i64*
  store i64 %175, i64* %176, align 4
  %177 = bitcast %struct.data* %9 to i8*
  %178 = bitcast %struct.data* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 8, i1 false)
  %179 = bitcast %struct.data* %9 to i64*
  %180 = load i64, i64* %179, align 4
  %181 = bitcast %struct.data* %12 to i64*
  %182 = load i64, i64* %181, align 4
  %183 = call i64 @data_merge(i64 %180, i64 %182)
  %184 = bitcast %struct.data* %22 to i64*
  store i64 %183, i64* %184, align 4
  %185 = bitcast %struct.data* %9 to i8*
  %186 = bitcast %struct.data* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 8, i1 false)
  %187 = load i32, i32* %14, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %141
  %190 = load i32, i32* %14, align 4
  %191 = bitcast %struct.data* %9 to i64*
  %192 = load i64, i64* %191, align 4
  %193 = call i64 @data_append_zeroes(i64 %192, i32 %190)
  %194 = bitcast %struct.data* %23 to i64*
  store i64 %193, i64* %194, align 4
  %195 = bitcast %struct.data* %9 to i8*
  %196 = bitcast %struct.data* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 %196, i64 8, i1 false)
  br label %197

197:                                              ; preds = %189, %141
  %198 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @fwrite(i32 %199, i32 %201, i32 1, i32* %202)
  %204 = icmp ne i32 %203, 1
  br i1 %204, label %205, label %216

205:                                              ; preds = %197
  %206 = load i32*, i32** %4, align 8
  %207 = call i64 @ferror(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i32, i32* @errno, align 4
  %211 = call i32 @strerror(i32 %210)
  %212 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %211)
  br label %215

213:                                              ; preds = %205
  %214 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %209
  br label %216

216:                                              ; preds = %215, %197
  %217 = bitcast %struct.data* %9 to i64*
  %218 = load i64, i64* %217, align 4
  %219 = call i32 @data_free(i64 %218)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.version_info*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @flatten_tree(i32, i32*, %struct.data*, %struct.data*, %struct.version_info*) #2

declare dso_local i32 @bin_emit_cell(%struct.data*, i32) #2

declare dso_local i64 @flatten_reserve_list(i32, %struct.version_info*) #2

declare dso_local i32 @make_fdt_header(%struct.fdt_header*, %struct.version_info*, i32, i32, i32, i32) #2

declare dso_local i32 @fdt32_to_cpu(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #2

declare dso_local i32 @ALIGN(i32, i64) #2

declare dso_local i32 @cpu_to_fdt32(i32) #2

declare dso_local i64 @data_append_data(i64, %struct.fdt_header*, i32) #2

declare dso_local i64 @data_append_align(i64, i32) #2

declare dso_local i64 @data_merge(i64, i64) #2

declare dso_local i64 @data_append_zeroes(i64, i32) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @data_free(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
