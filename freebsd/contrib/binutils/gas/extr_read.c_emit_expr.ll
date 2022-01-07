; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_emit_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_emit_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broken_word = type { i8*, i64, i64, i64, i32, i32, i64, %struct.TYPE_12__*, i32, i64, %struct.broken_word* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32 }

@need_pass_2 = common dso_local global i64 0, align 8
@dot_value = common dso_local global i32 0, align 4
@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"attempt to store value in absolute section\00", align 1
@abs_section_offset = common dso_local global i32 0, align 4
@O_uminus = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@generic_bignum = common dso_local global i64* null, align 8
@LITTLENUM_MASK = common dso_local global i64 0, align 8
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i64 0, align 8
@O_absent = common dso_local global i64 0, align 8
@O_illegal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"zero assumed for missing expression\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"floating point number invalid\00", align 1
@O_register = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"register value used as expression\00", align 1
@O_subtract = common dso_local global i64 0, align 8
@broken_words = common dso_local global %struct.broken_word* null, align 8
@now_subseg = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_12__* null, align 8
@new_broken_words = common dso_local global i32 0, align 4
@BITS_PER_CHAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"value 0x%lx truncated to 0x%lx\00", align 1
@CHARS_PER_LITTLENUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"bignum truncated to %d bytes\00", align 1
@target_big_endian = common dso_local global i64 0, align 8
@BFD_RELOC_8 = common dso_local global i32 0, align 4
@BFD_RELOC_16 = common dso_local global i32 0, align 4
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"unsupported BFD relocation size %u\00", align 1
@dwarf_file_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_expr(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.broken_word*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %22 = load i64, i64* @need_pass_2, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %499

25:                                               ; preds = %2
  %26 = call i32 (...) @frag_now_fix()
  store i32 %26, i32* @dot_value, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i64 @check_eh_frame(%struct.TYPE_11__* %27, i32* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %499

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* @now_seg, align 8
  %36 = load i64, i64* @absolute_section, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @O_constant, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %38
  %48 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 (i32, ...) @as_bad(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @abs_section_offset, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* @abs_section_offset, align 4
  br label %499

54:                                               ; preds = %31
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @O_uminus, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %119

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_11__* @symbol_get_value_expression(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @O_big, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %63
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_11__* @symbol_get_value_expression(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.TYPE_11__* @symbol_get_value_expression(i32 %83)
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %3, align 8
  store i64 1, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %114, %80
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %85
  %92 = load i64*, i64** @generic_bignum, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LITTLENUM_MASK, align 8
  %98 = and i64 %96, %97
  %99 = xor i64 %98, -1
  %100 = load i64, i64* @LITTLENUM_MASK, align 8
  %101 = and i64 %99, %100
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @LITTLENUM_MASK, align 8
  %106 = and i64 %104, %105
  %107 = load i64*, i64** @generic_bignum, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %106, i64* %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %113 = lshr i64 %111, %112
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %91
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %85

117:                                              ; preds = %85
  store i32 -1, i32* %7, align 4
  %118 = load i64, i64* @O_big, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %72, %63, %58, %54
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @O_absent, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @O_illegal, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123, %119
  %128 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %129 = call i32 (i32, ...) @as_warn(i32 %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 8
  %132 = load i64, i64* @O_constant, align 8
  store i64 %132, i64* %5, align 8
  br label %158

133:                                              ; preds = %123
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @O_big, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %144 = call i32 (i32, ...) @as_bad(i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32 0, i32* %146, align 8
  %147 = load i64, i64* @O_constant, align 8
  store i64 %147, i64* %5, align 8
  br label %157

148:                                              ; preds = %137, %133
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @O_register, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %154 = call i32 (i32, ...) @as_warn(i32 %153)
  %155 = load i64, i64* @O_constant, align 8
  store i64 %155, i64* %5, align 8
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %142
  br label %158

158:                                              ; preds = %157, %127
  %159 = load i32, i32* %4, align 4
  %160 = call i8* @frag_more(i32 %159)
  store i8* %160, i8** %6, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @O_subtract, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %210

164:                                              ; preds = %158
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %210

167:                                              ; preds = %164
  %168 = call i64 @xmalloc(i32 80)
  %169 = inttoptr i64 %168 to %struct.broken_word*
  store %struct.broken_word* %169, %struct.broken_word** %11, align 8
  %170 = load %struct.broken_word*, %struct.broken_word** @broken_words, align 8
  %171 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %172 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %171, i32 0, i32 10
  store %struct.broken_word* %170, %struct.broken_word** %172, align 8
  %173 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  store %struct.broken_word* %173, %struct.broken_word** @broken_words, align 8
  %174 = load i64, i64* @now_seg, align 8
  %175 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %176 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %175, i32 0, i32 9
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* @now_subseg, align 4
  %178 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %179 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %181 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %182 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %181, i32 0, i32 7
  store %struct.TYPE_12__* %180, %struct.TYPE_12__** %182, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %185 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %187 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %186, i32 0, i32 6
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %192 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %197 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %203 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %205 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %204, i32 0, i32 3
  store i64 0, i64* %205, align 8
  %206 = load %struct.broken_word*, %struct.broken_word** %11, align 8
  %207 = getelementptr inbounds %struct.broken_word, %struct.broken_word* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  %208 = load i32, i32* @new_broken_words, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @new_broken_words, align 4
  br label %499

210:                                              ; preds = %164, %158
  %211 = load i64, i64* %5, align 8
  %212 = load i64, i64* @O_constant, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %210
  %215 = load i32, i32* %4, align 4
  %216 = zext i32 %215 to i64
  %217 = icmp ugt i64 %216, 4
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 0, i32 -1
  store i32 %224, i32* %7, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %226 = call i32 @convert_to_bignum(%struct.TYPE_11__* %225)
  %227 = load i64, i64* @O_big, align 8
  store i64 %227, i64* %5, align 8
  br label %228

228:                                              ; preds = %218, %214, %210
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* @O_constant, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %294

232:                                              ; preds = %228
  %233 = load i32, i32* %4, align 4
  %234 = zext i32 %233 to i64
  %235 = icmp uge i64 %234, 4
  br i1 %235, label %236, label %248

236:                                              ; preds = %232
  store i32 0, i32* %14, align 4
  %237 = load i32, i32* %4, align 4
  %238 = zext i32 %237 to i64
  %239 = icmp ugt i64 %238, 4
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store i32 0, i32* %15, align 4
  br label %247

241:                                              ; preds = %236
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @BITS_PER_CHAR, align 4
  %244 = mul i32 %242, %243
  %245 = sub i32 %244, 1
  %246 = shl i32 1, %245
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %241, %240
  br label %258

248:                                              ; preds = %232
  %249 = load i32, i32* @BITS_PER_CHAR, align 4
  %250 = load i32, i32* %4, align 4
  %251 = mul i32 %249, %250
  %252 = shl i32 -1, %251
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @BITS_PER_CHAR, align 4
  %255 = mul i32 %253, %254
  %256 = sub i32 %255, 1
  %257 = shl i32 1, %256
  store i32 %257, i32* %15, align 4
  br label %258

258:                                              ; preds = %248, %247
  %259 = load i32, i32* %14, align 4
  %260 = xor i32 %259, -1
  store i32 %260, i32* %16, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %16, align 4
  %266 = and i32 %264, %265
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %14, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %289

271:                                              ; preds = %258
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %14, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %15, align 4
  %280 = and i32 %278, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %277, %271
  %283 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %284 = load i32, i32* %12, align 4
  %285 = zext i32 %284 to i64
  %286 = load i32, i32* %13, align 4
  %287 = zext i32 %286 to i64
  %288 = call i32 (i32, ...) @as_warn(i32 %283, i64 %285, i64 %287)
  br label %289

289:                                              ; preds = %282, %277, %258
  %290 = load i8*, i8** %6, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %4, align 4
  %293 = call i32 @md_number_to_chars(i8* %290, i32 %291, i32 %292)
  br label %499

294:                                              ; preds = %228
  %295 = load i64, i64* %5, align 8
  %296 = load i64, i64* @O_big, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %467

298:                                              ; preds = %294
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %303 = mul i32 %301, %302
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %4, align 4
  %305 = load i32, i32* %17, align 4
  %306 = icmp ult i32 %304, %305
  br i1 %306, label %307, label %359

307:                                              ; preds = %298
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %310 = udiv i32 %308, %309
  store i32 %310, i32* %19, align 4
  %311 = load i32, i32* %19, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %347

313:                                              ; preds = %307
  store i64 0, i64* %20, align 8
  %314 = load i64*, i64** @generic_bignum, align 8
  %315 = load i32, i32* %19, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %314, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %321 = sub i64 %320, 1
  %322 = trunc i64 %321 to i32
  %323 = shl i32 1, %322
  %324 = sext i32 %323 to i64
  %325 = and i64 %319, %324
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %313
  store i64 -1, i64* %20, align 8
  br label %328

328:                                              ; preds = %327, %313
  br label %329

329:                                              ; preds = %345, %328
  %330 = load i32, i32* %19, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %19, align 4
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %329
  %337 = load i64*, i64** @generic_bignum, align 8
  %338 = load i32, i32* %19, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* %20, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %336
  br label %346

345:                                              ; preds = %336
  br label %329

346:                                              ; preds = %344, %329
  br label %347

347:                                              ; preds = %346, %307
  %348 = load i32, i32* %19, align 4
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %347
  %354 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %355 = load i32, i32* %4, align 4
  %356 = call i32 (i32, ...) @as_warn(i32 %354, i32 %355)
  br label %357

357:                                              ; preds = %353, %347
  %358 = load i32, i32* %4, align 4
  store i32 %358, i32* %17, align 4
  br label %359

359:                                              ; preds = %357, %298
  %360 = load i32, i32* %4, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %369

362:                                              ; preds = %359
  %363 = load i8*, i8** %6, align 8
  %364 = load i64*, i64** @generic_bignum, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 0
  %366 = load i64, i64* %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = call i32 @md_number_to_chars(i8* %363, i32 %367, i32 1)
  br label %499

369:                                              ; preds = %359
  %370 = load i32, i32* %4, align 4
  %371 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %372 = urem i32 %370, %371
  %373 = icmp eq i32 %372, 0
  %374 = zext i1 %373 to i32
  %375 = call i32 @know(i32 %374)
  %376 = load i64, i64* @target_big_endian, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %423

378:                                              ; preds = %369
  br label %379

379:                                              ; preds = %383, %378
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* %17, align 4
  %382 = icmp ugt i32 %380, %381
  br i1 %382, label %383, label %395

383:                                              ; preds = %379
  %384 = load i8*, i8** %6, align 8
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %387 = call i32 @md_number_to_chars(i8* %384, i32 %385, i32 %386)
  %388 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %389 = load i32, i32* %4, align 4
  %390 = sub i32 %389, %388
  store i32 %390, i32* %4, align 4
  %391 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %392 = load i8*, i8** %6, align 8
  %393 = zext i32 %391 to i64
  %394 = getelementptr inbounds i8, i8* %392, i64 %393
  store i8* %394, i8** %6, align 8
  br label %379

395:                                              ; preds = %379
  %396 = load i64*, i64** @generic_bignum, align 8
  %397 = load i32, i32* %17, align 4
  %398 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %399 = udiv i32 %397, %398
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i64, i64* %396, i64 %400
  store i64* %401, i64** %18, align 8
  br label %402

402:                                              ; preds = %406, %395
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %405 = icmp uge i32 %403, %404
  br i1 %405, label %406, label %422

406:                                              ; preds = %402
  %407 = load i64*, i64** %18, align 8
  %408 = getelementptr inbounds i64, i64* %407, i32 -1
  store i64* %408, i64** %18, align 8
  %409 = load i8*, i8** %6, align 8
  %410 = load i64*, i64** %18, align 8
  %411 = load i64, i64* %410, align 8
  %412 = trunc i64 %411 to i32
  %413 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %414 = call i32 @md_number_to_chars(i8* %409, i32 %412, i32 %413)
  %415 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %416 = load i32, i32* %17, align 4
  %417 = sub i32 %416, %415
  store i32 %417, i32* %17, align 4
  %418 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %419 = load i8*, i8** %6, align 8
  %420 = zext i32 %418 to i64
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8* %421, i8** %6, align 8
  br label %402

422:                                              ; preds = %402
  br label %466

423:                                              ; preds = %369
  %424 = load i64*, i64** @generic_bignum, align 8
  store i64* %424, i64** %18, align 8
  br label %425

425:                                              ; preds = %429, %423
  %426 = load i32, i32* %17, align 4
  %427 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %428 = icmp uge i32 %426, %427
  br i1 %428, label %429, label %448

429:                                              ; preds = %425
  %430 = load i8*, i8** %6, align 8
  %431 = load i64*, i64** %18, align 8
  %432 = load i64, i64* %431, align 8
  %433 = trunc i64 %432 to i32
  %434 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %435 = call i32 @md_number_to_chars(i8* %430, i32 %433, i32 %434)
  %436 = load i64*, i64** %18, align 8
  %437 = getelementptr inbounds i64, i64* %436, i32 1
  store i64* %437, i64** %18, align 8
  %438 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %439 = load i32, i32* %17, align 4
  %440 = sub i32 %439, %438
  store i32 %440, i32* %17, align 4
  %441 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %442 = load i8*, i8** %6, align 8
  %443 = zext i32 %441 to i64
  %444 = getelementptr inbounds i8, i8* %442, i64 %443
  store i8* %444, i8** %6, align 8
  %445 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %446 = load i32, i32* %4, align 4
  %447 = sub i32 %446, %445
  store i32 %447, i32* %4, align 4
  br label %425

448:                                              ; preds = %425
  br label %449

449:                                              ; preds = %453, %448
  %450 = load i32, i32* %4, align 4
  %451 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %452 = icmp uge i32 %450, %451
  br i1 %452, label %453, label %465

453:                                              ; preds = %449
  %454 = load i8*, i8** %6, align 8
  %455 = load i32, i32* %7, align 4
  %456 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %457 = call i32 @md_number_to_chars(i8* %454, i32 %455, i32 %456)
  %458 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %459 = load i32, i32* %4, align 4
  %460 = sub i32 %459, %458
  store i32 %460, i32* %4, align 4
  %461 = load i32, i32* @CHARS_PER_LITTLENUM, align 4
  %462 = load i8*, i8** %6, align 8
  %463 = zext i32 %461 to i64
  %464 = getelementptr inbounds i8, i8* %462, i64 %463
  store i8* %464, i8** %6, align 8
  br label %449

465:                                              ; preds = %449
  br label %466

466:                                              ; preds = %465, %422
  br label %498

467:                                              ; preds = %294
  %468 = load i8*, i8** %6, align 8
  %469 = load i32, i32* %4, align 4
  %470 = call i32 @memset(i8* %468, i32 0, i32 %469)
  %471 = load i32, i32* %4, align 4
  switch i32 %471, label %480 [
    i32 1, label %472
    i32 2, label %474
    i32 4, label %476
    i32 8, label %478
  ]

472:                                              ; preds = %467
  %473 = load i32, i32* @BFD_RELOC_8, align 4
  store i32 %473, i32* %21, align 4
  br label %485

474:                                              ; preds = %467
  %475 = load i32, i32* @BFD_RELOC_16, align 4
  store i32 %475, i32* %21, align 4
  br label %485

476:                                              ; preds = %467
  %477 = load i32, i32* @BFD_RELOC_32, align 4
  store i32 %477, i32* %21, align 4
  br label %485

478:                                              ; preds = %467
  %479 = load i32, i32* @BFD_RELOC_64, align 4
  store i32 %479, i32* %21, align 4
  br label %485

480:                                              ; preds = %467
  %481 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %482 = load i32, i32* %4, align 4
  %483 = call i32 (i32, ...) @as_bad(i32 %481, i32 %482)
  %484 = load i32, i32* @BFD_RELOC_32, align 4
  store i32 %484, i32* %21, align 4
  br label %485

485:                                              ; preds = %480, %478, %476, %474, %472
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %487 = load i8*, i8** %6, align 8
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %490 to i64
  %492 = sub i64 0, %491
  %493 = getelementptr inbounds i8, i8* %487, i64 %492
  %494 = load i32, i32* %4, align 4
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %496 = load i32, i32* %21, align 4
  %497 = call i32 @fix_new_exp(%struct.TYPE_12__* %486, i8* %493, i32 %494, %struct.TYPE_11__* %495, i32 0, i32 %496)
  br label %498

498:                                              ; preds = %485, %466
  br label %499

499:                                              ; preds = %24, %30, %50, %167, %362, %498, %289
  ret void
}

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i64 @check_eh_frame(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_11__* @symbol_get_value_expression(i32) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @convert_to_bignum(%struct.TYPE_11__*) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_12__*, i8*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
