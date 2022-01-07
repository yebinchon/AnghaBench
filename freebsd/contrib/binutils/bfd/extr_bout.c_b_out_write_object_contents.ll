; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.external_exec = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BMAGIC = common dso_local global i32 0, align 4
@EXEC_BYTES_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@b_out_symbol_cmp = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @b_out_write_object_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_write_object_contents(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.external_exec, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @aout_32_make_sections(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %241

18:                                               ; preds = %1
  %19 = load i32, i32* @BMAGIC, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_16__* @exec_hdr(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 12
  store i32 %19, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_14__* @obj_textsec(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_16__* @exec_hdr(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.TYPE_14__* @obj_datasec(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.TYPE_16__* @exec_hdr(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 10
  store i32 %33, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_15__* @obj_bsssec(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call %struct.TYPE_16__* @exec_hdr(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 9
  store i32 %40, i32* %43, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @bfd_get_symcount(i32* %44)
  %46 = mul nsw i32 %45, 12
  %47 = load i32*, i32** %3, align 8
  %48 = call %struct.TYPE_16__* @exec_hdr(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @bfd_get_start_address(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call %struct.TYPE_16__* @exec_hdr(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 8
  store i32 %51, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call %struct.TYPE_14__* @obj_textsec(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 8
  %60 = load i32*, i32** %3, align 8
  %61 = call %struct.TYPE_16__* @exec_hdr(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call %struct.TYPE_14__* @obj_datasec(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 8
  %68 = load i32*, i32** %3, align 8
  %69 = call %struct.TYPE_16__* @exec_hdr(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call %struct.TYPE_14__* @obj_textsec(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = call %struct.TYPE_16__* @exec_hdr(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 7
  store i32 %74, i32* %77, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = call %struct.TYPE_14__* @obj_datasec(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = call %struct.TYPE_16__* @exec_hdr(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 6
  store i32 %81, i32* %84, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = call %struct.TYPE_15__* @obj_bsssec(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = call %struct.TYPE_16__* @exec_hdr(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 5
  store i32 %88, i32* %91, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = call %struct.TYPE_14__* @obj_textsec(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = call %struct.TYPE_16__* @exec_hdr(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = call %struct.TYPE_14__* @obj_datasec(i32* %99)
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = call %struct.TYPE_16__* @exec_hdr(i32* %103)
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = call %struct.TYPE_16__* @exec_hdr(i32* %107)
  %109 = call i32 @bout_swap_exec_header_out(i32* %106, %struct.TYPE_16__* %108, %struct.external_exec* %4)
  %110 = load i64, i64* @EXEC_BYTES_SIZE, align 8
  store i64 %110, i64* %5, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @SEEK_SET, align 4
  %113 = call i64 @bfd_seek(i32* %111, i32 0, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %18
  %116 = bitcast %struct.external_exec* %4 to i8*
  %117 = load i64, i64* %5, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = call i64 @bfd_bwrite(i8* %116, i64 %117, i32* %118)
  %120 = load i64, i64* %5, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115, %18
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %2, align 4
  br label %241

124:                                              ; preds = %115
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @bfd_get_symcount(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %239

128:                                              ; preds = %124
  %129 = load i32*, i32** %3, align 8
  %130 = call %struct.TYPE_13__** @bfd_get_outsymbols(i32* %129)
  store %struct.TYPE_13__** %130, %struct.TYPE_13__*** %6, align 8
  %131 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @bfd_get_symcount(i32* %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %131, i64 %134
  store %struct.TYPE_13__** %135, %struct.TYPE_13__*** %7, align 8
  %136 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %136, i32 -1
  store %struct.TYPE_13__** %137, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__** %136, %struct.TYPE_13__*** %8, align 8
  br label %138

138:                                              ; preds = %160, %128
  %139 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %140 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %141 = icmp uge %struct.TYPE_13__** %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @BSF_DEBUGGING, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %151, i32 -1
  store %struct.TYPE_13__** %152, %struct.TYPE_13__*** %8, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %9, align 8
  %154 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %158, align 8
  br label %159

159:                                              ; preds = %150, %142
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %161, i32 -1
  store %struct.TYPE_13__** %162, %struct.TYPE_13__*** %7, align 8
  br label %138

163:                                              ; preds = %138
  %164 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %165 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %166 = icmp ugt %struct.TYPE_13__** %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %169 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %170 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %171 = ptrtoint %struct.TYPE_13__** %169 to i64
  %172 = ptrtoint %struct.TYPE_13__** %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 8
  %175 = load i32, i32* @b_out_symbol_cmp, align 4
  %176 = call i32 @qsort(%struct.TYPE_13__** %168, i64 %174, i32 8, i32 %175)
  br label %177

177:                                              ; preds = %167, %163
  %178 = load i32*, i32** %3, align 8
  %179 = load i32*, i32** %3, align 8
  %180 = call %struct.TYPE_16__* @exec_hdr(i32* %179)
  %181 = bitcast %struct.TYPE_16__* %10 to i8*
  %182 = bitcast %struct.TYPE_16__* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 4 %182, i64 52, i1 false)
  %183 = call i64 @N_SYMOFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %10)
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @SEEK_SET, align 4
  %186 = call i64 @bfd_seek(i32* %178, i32 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %2, align 4
  br label %241

190:                                              ; preds = %177
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @aout_32_write_syms(i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %2, align 4
  br label %241

196:                                              ; preds = %190
  %197 = load i32*, i32** %3, align 8
  %198 = load i32*, i32** %3, align 8
  %199 = call %struct.TYPE_16__* @exec_hdr(i32* %198)
  %200 = bitcast %struct.TYPE_16__* %11 to i8*
  %201 = bitcast %struct.TYPE_16__* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 4 %201, i64 52, i1 false)
  %202 = call i64 @N_TROFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %11)
  %203 = trunc i64 %202 to i32
  %204 = load i32, i32* @SEEK_SET, align 4
  %205 = call i64 @bfd_seek(i32* %197, i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i32, i32* @FALSE, align 4
  store i32 %208, i32* %2, align 4
  br label %241

209:                                              ; preds = %196
  %210 = load i32*, i32** %3, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = call %struct.TYPE_14__* @obj_textsec(i32* %211)
  %213 = call i32 @b_out_squirt_out_relocs(i32* %210, %struct.TYPE_14__* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %2, align 4
  br label %241

217:                                              ; preds = %209
  %218 = load i32*, i32** %3, align 8
  %219 = load i32*, i32** %3, align 8
  %220 = call %struct.TYPE_16__* @exec_hdr(i32* %219)
  %221 = bitcast %struct.TYPE_16__* %12 to i8*
  %222 = bitcast %struct.TYPE_16__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 4 %222, i64 52, i1 false)
  %223 = call i64 @N_DROFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %12)
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @SEEK_SET, align 4
  %226 = call i64 @bfd_seek(i32* %218, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i32, i32* @FALSE, align 4
  store i32 %229, i32* %2, align 4
  br label %241

230:                                              ; preds = %217
  %231 = load i32*, i32** %3, align 8
  %232 = load i32*, i32** %3, align 8
  %233 = call %struct.TYPE_14__* @obj_datasec(i32* %232)
  %234 = call i32 @b_out_squirt_out_relocs(i32* %231, %struct.TYPE_14__* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %230
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %2, align 4
  br label %241

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238, %124
  %240 = load i32, i32* @TRUE, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %239, %236, %228, %215, %207, %194, %188, %122, %16
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @aout_32_make_sections(i32*) #1

declare dso_local %struct.TYPE_16__* @exec_hdr(i32*) #1

declare dso_local %struct.TYPE_14__* @obj_textsec(i32*) #1

declare dso_local %struct.TYPE_14__* @obj_datasec(i32*) #1

declare dso_local %struct.TYPE_15__* @obj_bsssec(i32*) #1

declare dso_local i32 @bfd_get_symcount(i32*) #1

declare dso_local i32 @bfd_get_start_address(i32*) #1

declare dso_local i32 @bout_swap_exec_header_out(i32*, %struct.TYPE_16__*, %struct.external_exec*) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, i32*) #1

declare dso_local %struct.TYPE_13__** @bfd_get_outsymbols(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_13__**, i64, i32, i32) #1

declare dso_local i64 @N_SYMOFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aout_32_write_syms(i32*) #1

declare dso_local i64 @N_TROFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

declare dso_local i32 @b_out_squirt_out_relocs(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @N_DROFF(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
