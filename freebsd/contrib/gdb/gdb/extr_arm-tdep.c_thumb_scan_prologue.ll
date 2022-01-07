; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_scan_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_scan_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_prologue_cache = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.symtab_and_line = type { i64, i64 }

@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@THUMB_FP_REGNUM = common dso_local global i64 0, align 8
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.arm_prologue_cache*)* @thumb_scan_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thumb_scan_prologue(i64 %0, %struct.arm_prologue_cache* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.arm_prologue_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symtab_and_line, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.arm_prologue_cache* %1, %struct.arm_prologue_cache** %4, align 8
  store i32 0, i32* %9, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @find_pc_partial_function(i64 %18, i32* null, i64* %5, i64* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = call { i64, i64 } @find_pc_line(i64 %22, i32 0)
  %24 = bitcast %struct.symtab_and_line* %11 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* %6, align 8
  br label %43

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %11, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %32
  br label %47

44:                                               ; preds = %2
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 40
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @min(i64 %48, i64 %49)
  store i64 %50, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %59, %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %64 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %224, %62
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 7
  %73 = icmp ne i32 %72, 7
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %227

76:                                               ; preds = %74
  %77 = load i64, i64* %7, align 8
  %78 = call zeroext i16 @read_memory_unsigned_integer(i64 %77, i32 2)
  store i16 %78, i16* %12, align 2
  %79 = load i16, i16* %12, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 65024
  %82 = icmp eq i32 %81, 46080
  br i1 %82, label %83, label %132

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load i16, i16* %12, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 255
  %89 = load i16, i16* %12, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, 256
  %92 = shl i32 %91, 6
  %93 = or i32 %88, %92
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @ARM_LR_REGNUM, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %128, %83
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %106 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %106, align 8
  %109 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %110 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 0, %111
  %113 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %114 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %112, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %104, %98
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %13, align 4
  br label %95

131:                                              ; preds = %95
  br label %223

132:                                              ; preds = %76
  %133 = load i16, i16* %12, align 2
  %134 = zext i16 %133 to i32
  %135 = and i32 %134, 65280
  %136 = icmp eq i32 %135, 45056
  br i1 %136, label %137, label %168

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %224

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, 4
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load i16, i16* %12, align 2
  %147 = zext i16 %146 to i32
  %148 = and i32 %147, 127
  %149 = shl i32 %148, 2
  store i32 %149, i32* %14, align 4
  %150 = load i16, i16* %12, align 2
  %151 = zext i16 %150 to i32
  %152 = and i32 %151, 128
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %145
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %157 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %154, %145
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %165 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %222

168:                                              ; preds = %132
  %169 = load i16, i16* %12, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, 65280
  %172 = icmp eq i32 %171, 44800
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, 2
  store i32 %175, i32* %9, align 4
  %176 = load i64, i64* @THUMB_FP_REGNUM, align 8
  %177 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %178 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load i16, i16* %12, align 2
  %180 = zext i16 %179 to i32
  %181 = and i32 %180, 255
  %182 = shl i32 %181, 2
  %183 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %184 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %221

185:                                              ; preds = %168
  %186 = load i16, i16* %12, align 2
  %187 = zext i16 %186 to i32
  %188 = icmp eq i32 %187, 18031
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, 2
  store i32 %191, i32* %9, align 4
  %192 = load i64, i64* @THUMB_FP_REGNUM, align 8
  %193 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %194 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %196 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  %197 = load i32, i32* @ARM_SP_REGNUM, align 4
  %198 = load i64, i64* @THUMB_FP_REGNUM, align 8
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %198
  store i32 %197, i32* %199, align 4
  br label %220

200:                                              ; preds = %185
  %201 = load i16, i16* %12, align 2
  %202 = zext i16 %201 to i32
  %203 = and i32 %202, 65472
  %204 = icmp eq i32 %203, 17984
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load i16, i16* %12, align 2
  %207 = zext i16 %206 to i32
  %208 = and i32 %207, 7
  store i32 %208, i32* %16, align 4
  %209 = load i16, i16* %12, align 2
  %210 = zext i16 %209 to i32
  %211 = ashr i32 %210, 3
  %212 = and i32 %211, 7
  %213 = add nsw i32 %212, 8
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %216
  store i32 %214, i32* %217, align 4
  br label %219

218:                                              ; preds = %200
  br label %224

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %189
  br label %221

221:                                              ; preds = %220, %173
  br label %222

222:                                              ; preds = %221, %162
  br label %223

223:                                              ; preds = %222, %131
  br label %224

224:                                              ; preds = %223, %218, %141
  %225 = load i64, i64* %7, align 8
  %226 = add nsw i64 %225, 2
  store i64 %226, i64* %7, align 8
  br label %66

227:                                              ; preds = %74
  ret void
}

declare dso_local i64 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local { i64, i64 } @find_pc_line(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local zeroext i16 @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
