; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block*, %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info* }
%struct.snd_gf1_bank_info = type { i32, i32 }
%struct.snd_gf1_mem_block = type { i32, i32, %struct.snd_gf1_mem_block*, i32, i32*, i64*, i64, i32, i32 }

@SNDRV_GF1_MEM_BLOCK_16BIT = common dso_local global i32 0, align 4
@SNDRV_GF1_MEM_OWNER_DRIVER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gf1_mem*, %struct.snd_gf1_mem_block*, i32, i32, i32)* @snd_gf1_mem_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_mem_find(%struct.snd_gf1_mem* %0, %struct.snd_gf1_mem_block* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_gf1_mem*, align 8
  %8 = alloca %struct.snd_gf1_mem_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_gf1_bank_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_gf1_mem_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_gf1_mem* %0, %struct.snd_gf1_mem** %7, align 8
  store %struct.snd_gf1_mem_block* %1, %struct.snd_gf1_mem_block** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %7, align 8
  %23 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %22, i32 0, i32 2
  %24 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %23, align 8
  br label %29

25:                                               ; preds = %5
  %26 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %7, align 8
  %27 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %26, i32 0, i32 1
  %28 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi %struct.snd_gf1_bank_info* [ %24, %21 ], [ %28, %25 ]
  store %struct.snd_gf1_bank_info* %30, %struct.snd_gf1_bank_info** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 2, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %33, %29
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SNDRV_GF1_MEM_BLOCK_16BIT, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %46 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @SNDRV_GF1_MEM_OWNER_DRIVER, align 4
  %48 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %49 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %51 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %53 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %52, i32 0, i32 5
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %57 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %61 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %60, i32 0, i32 5
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %65 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %64, i32 0, i32 5
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %69 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %71 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %70, i32 0, i32 2
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %71, align 8
  %72 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %73 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %72, i32 0, i32 3
  store i32 0, i32* %73, align 8
  %74 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %7, align 8
  %75 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %74, i32 0, i32 0
  %76 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %75, align 8
  store %struct.snd_gf1_mem_block* %76, %struct.snd_gf1_mem_block** %16, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %193, %43
  %78 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %79 = icmp ne %struct.snd_gf1_mem_block* %78, null
  br i1 %79, label %80, label %197

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %99, %80
  %82 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %83 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %85, i64 %87
  %89 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %91, i64 %93
  %95 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %90, %96
  store i32 %97, i32* %14, align 4
  %98 = icmp uge i32 %84, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %81

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %125, %102
  %104 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %105 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %108 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %106, %109
  %111 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %111, i64 %113
  %115 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %117, i64 %119
  %121 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %116, %122
  store i32 %123, i32* %14, align 4
  %124 = icmp uge i32 %110, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %103
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %103

128:                                              ; preds = %103
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %18, align 4
  %130 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %131 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %130, i32 0, i32 2
  %132 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %131, align 8
  %133 = icmp ne %struct.snd_gf1_mem_block* %132, null
  br i1 %133, label %134, label %164

134:                                              ; preds = %128
  %135 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %136 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %139 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %137, %140
  %142 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %143 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %142, i32 0, i32 2
  %144 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %143, align 8
  %145 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %141, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %193

149:                                              ; preds = %134
  %150 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %151 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %150, i32 0, i32 2
  %152 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %151, align 8
  %153 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %159 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %158, i32 0, i32 2
  %160 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %159, align 8
  %161 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %157, %149
  br label %164

164:                                              ; preds = %163, %128
  %165 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %166 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %169 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %167, %170
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @ALIGN(i32 %171, i32 %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp uge i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %164
  br label %193

178:                                              ; preds = %164
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %17, align 4
  %181 = sub i32 %179, %180
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load i32, i32* %17, align 4
  %187 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %188 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %191 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  store i32 0, i32* %6, align 4
  br label %227

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %177, %148
  %194 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %16, align 8
  %195 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %194, i32 0, i32 2
  %196 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %195, align 8
  store %struct.snd_gf1_mem_block* %196, %struct.snd_gf1_mem_block** %16, align 8
  br label %77

197:                                              ; preds = %77
  br label %198

198:                                              ; preds = %223, %197
  %199 = load i32, i32* %13, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %13, align 4
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %224

202:                                              ; preds = %198
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %205 = load i32, i32* %13, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %204, i64 %206
  %208 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ule i32 %203, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %202
  %212 = load %struct.snd_gf1_bank_info*, %struct.snd_gf1_bank_info** %12, align 8
  %213 = load i32, i32* %13, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %212, i64 %214
  %216 = getelementptr inbounds %struct.snd_gf1_bank_info, %struct.snd_gf1_bank_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %219 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %8, align 8
  %222 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  store i32 0, i32* %6, align 4
  br label %227

223:                                              ; preds = %202
  br label %198

224:                                              ; preds = %198
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %224, %211, %185
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
