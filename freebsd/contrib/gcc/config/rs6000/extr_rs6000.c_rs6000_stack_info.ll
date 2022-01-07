; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_stack_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_stack_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@rs6000_stack_info.info = internal global %struct.TYPE_8__ zeroinitializer, align 8
@TARGET_32BIT = common dso_local global i64 0, align 8
@TARGET_SPE = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_9__* null, align 8
@DEFAULT_ABI = common dso_local global i32 0, align 4
@TARGET_TOC = common dso_local global i64 0, align 8
@TARGET_MINIMAL_TOC = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@RS6000_PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@TARGET_SPE_ABI = common dso_local global i64 0, align 8
@LAST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@current_function_is_leaf = common dso_local global i32 0, align 4
@current_function_profile = common dso_local global i64 0, align 8
@TARGET_PROFILE_KERNEL = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@LINK_REGISTER_REGNUM = common dso_local global i64 0, align 8
@CR2_REGNO = common dso_local global i64 0, align 8
@CR3_REGNO = common dso_local global i64 0, align 8
@CR4_REGNO = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i64 0, align 8
@UNITS_PER_SPE_WORD = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@RS6000_SAVE_AREA = common dso_local global i32 0, align 4
@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@FRAME_GROWS_DOWNWARD = common dso_local global i64 0, align 8
@ABI_STACK_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@TARGET_ALTIVEC_ABI = common dso_local global i64 0, align 8
@TARGET_ALTIVEC_VRSAVE = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@TARGET_XCOFF = common dso_local global i64 0, align 8
@write_symbols = common dso_local global i64 0, align 8
@NO_DEBUG = common dso_local global i64 0, align 8
@TARGET_RELOCATABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* ()* @rs6000_stack_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @rs6000_stack_info() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* @rs6000_stack_info.info, %struct.TYPE_8__** %1, align 8
  %7 = load i64, i64* @TARGET_32BIT, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 4, i32 8
  store i32 %10, i32* %2, align 4
  %11 = call i32 @memset(%struct.TYPE_8__* @rs6000_stack_info.info, i32 0, i32 152)
  %12 = load i64, i64* @TARGET_SPE, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = call i64 (...) @spe_func_has_64bit_regs_p()
  %23 = add nsw i64 %22, 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %28, %0
  %38 = load i32, i32* @DEFAULT_ABI, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = call i32 (...) @first_reg_to_save()
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* @TARGET_TOC, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i64, i64* @TARGET_MINIMAL_TOC, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* @flag_pic, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @DEFAULT_ABI, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @flag_pic, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i32, i32* @DEFAULT_ABI, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %61, label %74

61:                                               ; preds = %58, %52, %46
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 4
  %70 = sub nsw i32 32, %69
  %71 = mul nsw i32 %68, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %83

74:                                               ; preds = %61, %58, %55
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 32, %78
  %80 = mul nsw i32 %75, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i64, i64* @TARGET_SPE_ABI, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86, %83
  %95 = call i32 (...) @first_fp_reg_to_save()
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 64, %100
  %102 = mul nsw i32 8, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = call i32 (...) @first_altivec_reg_to_save()
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @LAST_ALTIVEC_REGNO, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = mul nsw i32 16, %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @current_function_is_leaf, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %94
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cfun, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %119, %94
  %127 = phi i1 [ true, %94 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @DEFAULT_ABI, align 4
  %132 = icmp eq i32 %131, 131
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i64, i64* @current_function_profile, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @TARGET_PROFILE_KERNEL, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %136, %133, %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 64
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @FP_SAVE_INLINE(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %144, %139
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LAST_ALTIVEC_REGNO, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %170, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @DEFAULT_ABI, align 4
  %158 = icmp eq i32 %157, 128
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64, i64* @current_function_calls_alloca, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = call i64 (...) @rs6000_ra_ever_killed()
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167, %162, %159, %150, %144, %136
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 9
  store i32 1, i32* %172, align 8
  %173 = load i32*, i32** @regs_ever_live, align 8
  %174 = load i64, i64* @LINK_REGISTER_REGNUM, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 1, i32* %175, align 4
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32*, i32** @regs_ever_live, align 8
  %178 = load i64, i64* @CR2_REGNO, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %176
  %183 = load i32*, i32** @regs_ever_live, align 8
  %184 = load i64, i64* @CR3_REGNO, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load i32*, i32** @regs_ever_live, align 8
  %190 = load i64, i64* @CR4_REGNO, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %188, %182, %176
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 10
  store i32 1, i32* %196, align 4
  %197 = load i32, i32* @DEFAULT_ABI, align 4
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %2, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 11
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %194
  br label %204

204:                                              ; preds = %203, %188
  %205 = load i64, i64* @current_function_calls_eh_return, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %204
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %214, %207
  %209 = load i32, i32* %6, align 4
  %210 = call i64 @EH_RETURN_DATA_REGNO(i32 %209)
  %211 = load i64, i64* @INVALID_REGNUM, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %208

217:                                              ; preds = %208
  %218 = load i32, i32* %6, align 4
  %219 = load i64, i64* @TARGET_SPE_ABI, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @UNITS_PER_SPE_WORD, align 4
  br label %230

228:                                              ; preds = %221, %217
  %229 = load i32, i32* @UNITS_PER_WORD, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = mul i32 %218, %231
  store i32 %232, i32* %3, align 4
  br label %234

233:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %233, %230
  %235 = load i32, i32* %2, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 12
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @RS6000_SAVE_AREA, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 13
  store i32 %238, i32* %240, align 8
  %241 = call i32 (...) @get_frame_size()
  %242 = call i8* @RS6000_ALIGN(i32 %241, i32 8)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 14
  store i8* %242, i8** %244, align 8
  %245 = load i32, i32* @current_function_outgoing_args_size, align 4
  %246 = load i64, i64* @TARGET_ALTIVEC, align 8
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 16, i32 8
  %250 = call i8* @RS6000_ALIGN(i32 %245, i32 %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 15
  store i32 %251, i32* %253, align 8
  %254 = load i64, i64* @FRAME_GROWS_DOWNWARD, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %295

256:                                              ; preds = %234
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 13
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 14
  %262 = load i8*, i8** %261, align 8
  %263 = sext i32 %259 to i64
  %264 = getelementptr i8, i8* %262, i64 %263
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 15
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = getelementptr i8, i8* %264, i64 %268
  %270 = ptrtoint i8* %269 to i32
  %271 = load i32, i32* @ABI_STACK_BOUNDARY, align 4
  %272 = load i32, i32* @BITS_PER_UNIT, align 4
  %273 = sdiv i32 %271, %272
  %274 = call i8* @RS6000_ALIGN(i32 %270, i32 %273)
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 13
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 14
  %280 = load i8*, i8** %279, align 8
  %281 = sext i32 %277 to i64
  %282 = getelementptr i8, i8* %280, i64 %281
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 15
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr i8, i8* %282, i64 %286
  %288 = ptrtoint i8* %274 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 14
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr i8, i8* %293, i64 %290
  store i8* %294, i8** %292, align 8
  br label %295

295:                                              ; preds = %256, %234
  %296 = load i64, i64* @TARGET_SPE_ABI, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %295
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 32, %306
  %308 = mul nsw i32 8, %307
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 16
  store i32 %308, i32* %310, align 4
  br label %314

311:                                              ; preds = %298, %295
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 16
  store i32 0, i32* %313, align 4
  br label %314

314:                                              ; preds = %311, %303
  %315 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = call i64 (...) @compute_vrsave_mask()
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 17
  store i64 %318, i64* %320, align 8
  br label %324

321:                                              ; preds = %314
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 17
  store i64 0, i64* %323, align 8
  br label %324

324:                                              ; preds = %321, %317
  %325 = load i64, i64* @TARGET_ALTIVEC_VRSAVE, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 17
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 18
  store i32 4, i32* %334, align 8
  br label %338

335:                                              ; preds = %327, %324
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 18
  store i32 0, i32* %337, align 8
  br label %338

338:                                              ; preds = %335, %332
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %340 = call i32 @compute_save_world_info(%struct.TYPE_8__* %339)
  %341 = load i32, i32* @DEFAULT_ABI, align 4
  switch i32 %341, label %343 [
    i32 129, label %342
    i32 131, label %345
    i32 130, label %345
    i32 128, label %438
  ]

342:                                              ; preds = %338
  br label %343

343:                                              ; preds = %338, %342
  %344 = call i32 (...) @gcc_unreachable()
  br label %345

345:                                              ; preds = %338, %338, %343
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 0, %348
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 19
  store i32 %349, i32* %351, align 4
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 19
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %354, %357
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 20
  store i32 %358, i32* %360, align 8
  %361 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %422

363:                                              ; preds = %345
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 20
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 18
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %366, %369
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 21
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %363
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 21
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, 15
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 22
  store i32 %381, i32* %383, align 8
  br label %387

384:                                              ; preds = %363
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 22
  store i32 0, i32* %386, align 8
  br label %387

387:                                              ; preds = %384, %377
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 21
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 22
  %393 = load i32, i32* %392, align 8
  %394 = sub nsw i32 %390, %393
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = sub nsw i32 %394, %397
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 23
  store i32 %398, i32* %400, align 4
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 7
  %403 = load i32, i32* %402, align 8
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %387
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 23
  %408 = load i32, i32* %407, align 4
  %409 = srem i32 %408, 16
  %410 = icmp eq i32 %409, 0
  br label %411

411:                                              ; preds = %405, %387
  %412 = phi i1 [ true, %387 ], [ %410, %405 ]
  %413 = zext i1 %412 to i32
  %414 = call i32 @gcc_assert(i32 %413)
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 23
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %3, align 4
  %419 = sub nsw i32 %417, %418
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 24
  store i32 %419, i32* %421, align 8
  br label %430

422:                                              ; preds = %345
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 20
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* %3, align 4
  %427 = sub nsw i32 %425, %426
  %428 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %428, i32 0, i32 24
  store i32 %427, i32* %429, align 8
  br label %430

430:                                              ; preds = %422, %411
  %431 = load i32, i32* %2, align 4
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 25
  store i32 %431, i32* %433, align 4
  %434 = load i32, i32* %2, align 4
  %435 = mul nsw i32 2, %434
  %436 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 26
  store i32 %435, i32* %437, align 8
  br label %570

438:                                              ; preds = %338
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 8
  %442 = sub nsw i32 0, %441
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 19
  store i32 %442, i32* %444, align 4
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 19
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = sub nsw i32 %447, %450
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 20
  store i32 %451, i32* %453, align 8
  %454 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 20
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 11
  %459 = load i32, i32* %458, align 8
  %460 = sub nsw i32 %456, %459
  %461 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 25
  store i32 %460, i32* %462, align 4
  %463 = load i64, i64* @TARGET_SPE_ABI, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %506

465:                                              ; preds = %438
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %506

470:                                              ; preds = %465
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 16
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %470
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 25
  %478 = load i32, i32* %477, align 4
  %479 = sub nsw i32 0, %478
  %480 = srem i32 %479, 8
  %481 = sub nsw i32 8, %480
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 27
  store i32 %481, i32* %483, align 4
  br label %487

484:                                              ; preds = %470
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 27
  store i32 0, i32* %486, align 4
  br label %487

487:                                              ; preds = %484, %475
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 25
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 27
  %493 = load i32, i32* %492, align 4
  %494 = sub nsw i32 %490, %493
  %495 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i32 0, i32 16
  %497 = load i32, i32* %496, align 4
  %498 = sub nsw i32 %494, %497
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i32 0, i32 28
  store i32 %498, i32* %500, align 8
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 28
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 24
  store i32 %503, i32* %505, align 8
  br label %561

506:                                              ; preds = %465, %438
  %507 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %554

509:                                              ; preds = %506
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 25
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 18
  %515 = load i32, i32* %514, align 8
  %516 = sub nsw i32 %512, %515
  %517 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 21
  store i32 %516, i32* %518, align 4
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 7
  %521 = load i32, i32* %520, align 8
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %532

523:                                              ; preds = %509
  %524 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 21
  %526 = load i32, i32* %525, align 4
  %527 = sub nsw i32 0, %526
  %528 = srem i32 %527, 16
  %529 = sub nsw i32 16, %528
  %530 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 22
  store i32 %529, i32* %531, align 8
  br label %535

532:                                              ; preds = %509
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 22
  store i32 0, i32* %534, align 8
  br label %535

535:                                              ; preds = %532, %523
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 21
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 22
  %541 = load i32, i32* %540, align 8
  %542 = sub nsw i32 %538, %541
  %543 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %544 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %543, i32 0, i32 7
  %545 = load i32, i32* %544, align 8
  %546 = sub nsw i32 %542, %545
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 23
  store i32 %546, i32* %548, align 4
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 23
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 24
  store i32 %551, i32* %553, align 8
  br label %560

554:                                              ; preds = %506
  %555 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %555, i32 0, i32 25
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 24
  store i32 %557, i32* %559, align 8
  br label %560

560:                                              ; preds = %554, %535
  br label %561

561:                                              ; preds = %560, %487
  %562 = load i32, i32* %3, align 4
  %563 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %564 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %563, i32 0, i32 24
  %565 = load i32, i32* %564, align 8
  %566 = sub nsw i32 %565, %562
  store i32 %566, i32* %564, align 8
  %567 = load i32, i32* %2, align 4
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 26
  store i32 %567, i32* %569, align 8
  br label %570

570:                                              ; preds = %561, %430
  %571 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = load i32, i32* @DEFAULT_ABI, align 4
  %575 = icmp eq i32 %574, 130
  br label %576

576:                                              ; preds = %573, %570
  %577 = phi i1 [ true, %570 ], [ %575, %573 ]
  %578 = zext i1 %577 to i64
  %579 = select i1 %577, i32 16, i32 8
  store i32 %579, i32* %4, align 4
  %580 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %581 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %580, i32 0, i32 5
  %582 = load i32, i32* %581, align 8
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = add nsw i32 %582, %585
  %587 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i32 0, i32 7
  %589 = load i32, i32* %588, align 8
  %590 = add nsw i32 %586, %589
  %591 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 22
  %593 = load i32, i32* %592, align 8
  %594 = add nsw i32 %590, %593
  %595 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %596 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %595, i32 0, i32 16
  %597 = load i32, i32* %596, align 4
  %598 = add nsw i32 %594, %597
  %599 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 27
  %601 = load i32, i32* %600, align 4
  %602 = add nsw i32 %598, %601
  %603 = load i32, i32* %3, align 4
  %604 = add nsw i32 %602, %603
  %605 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %606 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %605, i32 0, i32 11
  %607 = load i32, i32* %606, align 8
  %608 = add nsw i32 %604, %607
  %609 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %609, i32 0, i32 18
  %611 = load i32, i32* %610, align 8
  %612 = add nsw i32 %608, %611
  %613 = load i32, i32* %4, align 4
  %614 = call i8* @RS6000_ALIGN(i32 %612, i32 %613)
  %615 = ptrtoint i8* %614 to i32
  %616 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 29
  store i32 %615, i32* %617, align 4
  %618 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %619 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %618, i32 0, i32 14
  %620 = load i8*, i8** %619, align 8
  %621 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %621, i32 0, i32 15
  %623 = load i32, i32* %622, align 8
  %624 = sext i32 %623 to i64
  %625 = getelementptr i8, i8* %620, i64 %624
  %626 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 29
  %628 = load i32, i32* %627, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr i8, i8* %625, i64 %629
  %631 = ptrtoint i8* %630 to i32
  store i32 %631, i32* %5, align 4
  %632 = load i32, i32* %5, align 4
  %633 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %634 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i32 0, i32 13
  %635 = load i32, i32* %634, align 8
  %636 = add nsw i32 %632, %635
  %637 = load i32, i32* @ABI_STACK_BOUNDARY, align 4
  %638 = load i32, i32* @BITS_PER_UNIT, align 4
  %639 = sdiv i32 %637, %638
  %640 = call i8* @RS6000_ALIGN(i32 %636, i32 %639)
  %641 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %642 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %641, i32 0, i32 31
  store i8* %640, i8** %642, align 8
  %643 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %643, i32 0, i32 8
  %645 = load i32, i32* %644, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %576
  %648 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %648, i32 0, i32 30
  store i32 1, i32* %649, align 8
  br label %688

650:                                              ; preds = %576
  %651 = load i32, i32* @DEFAULT_ABI, align 4
  %652 = icmp eq i32 %651, 128
  br i1 %652, label %653, label %659

653:                                              ; preds = %650
  %654 = load i32, i32* %5, align 4
  %655 = icmp ne i32 %654, 0
  %656 = zext i1 %655 to i32
  %657 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %658 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %657, i32 0, i32 30
  store i32 %656, i32* %658, align 8
  br label %687

659:                                              ; preds = %650
  %660 = load i64, i64* @frame_pointer_needed, align 8
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %664 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %663, i32 0, i32 30
  store i32 1, i32* %664, align 8
  br label %686

665:                                              ; preds = %659
  %666 = load i64, i64* @TARGET_XCOFF, align 8
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %675

668:                                              ; preds = %665
  %669 = load i64, i64* @write_symbols, align 8
  %670 = load i64, i64* @NO_DEBUG, align 8
  %671 = icmp ne i64 %669, %670
  br i1 %671, label %672, label %675

672:                                              ; preds = %668
  %673 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %674 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %673, i32 0, i32 30
  store i32 1, i32* %674, align 8
  br label %685

675:                                              ; preds = %668, %665
  %676 = load i32, i32* %5, align 4
  %677 = load i64, i64* @TARGET_32BIT, align 8
  %678 = icmp ne i64 %677, 0
  %679 = zext i1 %678 to i64
  %680 = select i1 %678, i32 220, i32 288
  %681 = icmp sgt i32 %676, %680
  %682 = zext i1 %681 to i32
  %683 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %684 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %683, i32 0, i32 30
  store i32 %682, i32* %684, align 8
  br label %685

685:                                              ; preds = %675, %672
  br label %686

686:                                              ; preds = %685, %662
  br label %687

687:                                              ; preds = %686, %653
  br label %688

688:                                              ; preds = %687, %647
  %689 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %690 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %689, i32 0, i32 5
  %691 = load i32, i32* %690, align 8
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %688
  %694 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %695 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %694, i32 0, i32 19
  store i32 0, i32* %695, align 4
  br label %696

696:                                              ; preds = %693, %688
  %697 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %698 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 8
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %704

701:                                              ; preds = %696
  %702 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %703 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %702, i32 0, i32 20
  store i32 0, i32* %703, align 8
  br label %704

704:                                              ; preds = %701, %696
  %705 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %712

707:                                              ; preds = %704
  %708 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %709 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %708, i32 0, i32 7
  %710 = load i32, i32* %709, align 8
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %715

712:                                              ; preds = %707, %704
  %713 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %714 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %713, i32 0, i32 23
  store i32 0, i32* %714, align 4
  br label %715

715:                                              ; preds = %712, %707
  %716 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %723

718:                                              ; preds = %715
  %719 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %720 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %719, i32 0, i32 17
  %721 = load i64, i64* %720, align 8
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %718, %715
  %724 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %725 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %724, i32 0, i32 21
  store i32 0, i32* %725, align 4
  br label %726

726:                                              ; preds = %723, %718
  %727 = load i64, i64* @TARGET_SPE_ABI, align 8
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %739

729:                                              ; preds = %726
  %730 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %731 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %730, i32 0, i32 0
  %732 = load i64, i64* %731, align 8
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %739, label %734

734:                                              ; preds = %729
  %735 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %736 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %735, i32 0, i32 16
  %737 = load i32, i32* %736, align 4
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %742

739:                                              ; preds = %734, %729, %726
  %740 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %741 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %740, i32 0, i32 28
  store i32 0, i32* %741, align 8
  br label %742

742:                                              ; preds = %739, %734
  %743 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %744 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %743, i32 0, i32 9
  %745 = load i32, i32* %744, align 8
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %750, label %747

747:                                              ; preds = %742
  %748 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %749 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %748, i32 0, i32 26
  store i32 0, i32* %749, align 8
  br label %750

750:                                              ; preds = %747, %742
  %751 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %752 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %751, i32 0, i32 10
  %753 = load i32, i32* %752, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %758, label %755

755:                                              ; preds = %750
  %756 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %757 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %756, i32 0, i32 25
  store i32 0, i32* %757, align 4
  br label %758

758:                                              ; preds = %755, %750
  %759 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %759
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @spe_func_has_64bit_regs_p(...) #1

declare dso_local i32 @first_reg_to_save(...) #1

declare dso_local i32 @first_fp_reg_to_save(...) #1

declare dso_local i32 @first_altivec_reg_to_save(...) #1

declare dso_local i32 @FP_SAVE_INLINE(i32) #1

declare dso_local i64 @rs6000_ra_ever_killed(...) #1

declare dso_local i64 @EH_RETURN_DATA_REGNO(i32) #1

declare dso_local i8* @RS6000_ALIGN(i32, i32) #1

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i64 @compute_vrsave_mask(...) #1

declare dso_local i32 @compute_save_world_info(%struct.TYPE_8__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
