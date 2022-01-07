; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_return_value_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_return_value_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.return_value_word = type { i32, i32, i32, i32 }
%struct.gdbarch_tdep = type { i32 }
%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MIPS_FPU_TYPE = common dso_local global i64 0, align 8
@MIPS_FPU_DOUBLE = common dso_local global i64 0, align 8
@MIPS_FPU_SINGLE = common dso_local global i64 0, align 8
@FP_REGISTER_DOUBLE = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.return_value_word*, %struct.return_value_word*)* @return_value_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_value_location(%struct.type* %0, %struct.return_value_word* %1, %struct.return_value_word* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.return_value_word*, align 8
  %6 = alloca %struct.return_value_word*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gdbarch_tdep*, align 8
  %9 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.return_value_word* %1, %struct.return_value_word** %5, align 8
  store %struct.return_value_word* %2, %struct.return_value_word** %6, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @TYPE_LENGTH(%struct.type* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %12)
  store %struct.gdbarch_tdep* %13, %struct.gdbarch_tdep** %8, align 8
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_FLT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %137

18:                                               ; preds = %3
  %19 = load i64, i64* @MIPS_FPU_TYPE, align 8
  %20 = load i64, i64* @MIPS_FPU_DOUBLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %18
  %29 = load i64, i64* @MIPS_FPU_TYPE, align 8
  %30 = load i64, i64* @MIPS_FPU_SINGLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %137

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %137

35:                                               ; preds = %32, %25, %22
  %36 = load i32, i32* @FP_REGISTER_DOUBLE, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %96, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %96

41:                                               ; preds = %38
  %42 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %43 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 0
  %47 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %48 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %50 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 4
  %54 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %55 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %57 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %41
  %60 = load i32, i32* @current_gdbarch, align 4
  %61 = load i32, i32* @current_gdbarch, align 4
  %62 = call %struct.TYPE_2__* @mips_regnum(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @register_size(i32 %60, i32 %64)
  %66 = icmp eq i32 %65, 8
  br label %67

67:                                               ; preds = %59, %41
  %68 = phi i1 [ false, %41 ], [ %66, %59 ]
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 4, i32 0
  %71 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %72 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %74 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %77 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @current_gdbarch, align 4
  %79 = call %struct.TYPE_2__* @mips_regnum(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 0
  %83 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %84 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @current_gdbarch, align 4
  %86 = call %struct.TYPE_2__* @mips_regnum(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %91 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %93 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %92, i32 0, i32 3
  store i32 4, i32* %93, align 4
  %94 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %95 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %94, i32 0, i32 3
  store i32 4, i32* %95, align 4
  br label %136

96:                                               ; preds = %38, %35
  %97 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %98 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i32, i32* @current_gdbarch, align 4
  %102 = load i32, i32* @current_gdbarch, align 4
  %103 = call %struct.TYPE_2__* @mips_regnum(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @register_size(i32 %101, i32 %105)
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 4
  br label %111

111:                                              ; preds = %108, %100, %96
  %112 = phi i1 [ false, %100 ], [ false, %96 ], [ %110, %108 ]
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 4, i32 0
  %115 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %116 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @current_gdbarch, align 4
  %118 = call %struct.TYPE_2__* @mips_regnum(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %122 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %125 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %127 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %129 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %128, i32 0, i32 3
  store i32 0, i32* %129, align 4
  %130 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %131 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %133 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %132, i32 0, i32 0
  store i32 0, i32* %133, align 4
  %134 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %135 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %134, i32 0, i32 2
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %111, %67
  br label %276

137:                                              ; preds = %32, %28, %3
  store i32 2, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 0
  %140 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %141 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  %144 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %145 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %147 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %137
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %152 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %151)
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %156 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %155)
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %160 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %163 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %165 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %167 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %166, i32 0, i32 3
  store i32 0, i32* %167, align 4
  br label %246

168:                                              ; preds = %149, %137
  %169 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %170 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %218

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %175 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %174)
  %176 = icmp sgt i32 %173, %175
  br i1 %176, label %177, label %218

177:                                              ; preds = %172
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %180 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %179)
  %181 = mul nsw i32 %180, 2
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %177
  %184 = load %struct.type*, %struct.type** %4, align 8
  %185 = call i64 @TYPE_CODE(%struct.type* %184)
  %186 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load %struct.type*, %struct.type** %4, align 8
  %190 = call i64 @TYPE_CODE(%struct.type* %189)
  %191 = load i64, i64* @TYPE_CODE_UNION, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %218

193:                                              ; preds = %188, %183
  %194 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %195 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %194)
  %196 = mul nsw i32 2, %195
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %200 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %202 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %201)
  %203 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %204 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %202, %205
  %207 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %208 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %210 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %213 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %211, %214
  %216 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %217 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  br label %245

218:                                              ; preds = %188, %177, %172, %168
  %219 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %220 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %219, i32 0, i32 1
  store i32 0, i32* %220, align 4
  %221 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %222 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %225 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %224)
  %226 = icmp sgt i32 %223, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %218
  %228 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %229 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %228)
  %230 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %231 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %234 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %233)
  %235 = sub nsw i32 %232, %234
  %236 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %237 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  br label %244

238:                                              ; preds = %218
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %241 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %243 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %242, i32 0, i32 3
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %238, %227
  br label %245

245:                                              ; preds = %244, %193
  br label %246

246:                                              ; preds = %245, %154
  %247 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %248 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %268

250:                                              ; preds = %246
  %251 = load i32, i32* @current_gdbarch, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @register_size(i32 %251, i32 %252)
  %254 = icmp eq i32 %253, 8
  br i1 %254, label %255, label %268

255:                                              ; preds = %250
  %256 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %257 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %256)
  %258 = icmp eq i32 %257, 4
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  %260 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %261 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 4
  store i32 %263, i32* %261, align 4
  %264 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %265 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 4
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %259, %255, %250, %246
  %269 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %270 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %269, i32 0, i32 0
  store i32 0, i32* %270, align 4
  %271 = load %struct.return_value_word*, %struct.return_value_word** %6, align 8
  %272 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.return_value_word*, %struct.return_value_word** %5, align 8
  %275 = getelementptr inbounds %struct.return_value_word, %struct.return_value_word* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %268, %136
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
