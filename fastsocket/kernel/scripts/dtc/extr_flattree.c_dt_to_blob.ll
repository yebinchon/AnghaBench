; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_dt_to_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_dt_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32 }
%struct.version_info = type { i32, i32 }
%struct.boot_info = type { i32, i32, i32 }
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
@.str.2 = private unnamed_addr constant [36 x i8] c"Error writing device tree blob: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_to_blob(i32* %0, %struct.boot_info* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.boot_info*, align 8
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
  store %struct.boot_info* %1, %struct.boot_info** %5, align 8
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
  %56 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.boot_info*, %struct.boot_info** %5, align 8
  %59 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.version_info*, %struct.version_info** %7, align 8
  %62 = call i32 @flatten_tree(i32 %60, i32* @bin_emitter, %struct.data* %11, %struct.data* %12, %struct.version_info* %61)
  %63 = load i32, i32* @FDT_END, align 4
  %64 = call i32 @bin_emit_cell(%struct.data* %11, i32 %63)
  %65 = load %struct.boot_info*, %struct.boot_info** %5, align 8
  %66 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %65, i32 0, i32 1
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
  %80 = load %struct.boot_info*, %struct.boot_info** %5, align 8
  %81 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @make_fdt_header(%struct.fdt_header* %13, %struct.version_info* %73, i32 %75, i32 %77, i32 %79, i32 %82)
  %84 = load i64, i64* @minsize, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %107

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
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
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

106:                                              ; preds = %99, %96, %86
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i32, i32* @padsize, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @padsize, align 4
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %14, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fdt32_to_cpu(i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @cpu_to_fdt32(i32 %122)
  %124 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %13, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %115, %112
  %126 = load %struct.version_info*, %struct.version_info** %7, align 8
  %127 = getelementptr inbounds %struct.version_info, %struct.version_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = bitcast %struct.data* %9 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i64 @data_append_data(i64 %130, %struct.fdt_header* %13, i32 %128)
  %132 = bitcast %struct.data* %17 to i64*
  store i64 %131, i64* %132, align 4
  %133 = bitcast %struct.data* %9 to i8*
  %134 = bitcast %struct.data* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 8, i1 false)
  %135 = bitcast %struct.data* %9 to i64*
  %136 = load i64, i64* %135, align 4
  %137 = call i64 @data_append_align(i64 %136, i32 8)
  %138 = bitcast %struct.data* %18 to i64*
  store i64 %137, i64* %138, align 4
  %139 = bitcast %struct.data* %9 to i8*
  %140 = bitcast %struct.data* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 8, i1 false)
  %141 = bitcast %struct.data* %9 to i64*
  %142 = load i64, i64* %141, align 4
  %143 = bitcast %struct.data* %10 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call i64 @data_merge(i64 %142, i64 %144)
  %146 = bitcast %struct.data* %19 to i64*
  store i64 %145, i64* %146, align 4
  %147 = bitcast %struct.data* %9 to i8*
  %148 = bitcast %struct.data* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 8, i1 false)
  %149 = bitcast %struct.data* %9 to i64*
  %150 = load i64, i64* %149, align 4
  %151 = call i64 @data_append_zeroes(i64 %150, i32 4)
  %152 = bitcast %struct.data* %20 to i64*
  store i64 %151, i64* %152, align 4
  %153 = bitcast %struct.data* %9 to i8*
  %154 = bitcast %struct.data* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 8, i1 false)
  %155 = bitcast %struct.data* %9 to i64*
  %156 = load i64, i64* %155, align 4
  %157 = bitcast %struct.data* %11 to i64*
  %158 = load i64, i64* %157, align 4
  %159 = call i64 @data_merge(i64 %156, i64 %158)
  %160 = bitcast %struct.data* %21 to i64*
  store i64 %159, i64* %160, align 4
  %161 = bitcast %struct.data* %9 to i8*
  %162 = bitcast %struct.data* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 8, i1 false)
  %163 = bitcast %struct.data* %9 to i64*
  %164 = load i64, i64* %163, align 4
  %165 = bitcast %struct.data* %12 to i64*
  %166 = load i64, i64* %165, align 4
  %167 = call i64 @data_merge(i64 %164, i64 %166)
  %168 = bitcast %struct.data* %22 to i64*
  store i64 %167, i64* %168, align 4
  %169 = bitcast %struct.data* %9 to i8*
  %170 = bitcast %struct.data* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 %170, i64 8, i1 false)
  %171 = load i32, i32* %14, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %125
  %174 = load i32, i32* %14, align 4
  %175 = bitcast %struct.data* %9 to i64*
  %176 = load i64, i64* %175, align 4
  %177 = call i64 @data_append_zeroes(i64 %176, i32 %174)
  %178 = bitcast %struct.data* %23 to i64*
  store i64 %177, i64* %178, align 4
  %179 = bitcast %struct.data* %9 to i8*
  %180 = bitcast %struct.data* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 8, i1 false)
  br label %181

181:                                              ; preds = %173, %125
  %182 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @fwrite(i32 %183, i32 %185, i32 1, i32* %186)
  %188 = load i32*, i32** %4, align 8
  %189 = call i64 @ferror(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %181
  %192 = load i32, i32* @errno, align 4
  %193 = call i32 @strerror(i32 %192)
  %194 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %191, %181
  %196 = bitcast %struct.data* %9 to i64*
  %197 = load i64, i64* %196, align 4
  %198 = call i32 @data_free(i64 %197)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.version_info*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @flatten_tree(i32, i32*, %struct.data*, %struct.data*, %struct.version_info*) #2

declare dso_local i32 @bin_emit_cell(%struct.data*, i32) #2

declare dso_local i64 @flatten_reserve_list(i32, %struct.version_info*) #2

declare dso_local i32 @make_fdt_header(%struct.fdt_header*, %struct.version_info*, i32, i32, i32, i32) #2

declare dso_local i32 @fdt32_to_cpu(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #2

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
