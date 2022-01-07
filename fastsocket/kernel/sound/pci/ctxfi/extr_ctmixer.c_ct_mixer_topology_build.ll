; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_topology_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_topology_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.sum**, %struct.amixer** }
%struct.sum = type { i32 }
%struct.amixer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.amixer*, i32*, i32, %struct.sum*)* }

@AMIXER_MASTER_F = common dso_local global i32 0, align 4
@SUM_IN_F = common dso_local global i32 0, align 4
@AMIXER_MASTER_S = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@INIT_VOL = common dso_local global i32 0, align 4
@AMIXER_WAVE_F = common dso_local global i32 0, align 4
@AMIXER_WAVE_S = common dso_local global i32 0, align 4
@AMIXER_SPDIFO = common dso_local global i32 0, align 4
@AMIXER_PCM_F = common dso_local global i32 0, align 4
@AMIXER_PCM_S = common dso_local global i32 0, align 4
@AMIXER_LINEIN = common dso_local global i32 0, align 4
@AMIXER_MIC = common dso_local global i32 0, align 4
@AMIXER_SPDIFI = common dso_local global i32 0, align 4
@AMIXER_MASTER_F_C = common dso_local global i32 0, align 4
@SUM_IN_F_C = common dso_local global i32 0, align 4
@AMIXER_PCM_F_C = common dso_local global i32 0, align 4
@AMIXER_LINEIN_C = common dso_local global i32 0, align 4
@AMIXER_MIC_C = common dso_local global i32 0, align 4
@AMIXER_SPDIFI_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*)* @ct_mixer_topology_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_topology_build(%struct.ct_mixer* %0) #0 {
  %2 = alloca %struct.ct_mixer*, align 8
  %3 = alloca %struct.sum*, align 8
  %4 = alloca %struct.amixer*, align 8
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %2, align 8
  %8 = load i32, i32* @AMIXER_MASTER_F, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @SUM_IN_F, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %73, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AMIXER_MASTER_S, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %16 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %15, i32 0, i32 1
  %17 = load %struct.amixer**, %struct.amixer*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CHN_NUM, align 4
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.amixer*, %struct.amixer** %17, i64 %21
  %23 = load %struct.amixer*, %struct.amixer** %22, align 8
  store %struct.amixer* %23, %struct.amixer** %4, align 8
  %24 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %25 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %24, i32 0, i32 0
  %26 = load %struct.sum**, %struct.sum*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CHN_NUM, align 4
  %29 = mul i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sum*, %struct.sum** %26, i64 %30
  %32 = load %struct.sum*, %struct.sum** %31, align 8
  store %struct.sum* %32, %struct.sum** %3, align 8
  %33 = load %struct.amixer*, %struct.amixer** %4, align 8
  %34 = getelementptr inbounds %struct.amixer, %struct.amixer* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %36, align 8
  %38 = load %struct.amixer*, %struct.amixer** %4, align 8
  %39 = load %struct.sum*, %struct.sum** %3, align 8
  %40 = getelementptr inbounds %struct.sum, %struct.sum* %39, i32 0, i32 0
  %41 = load i32, i32* @INIT_VOL, align 4
  %42 = call i32 %37(%struct.amixer* %38, i32* %40, i32 %41, %struct.sum* null)
  %43 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %44 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %43, i32 0, i32 1
  %45 = load %struct.amixer**, %struct.amixer*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CHN_NUM, align 4
  %48 = mul i32 %46, %47
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.amixer*, %struct.amixer** %45, i64 %50
  %52 = load %struct.amixer*, %struct.amixer** %51, align 8
  store %struct.amixer* %52, %struct.amixer** %4, align 8
  %53 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %54 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %53, i32 0, i32 0
  %55 = load %struct.sum**, %struct.sum*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CHN_NUM, align 4
  %58 = mul i32 %56, %57
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sum*, %struct.sum** %55, i64 %60
  %62 = load %struct.sum*, %struct.sum** %61, align 8
  store %struct.sum* %62, %struct.sum** %3, align 8
  %63 = load %struct.amixer*, %struct.amixer** %4, align 8
  %64 = getelementptr inbounds %struct.amixer, %struct.amixer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %66, align 8
  %68 = load %struct.amixer*, %struct.amixer** %4, align 8
  %69 = load %struct.sum*, %struct.sum** %3, align 8
  %70 = getelementptr inbounds %struct.sum, %struct.sum* %69, i32 0, i32 0
  %71 = load i32, i32* @INIT_VOL, align 4
  %72 = call i32 %67(%struct.amixer* %68, i32* %70, i32 %71, %struct.sum* null)
  br label %73

73:                                               ; preds = %14
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %10

78:                                               ; preds = %10
  %79 = load i32, i32* @AMIXER_WAVE_F, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @AMIXER_MASTER_F, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %144, %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @AMIXER_WAVE_S, align 4
  %84 = icmp ule i32 %82, %83
  br i1 %84, label %85, label %149

85:                                               ; preds = %81
  %86 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %87 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %86, i32 0, i32 1
  %88 = load %struct.amixer**, %struct.amixer*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @CHN_NUM, align 4
  %91 = mul i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.amixer*, %struct.amixer** %88, i64 %92
  %94 = load %struct.amixer*, %struct.amixer** %93, align 8
  store %struct.amixer* %94, %struct.amixer** %4, align 8
  %95 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %96 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %95, i32 0, i32 1
  %97 = load %struct.amixer**, %struct.amixer*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @CHN_NUM, align 4
  %100 = mul i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.amixer*, %struct.amixer** %97, i64 %101
  %103 = load %struct.amixer*, %struct.amixer** %102, align 8
  store %struct.amixer* %103, %struct.amixer** %5, align 8
  %104 = load %struct.amixer*, %struct.amixer** %4, align 8
  %105 = getelementptr inbounds %struct.amixer, %struct.amixer* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %107, align 8
  %109 = load %struct.amixer*, %struct.amixer** %4, align 8
  %110 = load %struct.amixer*, %struct.amixer** %5, align 8
  %111 = getelementptr inbounds %struct.amixer, %struct.amixer* %110, i32 0, i32 1
  %112 = load i32, i32* @INIT_VOL, align 4
  %113 = call i32 %108(%struct.amixer* %109, i32* %111, i32 %112, %struct.sum* null)
  %114 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %115 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %114, i32 0, i32 1
  %116 = load %struct.amixer**, %struct.amixer*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @CHN_NUM, align 4
  %119 = mul i32 %117, %118
  %120 = add i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.amixer*, %struct.amixer** %116, i64 %121
  %123 = load %struct.amixer*, %struct.amixer** %122, align 8
  store %struct.amixer* %123, %struct.amixer** %4, align 8
  %124 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %125 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %124, i32 0, i32 1
  %126 = load %struct.amixer**, %struct.amixer*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CHN_NUM, align 4
  %129 = mul i32 %127, %128
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.amixer*, %struct.amixer** %126, i64 %131
  %133 = load %struct.amixer*, %struct.amixer** %132, align 8
  store %struct.amixer* %133, %struct.amixer** %5, align 8
  %134 = load %struct.amixer*, %struct.amixer** %4, align 8
  %135 = getelementptr inbounds %struct.amixer, %struct.amixer* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %137, align 8
  %139 = load %struct.amixer*, %struct.amixer** %4, align 8
  %140 = load %struct.amixer*, %struct.amixer** %5, align 8
  %141 = getelementptr inbounds %struct.amixer, %struct.amixer* %140, i32 0, i32 1
  %142 = load i32, i32* @INIT_VOL, align 4
  %143 = call i32 %138(%struct.amixer* %139, i32* %141, i32 %142, %struct.sum* null)
  br label %144

144:                                              ; preds = %85
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %81

149:                                              ; preds = %81
  %150 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %151 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %150, i32 0, i32 1
  %152 = load %struct.amixer**, %struct.amixer*** %151, align 8
  %153 = load i32, i32* @AMIXER_SPDIFO, align 4
  %154 = load i32, i32* @CHN_NUM, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.amixer*, %struct.amixer** %152, i64 %156
  %158 = load %struct.amixer*, %struct.amixer** %157, align 8
  store %struct.amixer* %158, %struct.amixer** %4, align 8
  %159 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %160 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %159, i32 0, i32 1
  %161 = load %struct.amixer**, %struct.amixer*** %160, align 8
  %162 = load i32, i32* @AMIXER_MASTER_F, align 4
  %163 = load i32, i32* @CHN_NUM, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.amixer*, %struct.amixer** %161, i64 %165
  %167 = load %struct.amixer*, %struct.amixer** %166, align 8
  store %struct.amixer* %167, %struct.amixer** %5, align 8
  %168 = load %struct.amixer*, %struct.amixer** %4, align 8
  %169 = getelementptr inbounds %struct.amixer, %struct.amixer* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %171, align 8
  %173 = load %struct.amixer*, %struct.amixer** %4, align 8
  %174 = load %struct.amixer*, %struct.amixer** %5, align 8
  %175 = getelementptr inbounds %struct.amixer, %struct.amixer* %174, i32 0, i32 1
  %176 = load i32, i32* @INIT_VOL, align 4
  %177 = call i32 %172(%struct.amixer* %173, i32* %175, i32 %176, %struct.sum* null)
  %178 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %179 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %178, i32 0, i32 1
  %180 = load %struct.amixer**, %struct.amixer*** %179, align 8
  %181 = load i32, i32* @AMIXER_SPDIFO, align 4
  %182 = load i32, i32* @CHN_NUM, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.amixer*, %struct.amixer** %180, i64 %185
  %187 = load %struct.amixer*, %struct.amixer** %186, align 8
  store %struct.amixer* %187, %struct.amixer** %4, align 8
  %188 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %189 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %188, i32 0, i32 1
  %190 = load %struct.amixer**, %struct.amixer*** %189, align 8
  %191 = load i32, i32* @AMIXER_MASTER_F, align 4
  %192 = load i32, i32* @CHN_NUM, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.amixer*, %struct.amixer** %190, i64 %195
  %197 = load %struct.amixer*, %struct.amixer** %196, align 8
  store %struct.amixer* %197, %struct.amixer** %5, align 8
  %198 = load %struct.amixer*, %struct.amixer** %4, align 8
  %199 = getelementptr inbounds %struct.amixer, %struct.amixer* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %201, align 8
  %203 = load %struct.amixer*, %struct.amixer** %4, align 8
  %204 = load %struct.amixer*, %struct.amixer** %5, align 8
  %205 = getelementptr inbounds %struct.amixer, %struct.amixer* %204, i32 0, i32 1
  %206 = load i32, i32* @INIT_VOL, align 4
  %207 = call i32 %202(%struct.amixer* %203, i32* %205, i32 %206, %struct.sum* null)
  %208 = load i32, i32* @AMIXER_PCM_F, align 4
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* @SUM_IN_F, align 4
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %271, %149
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @AMIXER_PCM_S, align 4
  %213 = icmp ule i32 %211, %212
  br i1 %213, label %214, label %276

214:                                              ; preds = %210
  %215 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %216 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %215, i32 0, i32 1
  %217 = load %struct.amixer**, %struct.amixer*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @CHN_NUM, align 4
  %220 = mul i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.amixer*, %struct.amixer** %217, i64 %221
  %223 = load %struct.amixer*, %struct.amixer** %222, align 8
  store %struct.amixer* %223, %struct.amixer** %4, align 8
  %224 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %225 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %224, i32 0, i32 0
  %226 = load %struct.sum**, %struct.sum*** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @CHN_NUM, align 4
  %229 = mul i32 %227, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.sum*, %struct.sum** %226, i64 %230
  %232 = load %struct.sum*, %struct.sum** %231, align 8
  store %struct.sum* %232, %struct.sum** %3, align 8
  %233 = load %struct.amixer*, %struct.amixer** %4, align 8
  %234 = getelementptr inbounds %struct.amixer, %struct.amixer* %233, i32 0, i32 0
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %236, align 8
  %238 = load %struct.amixer*, %struct.amixer** %4, align 8
  %239 = load i32, i32* @INIT_VOL, align 4
  %240 = load %struct.sum*, %struct.sum** %3, align 8
  %241 = call i32 %237(%struct.amixer* %238, i32* null, i32 %239, %struct.sum* %240)
  %242 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %243 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %242, i32 0, i32 1
  %244 = load %struct.amixer**, %struct.amixer*** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @CHN_NUM, align 4
  %247 = mul i32 %245, %246
  %248 = add i32 %247, 1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.amixer*, %struct.amixer** %244, i64 %249
  %251 = load %struct.amixer*, %struct.amixer** %250, align 8
  store %struct.amixer* %251, %struct.amixer** %4, align 8
  %252 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %253 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %252, i32 0, i32 0
  %254 = load %struct.sum**, %struct.sum*** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @CHN_NUM, align 4
  %257 = mul i32 %255, %256
  %258 = add i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.sum*, %struct.sum** %254, i64 %259
  %261 = load %struct.sum*, %struct.sum** %260, align 8
  store %struct.sum* %261, %struct.sum** %3, align 8
  %262 = load %struct.amixer*, %struct.amixer** %4, align 8
  %263 = getelementptr inbounds %struct.amixer, %struct.amixer* %262, i32 0, i32 0
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %265, align 8
  %267 = load %struct.amixer*, %struct.amixer** %4, align 8
  %268 = load i32, i32* @INIT_VOL, align 4
  %269 = load %struct.sum*, %struct.sum** %3, align 8
  %270 = call i32 %266(%struct.amixer* %267, i32* null, i32 %268, %struct.sum* %269)
  br label %271

271:                                              ; preds = %214
  %272 = load i32, i32* %6, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %7, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %7, align 4
  br label %210

276:                                              ; preds = %210
  %277 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %278 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %277, i32 0, i32 1
  %279 = load %struct.amixer**, %struct.amixer*** %278, align 8
  %280 = load i32, i32* @AMIXER_LINEIN, align 4
  %281 = load i32, i32* @CHN_NUM, align 4
  %282 = mul nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.amixer*, %struct.amixer** %279, i64 %283
  %285 = load %struct.amixer*, %struct.amixer** %284, align 8
  store %struct.amixer* %285, %struct.amixer** %4, align 8
  %286 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %287 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %286, i32 0, i32 0
  %288 = load %struct.sum**, %struct.sum*** %287, align 8
  %289 = load i32, i32* @SUM_IN_F, align 4
  %290 = load i32, i32* @CHN_NUM, align 4
  %291 = mul nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.sum*, %struct.sum** %288, i64 %292
  %294 = load %struct.sum*, %struct.sum** %293, align 8
  store %struct.sum* %294, %struct.sum** %3, align 8
  %295 = load %struct.amixer*, %struct.amixer** %4, align 8
  %296 = getelementptr inbounds %struct.amixer, %struct.amixer* %295, i32 0, i32 0
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %298, align 8
  %300 = load %struct.amixer*, %struct.amixer** %4, align 8
  %301 = load i32, i32* @INIT_VOL, align 4
  %302 = load %struct.sum*, %struct.sum** %3, align 8
  %303 = call i32 %299(%struct.amixer* %300, i32* null, i32 %301, %struct.sum* %302)
  %304 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %305 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %304, i32 0, i32 1
  %306 = load %struct.amixer**, %struct.amixer*** %305, align 8
  %307 = load i32, i32* @AMIXER_LINEIN, align 4
  %308 = load i32, i32* @CHN_NUM, align 4
  %309 = mul nsw i32 %307, %308
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.amixer*, %struct.amixer** %306, i64 %311
  %313 = load %struct.amixer*, %struct.amixer** %312, align 8
  store %struct.amixer* %313, %struct.amixer** %4, align 8
  %314 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %315 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %314, i32 0, i32 0
  %316 = load %struct.sum**, %struct.sum*** %315, align 8
  %317 = load i32, i32* @SUM_IN_F, align 4
  %318 = load i32, i32* @CHN_NUM, align 4
  %319 = mul nsw i32 %317, %318
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.sum*, %struct.sum** %316, i64 %321
  %323 = load %struct.sum*, %struct.sum** %322, align 8
  store %struct.sum* %323, %struct.sum** %3, align 8
  %324 = load %struct.amixer*, %struct.amixer** %4, align 8
  %325 = getelementptr inbounds %struct.amixer, %struct.amixer* %324, i32 0, i32 0
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %327, align 8
  %329 = load %struct.amixer*, %struct.amixer** %4, align 8
  %330 = load i32, i32* @INIT_VOL, align 4
  %331 = load %struct.sum*, %struct.sum** %3, align 8
  %332 = call i32 %328(%struct.amixer* %329, i32* null, i32 %330, %struct.sum* %331)
  %333 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %334 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %333, i32 0, i32 1
  %335 = load %struct.amixer**, %struct.amixer*** %334, align 8
  %336 = load i32, i32* @AMIXER_MIC, align 4
  %337 = load i32, i32* @CHN_NUM, align 4
  %338 = mul nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.amixer*, %struct.amixer** %335, i64 %339
  %341 = load %struct.amixer*, %struct.amixer** %340, align 8
  store %struct.amixer* %341, %struct.amixer** %4, align 8
  %342 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %343 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %342, i32 0, i32 0
  %344 = load %struct.sum**, %struct.sum*** %343, align 8
  %345 = load i32, i32* @SUM_IN_F, align 4
  %346 = load i32, i32* @CHN_NUM, align 4
  %347 = mul nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.sum*, %struct.sum** %344, i64 %348
  %350 = load %struct.sum*, %struct.sum** %349, align 8
  store %struct.sum* %350, %struct.sum** %3, align 8
  %351 = load %struct.amixer*, %struct.amixer** %4, align 8
  %352 = getelementptr inbounds %struct.amixer, %struct.amixer* %351, i32 0, i32 0
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %354, align 8
  %356 = load %struct.amixer*, %struct.amixer** %4, align 8
  %357 = load i32, i32* @INIT_VOL, align 4
  %358 = load %struct.sum*, %struct.sum** %3, align 8
  %359 = call i32 %355(%struct.amixer* %356, i32* null, i32 %357, %struct.sum* %358)
  %360 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %361 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %360, i32 0, i32 1
  %362 = load %struct.amixer**, %struct.amixer*** %361, align 8
  %363 = load i32, i32* @AMIXER_MIC, align 4
  %364 = load i32, i32* @CHN_NUM, align 4
  %365 = mul nsw i32 %363, %364
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.amixer*, %struct.amixer** %362, i64 %367
  %369 = load %struct.amixer*, %struct.amixer** %368, align 8
  store %struct.amixer* %369, %struct.amixer** %4, align 8
  %370 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %371 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %370, i32 0, i32 0
  %372 = load %struct.sum**, %struct.sum*** %371, align 8
  %373 = load i32, i32* @SUM_IN_F, align 4
  %374 = load i32, i32* @CHN_NUM, align 4
  %375 = mul nsw i32 %373, %374
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.sum*, %struct.sum** %372, i64 %377
  %379 = load %struct.sum*, %struct.sum** %378, align 8
  store %struct.sum* %379, %struct.sum** %3, align 8
  %380 = load %struct.amixer*, %struct.amixer** %4, align 8
  %381 = getelementptr inbounds %struct.amixer, %struct.amixer* %380, i32 0, i32 0
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  %384 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %383, align 8
  %385 = load %struct.amixer*, %struct.amixer** %4, align 8
  %386 = load i32, i32* @INIT_VOL, align 4
  %387 = load %struct.sum*, %struct.sum** %3, align 8
  %388 = call i32 %384(%struct.amixer* %385, i32* null, i32 %386, %struct.sum* %387)
  %389 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %390 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %389, i32 0, i32 1
  %391 = load %struct.amixer**, %struct.amixer*** %390, align 8
  %392 = load i32, i32* @AMIXER_SPDIFI, align 4
  %393 = load i32, i32* @CHN_NUM, align 4
  %394 = mul nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.amixer*, %struct.amixer** %391, i64 %395
  %397 = load %struct.amixer*, %struct.amixer** %396, align 8
  store %struct.amixer* %397, %struct.amixer** %4, align 8
  %398 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %399 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %398, i32 0, i32 0
  %400 = load %struct.sum**, %struct.sum*** %399, align 8
  %401 = load i32, i32* @SUM_IN_F, align 4
  %402 = load i32, i32* @CHN_NUM, align 4
  %403 = mul nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.sum*, %struct.sum** %400, i64 %404
  %406 = load %struct.sum*, %struct.sum** %405, align 8
  store %struct.sum* %406, %struct.sum** %3, align 8
  %407 = load %struct.amixer*, %struct.amixer** %4, align 8
  %408 = getelementptr inbounds %struct.amixer, %struct.amixer* %407, i32 0, i32 0
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 0
  %411 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %410, align 8
  %412 = load %struct.amixer*, %struct.amixer** %4, align 8
  %413 = load i32, i32* @INIT_VOL, align 4
  %414 = load %struct.sum*, %struct.sum** %3, align 8
  %415 = call i32 %411(%struct.amixer* %412, i32* null, i32 %413, %struct.sum* %414)
  %416 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %417 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %416, i32 0, i32 1
  %418 = load %struct.amixer**, %struct.amixer*** %417, align 8
  %419 = load i32, i32* @AMIXER_SPDIFI, align 4
  %420 = load i32, i32* @CHN_NUM, align 4
  %421 = mul nsw i32 %419, %420
  %422 = add nsw i32 %421, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.amixer*, %struct.amixer** %418, i64 %423
  %425 = load %struct.amixer*, %struct.amixer** %424, align 8
  store %struct.amixer* %425, %struct.amixer** %4, align 8
  %426 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %427 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %426, i32 0, i32 0
  %428 = load %struct.sum**, %struct.sum*** %427, align 8
  %429 = load i32, i32* @SUM_IN_F, align 4
  %430 = load i32, i32* @CHN_NUM, align 4
  %431 = mul nsw i32 %429, %430
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.sum*, %struct.sum** %428, i64 %433
  %435 = load %struct.sum*, %struct.sum** %434, align 8
  store %struct.sum* %435, %struct.sum** %3, align 8
  %436 = load %struct.amixer*, %struct.amixer** %4, align 8
  %437 = getelementptr inbounds %struct.amixer, %struct.amixer* %436, i32 0, i32 0
  %438 = load %struct.TYPE_2__*, %struct.TYPE_2__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 0
  %440 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %439, align 8
  %441 = load %struct.amixer*, %struct.amixer** %4, align 8
  %442 = load i32, i32* @INIT_VOL, align 4
  %443 = load %struct.sum*, %struct.sum** %3, align 8
  %444 = call i32 %440(%struct.amixer* %441, i32* null, i32 %442, %struct.sum* %443)
  %445 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %446 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %445, i32 0, i32 1
  %447 = load %struct.amixer**, %struct.amixer*** %446, align 8
  %448 = load i32, i32* @AMIXER_MASTER_F_C, align 4
  %449 = load i32, i32* @CHN_NUM, align 4
  %450 = mul nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.amixer*, %struct.amixer** %447, i64 %451
  %453 = load %struct.amixer*, %struct.amixer** %452, align 8
  store %struct.amixer* %453, %struct.amixer** %4, align 8
  %454 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %455 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %454, i32 0, i32 0
  %456 = load %struct.sum**, %struct.sum*** %455, align 8
  %457 = load i32, i32* @SUM_IN_F_C, align 4
  %458 = load i32, i32* @CHN_NUM, align 4
  %459 = mul nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.sum*, %struct.sum** %456, i64 %460
  %462 = load %struct.sum*, %struct.sum** %461, align 8
  store %struct.sum* %462, %struct.sum** %3, align 8
  %463 = load %struct.amixer*, %struct.amixer** %4, align 8
  %464 = getelementptr inbounds %struct.amixer, %struct.amixer* %463, i32 0, i32 0
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i32 0, i32 0
  %467 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %466, align 8
  %468 = load %struct.amixer*, %struct.amixer** %4, align 8
  %469 = load %struct.sum*, %struct.sum** %3, align 8
  %470 = getelementptr inbounds %struct.sum, %struct.sum* %469, i32 0, i32 0
  %471 = load i32, i32* @INIT_VOL, align 4
  %472 = call i32 %467(%struct.amixer* %468, i32* %470, i32 %471, %struct.sum* null)
  %473 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %474 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %473, i32 0, i32 1
  %475 = load %struct.amixer**, %struct.amixer*** %474, align 8
  %476 = load i32, i32* @AMIXER_MASTER_F_C, align 4
  %477 = load i32, i32* @CHN_NUM, align 4
  %478 = mul nsw i32 %476, %477
  %479 = add nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.amixer*, %struct.amixer** %475, i64 %480
  %482 = load %struct.amixer*, %struct.amixer** %481, align 8
  store %struct.amixer* %482, %struct.amixer** %4, align 8
  %483 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %484 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %483, i32 0, i32 0
  %485 = load %struct.sum**, %struct.sum*** %484, align 8
  %486 = load i32, i32* @SUM_IN_F_C, align 4
  %487 = load i32, i32* @CHN_NUM, align 4
  %488 = mul nsw i32 %486, %487
  %489 = add nsw i32 %488, 1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.sum*, %struct.sum** %485, i64 %490
  %492 = load %struct.sum*, %struct.sum** %491, align 8
  store %struct.sum* %492, %struct.sum** %3, align 8
  %493 = load %struct.amixer*, %struct.amixer** %4, align 8
  %494 = getelementptr inbounds %struct.amixer, %struct.amixer* %493, i32 0, i32 0
  %495 = load %struct.TYPE_2__*, %struct.TYPE_2__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %495, i32 0, i32 0
  %497 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %496, align 8
  %498 = load %struct.amixer*, %struct.amixer** %4, align 8
  %499 = load %struct.sum*, %struct.sum** %3, align 8
  %500 = getelementptr inbounds %struct.sum, %struct.sum* %499, i32 0, i32 0
  %501 = load i32, i32* @INIT_VOL, align 4
  %502 = call i32 %497(%struct.amixer* %498, i32* %500, i32 %501, %struct.sum* null)
  %503 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %504 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %503, i32 0, i32 1
  %505 = load %struct.amixer**, %struct.amixer*** %504, align 8
  %506 = load i32, i32* @AMIXER_PCM_F_C, align 4
  %507 = load i32, i32* @CHN_NUM, align 4
  %508 = mul nsw i32 %506, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.amixer*, %struct.amixer** %505, i64 %509
  %511 = load %struct.amixer*, %struct.amixer** %510, align 8
  store %struct.amixer* %511, %struct.amixer** %4, align 8
  %512 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %513 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %512, i32 0, i32 0
  %514 = load %struct.sum**, %struct.sum*** %513, align 8
  %515 = load i32, i32* @SUM_IN_F_C, align 4
  %516 = load i32, i32* @CHN_NUM, align 4
  %517 = mul nsw i32 %515, %516
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.sum*, %struct.sum** %514, i64 %518
  %520 = load %struct.sum*, %struct.sum** %519, align 8
  store %struct.sum* %520, %struct.sum** %3, align 8
  %521 = load %struct.amixer*, %struct.amixer** %4, align 8
  %522 = getelementptr inbounds %struct.amixer, %struct.amixer* %521, i32 0, i32 0
  %523 = load %struct.TYPE_2__*, %struct.TYPE_2__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %523, i32 0, i32 0
  %525 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %524, align 8
  %526 = load %struct.amixer*, %struct.amixer** %4, align 8
  %527 = load i32, i32* @INIT_VOL, align 4
  %528 = load %struct.sum*, %struct.sum** %3, align 8
  %529 = call i32 %525(%struct.amixer* %526, i32* null, i32 %527, %struct.sum* %528)
  %530 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %531 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %530, i32 0, i32 1
  %532 = load %struct.amixer**, %struct.amixer*** %531, align 8
  %533 = load i32, i32* @AMIXER_PCM_F_C, align 4
  %534 = load i32, i32* @CHN_NUM, align 4
  %535 = mul nsw i32 %533, %534
  %536 = add nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.amixer*, %struct.amixer** %532, i64 %537
  %539 = load %struct.amixer*, %struct.amixer** %538, align 8
  store %struct.amixer* %539, %struct.amixer** %4, align 8
  %540 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %541 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %540, i32 0, i32 0
  %542 = load %struct.sum**, %struct.sum*** %541, align 8
  %543 = load i32, i32* @SUM_IN_F_C, align 4
  %544 = load i32, i32* @CHN_NUM, align 4
  %545 = mul nsw i32 %543, %544
  %546 = add nsw i32 %545, 1
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.sum*, %struct.sum** %542, i64 %547
  %549 = load %struct.sum*, %struct.sum** %548, align 8
  store %struct.sum* %549, %struct.sum** %3, align 8
  %550 = load %struct.amixer*, %struct.amixer** %4, align 8
  %551 = getelementptr inbounds %struct.amixer, %struct.amixer* %550, i32 0, i32 0
  %552 = load %struct.TYPE_2__*, %struct.TYPE_2__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 0
  %554 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %553, align 8
  %555 = load %struct.amixer*, %struct.amixer** %4, align 8
  %556 = load i32, i32* @INIT_VOL, align 4
  %557 = load %struct.sum*, %struct.sum** %3, align 8
  %558 = call i32 %554(%struct.amixer* %555, i32* null, i32 %556, %struct.sum* %557)
  %559 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %560 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %559, i32 0, i32 1
  %561 = load %struct.amixer**, %struct.amixer*** %560, align 8
  %562 = load i32, i32* @AMIXER_LINEIN_C, align 4
  %563 = load i32, i32* @CHN_NUM, align 4
  %564 = mul nsw i32 %562, %563
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.amixer*, %struct.amixer** %561, i64 %565
  %567 = load %struct.amixer*, %struct.amixer** %566, align 8
  store %struct.amixer* %567, %struct.amixer** %4, align 8
  %568 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %569 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %568, i32 0, i32 0
  %570 = load %struct.sum**, %struct.sum*** %569, align 8
  %571 = load i32, i32* @SUM_IN_F_C, align 4
  %572 = load i32, i32* @CHN_NUM, align 4
  %573 = mul nsw i32 %571, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.sum*, %struct.sum** %570, i64 %574
  %576 = load %struct.sum*, %struct.sum** %575, align 8
  store %struct.sum* %576, %struct.sum** %3, align 8
  %577 = load %struct.amixer*, %struct.amixer** %4, align 8
  %578 = getelementptr inbounds %struct.amixer, %struct.amixer* %577, i32 0, i32 0
  %579 = load %struct.TYPE_2__*, %struct.TYPE_2__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %579, i32 0, i32 0
  %581 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %580, align 8
  %582 = load %struct.amixer*, %struct.amixer** %4, align 8
  %583 = load i32, i32* @INIT_VOL, align 4
  %584 = load %struct.sum*, %struct.sum** %3, align 8
  %585 = call i32 %581(%struct.amixer* %582, i32* null, i32 %583, %struct.sum* %584)
  %586 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %587 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %586, i32 0, i32 1
  %588 = load %struct.amixer**, %struct.amixer*** %587, align 8
  %589 = load i32, i32* @AMIXER_LINEIN_C, align 4
  %590 = load i32, i32* @CHN_NUM, align 4
  %591 = mul nsw i32 %589, %590
  %592 = add nsw i32 %591, 1
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.amixer*, %struct.amixer** %588, i64 %593
  %595 = load %struct.amixer*, %struct.amixer** %594, align 8
  store %struct.amixer* %595, %struct.amixer** %4, align 8
  %596 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %597 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %596, i32 0, i32 0
  %598 = load %struct.sum**, %struct.sum*** %597, align 8
  %599 = load i32, i32* @SUM_IN_F_C, align 4
  %600 = load i32, i32* @CHN_NUM, align 4
  %601 = mul nsw i32 %599, %600
  %602 = add nsw i32 %601, 1
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.sum*, %struct.sum** %598, i64 %603
  %605 = load %struct.sum*, %struct.sum** %604, align 8
  store %struct.sum* %605, %struct.sum** %3, align 8
  %606 = load %struct.amixer*, %struct.amixer** %4, align 8
  %607 = getelementptr inbounds %struct.amixer, %struct.amixer* %606, i32 0, i32 0
  %608 = load %struct.TYPE_2__*, %struct.TYPE_2__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %608, i32 0, i32 0
  %610 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %609, align 8
  %611 = load %struct.amixer*, %struct.amixer** %4, align 8
  %612 = load i32, i32* @INIT_VOL, align 4
  %613 = load %struct.sum*, %struct.sum** %3, align 8
  %614 = call i32 %610(%struct.amixer* %611, i32* null, i32 %612, %struct.sum* %613)
  %615 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %616 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %615, i32 0, i32 1
  %617 = load %struct.amixer**, %struct.amixer*** %616, align 8
  %618 = load i32, i32* @AMIXER_MIC_C, align 4
  %619 = load i32, i32* @CHN_NUM, align 4
  %620 = mul nsw i32 %618, %619
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.amixer*, %struct.amixer** %617, i64 %621
  %623 = load %struct.amixer*, %struct.amixer** %622, align 8
  store %struct.amixer* %623, %struct.amixer** %4, align 8
  %624 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %625 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %624, i32 0, i32 0
  %626 = load %struct.sum**, %struct.sum*** %625, align 8
  %627 = load i32, i32* @SUM_IN_F_C, align 4
  %628 = load i32, i32* @CHN_NUM, align 4
  %629 = mul nsw i32 %627, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.sum*, %struct.sum** %626, i64 %630
  %632 = load %struct.sum*, %struct.sum** %631, align 8
  store %struct.sum* %632, %struct.sum** %3, align 8
  %633 = load %struct.amixer*, %struct.amixer** %4, align 8
  %634 = getelementptr inbounds %struct.amixer, %struct.amixer* %633, i32 0, i32 0
  %635 = load %struct.TYPE_2__*, %struct.TYPE_2__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %635, i32 0, i32 0
  %637 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %636, align 8
  %638 = load %struct.amixer*, %struct.amixer** %4, align 8
  %639 = load i32, i32* @INIT_VOL, align 4
  %640 = load %struct.sum*, %struct.sum** %3, align 8
  %641 = call i32 %637(%struct.amixer* %638, i32* null, i32 %639, %struct.sum* %640)
  %642 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %643 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %642, i32 0, i32 1
  %644 = load %struct.amixer**, %struct.amixer*** %643, align 8
  %645 = load i32, i32* @AMIXER_MIC_C, align 4
  %646 = load i32, i32* @CHN_NUM, align 4
  %647 = mul nsw i32 %645, %646
  %648 = add nsw i32 %647, 1
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.amixer*, %struct.amixer** %644, i64 %649
  %651 = load %struct.amixer*, %struct.amixer** %650, align 8
  store %struct.amixer* %651, %struct.amixer** %4, align 8
  %652 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %653 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %652, i32 0, i32 0
  %654 = load %struct.sum**, %struct.sum*** %653, align 8
  %655 = load i32, i32* @SUM_IN_F_C, align 4
  %656 = load i32, i32* @CHN_NUM, align 4
  %657 = mul nsw i32 %655, %656
  %658 = add nsw i32 %657, 1
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.sum*, %struct.sum** %654, i64 %659
  %661 = load %struct.sum*, %struct.sum** %660, align 8
  store %struct.sum* %661, %struct.sum** %3, align 8
  %662 = load %struct.amixer*, %struct.amixer** %4, align 8
  %663 = getelementptr inbounds %struct.amixer, %struct.amixer* %662, i32 0, i32 0
  %664 = load %struct.TYPE_2__*, %struct.TYPE_2__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %664, i32 0, i32 0
  %666 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %665, align 8
  %667 = load %struct.amixer*, %struct.amixer** %4, align 8
  %668 = load i32, i32* @INIT_VOL, align 4
  %669 = load %struct.sum*, %struct.sum** %3, align 8
  %670 = call i32 %666(%struct.amixer* %667, i32* null, i32 %668, %struct.sum* %669)
  %671 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %672 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %671, i32 0, i32 1
  %673 = load %struct.amixer**, %struct.amixer*** %672, align 8
  %674 = load i32, i32* @AMIXER_SPDIFI_C, align 4
  %675 = load i32, i32* @CHN_NUM, align 4
  %676 = mul nsw i32 %674, %675
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.amixer*, %struct.amixer** %673, i64 %677
  %679 = load %struct.amixer*, %struct.amixer** %678, align 8
  store %struct.amixer* %679, %struct.amixer** %4, align 8
  %680 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %681 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %680, i32 0, i32 0
  %682 = load %struct.sum**, %struct.sum*** %681, align 8
  %683 = load i32, i32* @SUM_IN_F_C, align 4
  %684 = load i32, i32* @CHN_NUM, align 4
  %685 = mul nsw i32 %683, %684
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.sum*, %struct.sum** %682, i64 %686
  %688 = load %struct.sum*, %struct.sum** %687, align 8
  store %struct.sum* %688, %struct.sum** %3, align 8
  %689 = load %struct.amixer*, %struct.amixer** %4, align 8
  %690 = getelementptr inbounds %struct.amixer, %struct.amixer* %689, i32 0, i32 0
  %691 = load %struct.TYPE_2__*, %struct.TYPE_2__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %691, i32 0, i32 0
  %693 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %692, align 8
  %694 = load %struct.amixer*, %struct.amixer** %4, align 8
  %695 = load i32, i32* @INIT_VOL, align 4
  %696 = load %struct.sum*, %struct.sum** %3, align 8
  %697 = call i32 %693(%struct.amixer* %694, i32* null, i32 %695, %struct.sum* %696)
  %698 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %699 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %698, i32 0, i32 1
  %700 = load %struct.amixer**, %struct.amixer*** %699, align 8
  %701 = load i32, i32* @AMIXER_SPDIFI_C, align 4
  %702 = load i32, i32* @CHN_NUM, align 4
  %703 = mul nsw i32 %701, %702
  %704 = add nsw i32 %703, 1
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.amixer*, %struct.amixer** %700, i64 %705
  %707 = load %struct.amixer*, %struct.amixer** %706, align 8
  store %struct.amixer* %707, %struct.amixer** %4, align 8
  %708 = load %struct.ct_mixer*, %struct.ct_mixer** %2, align 8
  %709 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %708, i32 0, i32 0
  %710 = load %struct.sum**, %struct.sum*** %709, align 8
  %711 = load i32, i32* @SUM_IN_F_C, align 4
  %712 = load i32, i32* @CHN_NUM, align 4
  %713 = mul nsw i32 %711, %712
  %714 = add nsw i32 %713, 1
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.sum*, %struct.sum** %710, i64 %715
  %717 = load %struct.sum*, %struct.sum** %716, align 8
  store %struct.sum* %717, %struct.sum** %3, align 8
  %718 = load %struct.amixer*, %struct.amixer** %4, align 8
  %719 = getelementptr inbounds %struct.amixer, %struct.amixer* %718, i32 0, i32 0
  %720 = load %struct.TYPE_2__*, %struct.TYPE_2__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %720, i32 0, i32 0
  %722 = load i32 (%struct.amixer*, i32*, i32, %struct.sum*)*, i32 (%struct.amixer*, i32*, i32, %struct.sum*)** %721, align 8
  %723 = load %struct.amixer*, %struct.amixer** %4, align 8
  %724 = load i32, i32* @INIT_VOL, align 4
  %725 = load %struct.sum*, %struct.sum** %3, align 8
  %726 = call i32 %722(%struct.amixer* %723, i32* null, i32 %724, %struct.sum* %725)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
