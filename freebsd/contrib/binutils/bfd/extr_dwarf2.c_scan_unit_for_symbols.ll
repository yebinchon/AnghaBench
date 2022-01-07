; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_scan_unit_for_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_scan_unit_for_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32, i32*, i32, %struct.varinfo*, %struct.funcinfo*, i32, i32* }
%struct.varinfo = type { i64, i32, i64, i32, i8*, i32*, %struct.varinfo* }
%struct.funcinfo = type { i64, i64, i64, i32, i8*, i32*, i8*, %struct.funcinfo*, %struct.funcinfo* }
%struct.abbrev_info = type { i64, i32, i64, i32* }
%struct.attribute = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Dwarf Error: Could not find abbrev number %u.\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@DW_TAG_entry_point = common dso_local global i64 0, align 8
@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@DW_TAG_variable = common dso_local global i64 0, align 8
@DW_OP_addr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*)* @scan_unit_for_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_unit_for_symbols(%struct.comp_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comp_unit*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.funcinfo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.abbrev_info*, align 8
  %13 = alloca %struct.attribute, align 8
  %14 = alloca %struct.funcinfo*, align 8
  %15 = alloca %struct.varinfo*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.funcinfo**, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %3, align 8
  %21 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %4, align 8
  %24 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %25 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.funcinfo** @bfd_malloc(i32 %30)
  store %struct.funcinfo** %31, %struct.funcinfo*** %7, align 8
  %32 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %33 = icmp eq %struct.funcinfo** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %420

36:                                               ; preds = %1
  %37 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %37, i64 %39
  store %struct.funcinfo* null, %struct.funcinfo** %40, align 8
  br label %41

41:                                               ; preds = %415, %54, %36
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %416

44:                                               ; preds = %41
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @read_unsigned_leb128(i32* %45, i32* %46, i32* %10)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  br label %41

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %60 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.abbrev_info* @lookup_abbrev(i32 %58, i32 %61)
  store %struct.abbrev_info* %62, %struct.abbrev_info** %12, align 8
  %63 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %64 = icmp ne %struct.abbrev_info* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @_bfd_error_handler(i32 %66, i32 %67)
  %69 = load i32, i32* @bfd_error_bad_value, align 4
  %70 = call i32 @bfd_set_error(i32 %69)
  %71 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %72 = call i32 @free(%struct.funcinfo** %71)
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %2, align 4
  br label %420

74:                                               ; preds = %57
  store %struct.varinfo* null, %struct.varinfo** %15, align 8
  %75 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %76 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DW_TAG_subprogram, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %82 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DW_TAG_entry_point, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %88 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %86, %80, %74
  store i32 72, i32* %18, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i8* @bfd_zalloc(i32* %93, i32 %94)
  %96 = bitcast i8* %95 to %struct.funcinfo*
  store %struct.funcinfo* %96, %struct.funcinfo** %14, align 8
  %97 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %98 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %101 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %103 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %102, i32 0, i32 4
  %104 = load %struct.funcinfo*, %struct.funcinfo** %103, align 8
  %105 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %106 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %105, i32 0, i32 8
  store %struct.funcinfo* %104, %struct.funcinfo** %106, align 8
  %107 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %108 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %109 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %108, i32 0, i32 4
  store %struct.funcinfo* %107, %struct.funcinfo** %109, align 8
  %110 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %111 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %92
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %137, %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp uge i32 %119, 1
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %122, i64 %124
  %126 = load %struct.funcinfo*, %struct.funcinfo** %125, align 8
  %127 = icmp ne %struct.funcinfo* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %129, i64 %131
  %133 = load %struct.funcinfo*, %struct.funcinfo** %132, align 8
  %134 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %135 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %134, i32 0, i32 7
  store %struct.funcinfo* %133, %struct.funcinfo** %135, align 8
  br label %140

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %11, align 4
  br label %118

140:                                              ; preds = %128, %118
  br label %141

141:                                              ; preds = %140, %92
  %142 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %143 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %143, i64 %145
  store %struct.funcinfo* %142, %struct.funcinfo** %146, align 8
  br label %178

147:                                              ; preds = %86
  store %struct.funcinfo* null, %struct.funcinfo** %14, align 8
  %148 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %149 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DW_TAG_variable, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  store i32 56, i32* %19, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i8* @bfd_zalloc(i32* %154, i32 %155)
  %157 = bitcast i8* %156 to %struct.varinfo*
  store %struct.varinfo* %157, %struct.varinfo** %15, align 8
  %158 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %159 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %162 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %164 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %163, i32 0, i32 1
  store i32 1, i32* %164, align 8
  %165 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %166 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %165, i32 0, i32 3
  %167 = load %struct.varinfo*, %struct.varinfo** %166, align 8
  %168 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %169 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %168, i32 0, i32 6
  store %struct.varinfo* %167, %struct.varinfo** %169, align 8
  %170 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %171 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %172 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %171, i32 0, i32 3
  store %struct.varinfo* %170, %struct.varinfo** %172, align 8
  br label %173

173:                                              ; preds = %153, %147
  %174 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %174, i64 %176
  store %struct.funcinfo* null, %struct.funcinfo** %177, align 8
  br label %178

178:                                              ; preds = %173, %141
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %364, %178
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %182 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp ult i32 %180, %183
  br i1 %184, label %185, label %367

185:                                              ; preds = %179
  %186 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %187 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = call i32* @read_attribute(%struct.attribute* %13, i32* %191, %struct.comp_unit* %192, i32* %193)
  store i32* %194, i32** %5, align 8
  %195 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %196 = icmp ne %struct.funcinfo* %195, null
  br i1 %196, label %197, label %276

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  switch i32 %199, label %274 [
    i32 141, label %200
    i32 140, label %210
    i32 142, label %216
    i32 133, label %224
    i32 143, label %236
    i32 134, label %242
    i32 136, label %246
    i32 132, label %250
    i32 139, label %258
    i32 138, label %268
  ]

200:                                              ; preds = %197
  %201 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %202 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @concat_filename(i32 %203, i64 %206)
  %208 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %209 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %208, i32 0, i32 6
  store i8* %207, i8** %209, align 8
  br label %275

210:                                              ; preds = %197
  %211 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %215 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %214, i32 0, i32 1
  store i64 %213, i64* %215, align 8
  br label %275

216:                                              ; preds = %197
  %217 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %218 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32* @find_abstract_instance_name(%struct.comp_unit* %217, i64 %220)
  %222 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %223 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %222, i32 0, i32 5
  store i32* %221, i32** %223, align 8
  br label %275

224:                                              ; preds = %197
  %225 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %226 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %234 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %233, i32 0, i32 5
  store i32* %232, i32** %234, align 8
  br label %235

235:                                              ; preds = %229, %224
  br label %275

236:                                              ; preds = %197
  %237 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %241 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %240, i32 0, i32 5
  store i32* %239, i32** %241, align 8
  br label %275

242:                                              ; preds = %197
  %243 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %16, align 8
  br label %275

246:                                              ; preds = %197
  %247 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %17, align 8
  br label %275

250:                                              ; preds = %197
  %251 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %252 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %253 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @read_rangelist(%struct.comp_unit* %251, i32* %253, i64 %256)
  br label %275

258:                                              ; preds = %197
  %259 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %260 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i8* @concat_filename(i32 %261, i64 %264)
  %266 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %267 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %266, i32 0, i32 4
  store i8* %265, i8** %267, align 8
  br label %275

268:                                              ; preds = %197
  %269 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %273 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  br label %275

274:                                              ; preds = %197
  br label %275

275:                                              ; preds = %274, %268, %258, %250, %246, %242, %236, %235, %216, %210, %200
  br label %363

276:                                              ; preds = %185
  %277 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %278 = icmp ne %struct.varinfo* %277, null
  br i1 %278, label %279, label %362

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  switch i32 %281, label %360 [
    i32 133, label %282
    i32 139, label %288
    i32 138, label %298
    i32 137, label %304
    i32 135, label %313
  ]

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %287 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %286, i32 0, i32 5
  store i32* %285, i32** %287, align 8
  br label %361

288:                                              ; preds = %279
  %289 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %290 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i8* @concat_filename(i32 %291, i64 %294)
  %296 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %297 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  br label %361

298:                                              ; preds = %279
  %299 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %303 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %302, i32 0, i32 2
  store i64 %301, i64* %303, align 8
  br label %361

304:                                              ; preds = %279
  %305 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %311 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %310, i32 0, i32 1
  store i32 0, i32* %311, align 8
  br label %312

312:                                              ; preds = %309, %304
  br label %361

313:                                              ; preds = %279
  %314 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  switch i32 %315, label %358 [
    i32 131, label %316
    i32 130, label %316
    i32 129, label %316
    i32 128, label %316
  ]

316:                                              ; preds = %313, %313, %313, %313
  %317 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @DW_OP_addr, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %357

325:                                              ; preds = %316
  %326 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %327 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %326, i32 0, i32 1
  store i32 0, i32* %327, align 8
  %328 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %334 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = add i32 %335, 1
  %337 = icmp eq i32 %332, %336
  br i1 %337, label %338, label %356

338:                                              ; preds = %325
  %339 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %340 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = mul nsw i32 %341, 8
  %343 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %344 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = ptrtoint i32* %351 to i32
  %353 = call i32 @bfd_get(i32 %342, i32* %345, i32 %352)
  %354 = load %struct.varinfo*, %struct.varinfo** %15, align 8
  %355 = getelementptr inbounds %struct.varinfo, %struct.varinfo* %354, i32 0, i32 3
  store i32 %353, i32* %355, align 8
  br label %356

356:                                              ; preds = %338, %325
  br label %357

357:                                              ; preds = %356, %316
  br label %359

358:                                              ; preds = %313
  br label %359

359:                                              ; preds = %358, %357
  br label %361

360:                                              ; preds = %279
  br label %361

361:                                              ; preds = %360, %359, %312, %298, %288, %282
  br label %362

362:                                              ; preds = %361, %276
  br label %363

363:                                              ; preds = %362, %275
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %11, align 4
  %366 = add i32 %365, 1
  store i32 %366, i32* %11, align 4
  br label %179

367:                                              ; preds = %179
  %368 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %369 = icmp ne %struct.funcinfo* %368, null
  br i1 %369, label %370, label %382

370:                                              ; preds = %367
  %371 = load i64, i64* %17, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %370
  %374 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %375 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  %378 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %377, i32 0, i32 3
  %379 = load i64, i64* %16, align 8
  %380 = load i64, i64* %17, align 8
  %381 = call i32 @arange_add(i32* %376, i32* %378, i64 %379, i64 %380)
  br label %382

382:                                              ; preds = %373, %370, %367
  %383 = load %struct.abbrev_info*, %struct.abbrev_info** %12, align 8
  %384 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %415

387:                                              ; preds = %382
  %388 = load i32, i32* %6, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %6, align 4
  %390 = load i32, i32* %6, align 4
  %391 = load i32, i32* %8, align 4
  %392 = icmp sge i32 %390, %391
  br i1 %392, label %393, label %410

393:                                              ; preds = %387
  %394 = load i32, i32* %8, align 4
  %395 = mul nsw i32 %394, 2
  store i32 %395, i32* %8, align 4
  %396 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = mul i64 %398, 8
  %400 = trunc i64 %399 to i32
  %401 = call %struct.funcinfo** @bfd_realloc(%struct.funcinfo** %396, i32 %400)
  store %struct.funcinfo** %401, %struct.funcinfo*** %20, align 8
  %402 = load %struct.funcinfo**, %struct.funcinfo*** %20, align 8
  %403 = icmp eq %struct.funcinfo** %402, null
  br i1 %403, label %404, label %408

404:                                              ; preds = %393
  %405 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %406 = call i32 @free(%struct.funcinfo** %405)
  %407 = load i32, i32* @FALSE, align 4
  store i32 %407, i32* %2, align 4
  br label %420

408:                                              ; preds = %393
  %409 = load %struct.funcinfo**, %struct.funcinfo*** %20, align 8
  store %struct.funcinfo** %409, %struct.funcinfo*** %7, align 8
  br label %410

410:                                              ; preds = %408, %387
  %411 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %412 = load i32, i32* %6, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.funcinfo*, %struct.funcinfo** %411, i64 %413
  store %struct.funcinfo* null, %struct.funcinfo** %414, align 8
  br label %415

415:                                              ; preds = %410, %382
  br label %41

416:                                              ; preds = %41
  %417 = load %struct.funcinfo**, %struct.funcinfo*** %7, align 8
  %418 = call i32 @free(%struct.funcinfo** %417)
  %419 = load i32, i32* @TRUE, align 4
  store i32 %419, i32* %2, align 4
  br label %420

420:                                              ; preds = %416, %404, %65, %34
  %421 = load i32, i32* %2, align 4
  ret i32 %421
}

declare dso_local %struct.funcinfo** @bfd_malloc(i32) #1

declare dso_local i32 @read_unsigned_leb128(i32*, i32*, i32*) #1

declare dso_local %struct.abbrev_info* @lookup_abbrev(i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @free(%struct.funcinfo**) #1

declare dso_local i8* @bfd_zalloc(i32*, i32) #1

declare dso_local i32* @read_attribute(%struct.attribute*, i32*, %struct.comp_unit*, i32*) #1

declare dso_local i8* @concat_filename(i32, i64) #1

declare dso_local i32* @find_abstract_instance_name(%struct.comp_unit*, i64) #1

declare dso_local i32 @read_rangelist(%struct.comp_unit*, i32*, i64) #1

declare dso_local i32 @bfd_get(i32, i32*, i32) #1

declare dso_local i32 @arange_add(i32*, i32*, i64, i64) #1

declare dso_local %struct.funcinfo** @bfd_realloc(%struct.funcinfo**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
