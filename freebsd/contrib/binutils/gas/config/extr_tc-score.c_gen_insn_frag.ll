; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_gen_insn_frag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_gen_insn_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.score_it = type { i32, i32, i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@g_opt = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INSN_CLASS_PCE = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i64 0, align 8
@Insn_Type_PCE = common dso_local global i32 0, align 4
@INSN_CLASS_16 = common dso_local global i32 0, align 4
@INSN_CLASS_32 = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_9__* null, align 8
@BFD_RELOC_NONE = common dso_local global i64 0, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@RELAX_PAD_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.score_it*, %struct.score_it*)* @gen_insn_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_insn_frag(%struct.score_it* %0, %struct.score_it* %1) #0 {
  %3 = alloca %struct.score_it*, align 8
  %4 = alloca %struct.score_it*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.score_it*, align 8
  %10 = alloca %struct.score_it*, align 8
  %11 = alloca %struct.score_it, align 8
  %12 = alloca i32, align 4
  store %struct.score_it* %0, %struct.score_it** %3, align 8
  store %struct.score_it* %1, %struct.score_it** %4, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @g_opt, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.score_it*, %struct.score_it** %3, align 8
  store %struct.score_it* %15, %struct.score_it** %9, align 8
  %16 = load %struct.score_it*, %struct.score_it** %4, align 8
  store %struct.score_it* %16, %struct.score_it** %10, align 8
  %17 = load %struct.score_it*, %struct.score_it** %10, align 8
  %18 = icmp ne %struct.score_it* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @TRUE, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @FALSE, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %6, align 8
  %25 = load %struct.score_it*, %struct.score_it** %9, align 8
  %26 = call i32 @memcpy(%struct.score_it* %11, %struct.score_it* %25, i32 48)
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 32767
  %33 = shl i32 %32, 15
  %34 = load %struct.score_it*, %struct.score_it** %10, align 8
  %35 = getelementptr inbounds %struct.score_it, %struct.score_it* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 32767
  %38 = or i32 %33, %37
  %39 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @INSN_CLASS_PCE, align 4
  %43 = call i8* @adjust_paritybit(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 1
  store i32 32768, i32* %46, align 4
  %47 = load i64, i64* @INSN_SIZE, align 8
  %48 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @Insn_Type_PCE, align 4
  %51 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  br label %61

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @GET_INSN_CLASS(i32 %56)
  %58 = call i8* @adjust_paritybit(i32 %54, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %29
  %62 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @INSN_SIZE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @INSN_CLASS_16, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @INSN_CLASS_32, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %12, align 4
  %76 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i8* @adjust_paritybit(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %61
  %83 = call i32 @handle_dependency(%struct.score_it* %11)
  %84 = call i64 (...) @frag_now_fix()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %94 = call i32 @frag_wane(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = call i32 @frag_new(i32 0)
  br label %97

97:                                               ; preds = %95, %82
  %98 = call i32 @frag_grow(i32 20)
  %99 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @frag_more(i64 %100)
  store i8* %101, i8** %5, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @md_number_to_chars(i8* %102, i32 %104, i32 %107)
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %179

111:                                              ; preds = %97
  %112 = load %struct.score_it*, %struct.score_it** %9, align 8
  %113 = getelementptr inbounds %struct.score_it, %struct.score_it* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @BFD_RELOC_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %111
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %120 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.score_it*, %struct.score_it** %9, align 8
  %129 = getelementptr inbounds %struct.score_it, %struct.score_it* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.score_it*, %struct.score_it** %9, align 8
  %133 = getelementptr inbounds %struct.score_it, %struct.score_it* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.score_it*, %struct.score_it** %9, align 8
  %136 = getelementptr inbounds %struct.score_it, %struct.score_it* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.score_it*, %struct.score_it** %9, align 8
  %140 = getelementptr inbounds %struct.score_it, %struct.score_it* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @fix_new_score(%struct.TYPE_9__* %119, i32 %127, i32 %131, %struct.TYPE_10__* %134, i32 %138, i64 %142)
  br label %144

144:                                              ; preds = %118, %111
  %145 = load %struct.score_it*, %struct.score_it** %10, align 8
  %146 = getelementptr inbounds %struct.score_it, %struct.score_it* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @BFD_RELOC_NONE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %178

151:                                              ; preds = %144
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %153 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = add nsw i64 %159, 2
  %161 = trunc i64 %160 to i32
  %162 = load %struct.score_it*, %struct.score_it** %10, align 8
  %163 = getelementptr inbounds %struct.score_it, %struct.score_it* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.score_it*, %struct.score_it** %10, align 8
  %167 = getelementptr inbounds %struct.score_it, %struct.score_it* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load %struct.score_it*, %struct.score_it** %10, align 8
  %170 = getelementptr inbounds %struct.score_it, %struct.score_it* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.score_it*, %struct.score_it** %10, align 8
  %174 = getelementptr inbounds %struct.score_it, %struct.score_it* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @fix_new_score(%struct.TYPE_9__* %152, i32 %161, i32 %165, %struct.TYPE_10__* %168, i32 %172, i64 %176)
  br label %178

178:                                              ; preds = %151, %144
  br label %208

179:                                              ; preds = %97
  %180 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @BFD_RELOC_NONE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %179
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = ptrtoint i8* %187 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @fix_new_score(%struct.TYPE_9__* %186, i32 %194, i32 %197, %struct.TYPE_10__* %199, i32 %202, i64 %205)
  br label %207

207:                                              ; preds = %185, %179
  br label %208

208:                                              ; preds = %207, %178
  %209 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %7, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  br label %221

220:                                              ; preds = %208
  br label %221

221:                                              ; preds = %220, %217
  %222 = phi i32 [ %219, %217 ], [ 0, %220 ]
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* @rs_machine_dependent, align 4
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* @RELAX_PAD_BYTE, align 8
  %227 = add nsw i64 %225, %226
  %228 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @RELAX_ENCODE(i32 %230, i32 %232, i32 %234, i32 0, i32 0, i32 %235)
  %237 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @frag_var(i32 %223, i64 %227, i32 0, i32 %236, i32 %240, i32 0, i32* null)
  store i8* %241, i8** %5, align 8
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %221
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds %struct.score_it, %struct.score_it* %11, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @md_number_to_chars(i8* %245, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %244, %221
  %251 = load %struct.score_it*, %struct.score_it** %9, align 8
  %252 = call i32 @memcpy(%struct.score_it* %251, %struct.score_it* %11, i32 48)
  ret void
}

declare dso_local i32 @memcpy(%struct.score_it*, %struct.score_it*, i32) #1

declare dso_local i8* @adjust_paritybit(i32, i32) #1

declare dso_local i32 @GET_INSN_CLASS(i32) #1

declare dso_local i32 @handle_dependency(%struct.score_it*) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @frag_wane(%struct.TYPE_9__*) #1

declare dso_local i32 @frag_new(i32) #1

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i8* @frag_more(i64) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @fix_new_score(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__*, i32, i64) #1

declare dso_local i8* @frag_var(i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RELAX_ENCODE(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
