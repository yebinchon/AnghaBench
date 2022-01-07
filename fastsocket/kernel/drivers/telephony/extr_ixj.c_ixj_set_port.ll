; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_set_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_17__, i32, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@QTI_PHONEJACK_LITE = common dso_local global i64 0, align 8
@PLD_SLIC_STATE_ACTIVE = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_STANDBY = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_OC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @ixj_set_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_set_port(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QTI_PHONEJACK_LITE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 134
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 10, i32* %3, align 4
  br label %325

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %325

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %323 [
    i32 134, label %18
    i32 133, label %142
    i32 132, label %175
    i32 135, label %295
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i32 134, i32* %20, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  switch i64 %23, label %141 [
    i64 130, label %24
    i64 128, label %36
    i64 131, label %54
    i64 129, label %122
  ]

24:                                               ; preds = %18
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @PLD_SLIC_STATE_ACTIVE, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = call i32 @SLIC_SetState(i32 %31, %struct.TYPE_18__* %32)
  br label %35

34:                                               ; preds = %24
  store i32 11, i32* %3, align 4
  br label %325

35:                                               ; preds = %30
  br label %141

36:                                               ; preds = %18
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @outb(i32 %48, i32 %52)
  br label %141

54:                                               ; preds = %18
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = call i32 @ixj_set_pots(%struct.TYPE_18__* %55, i32 0)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = call i32 @ixj_WriteDSPCommand(i32 50472, %struct.TYPE_18__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 2, i32* %3, align 4
  br label %325

61:                                               ; preds = %54
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @outb(i32 %69, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 4
  %85 = call i32 @outb(i32 %80, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @outb(i32 %97, i32 %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = call i32 @ixj_mixer(i32 4608, %struct.TYPE_18__* %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = call i32 @ixj_mixer(i32 5121, %struct.TYPE_18__* %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i32 @ixj_mixer(i32 4864, %struct.TYPE_18__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = call i32 @ixj_mixer(i32 5377, %struct.TYPE_18__* %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = call i32 @ixj_mixer(i32 3712, %struct.TYPE_18__* %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = call i32 @ixj_mixer(i32 3840, %struct.TYPE_18__* %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = call i32 @ixj_mixer(i32 128, %struct.TYPE_18__* %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = call i32 @ixj_mixer(i32 384, %struct.TYPE_18__* %117)
  %119 = load i32, i32* @PLD_SLIC_STATE_STANDBY, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = call i32 @SLIC_SetState(i32 %119, %struct.TYPE_18__* %120)
  br label %141

122:                                              ; preds = %18
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  store i32 11, i32* %126, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = call i32 @ixj_WriteDSPCommand(i32 %138, %struct.TYPE_18__* %139)
  br label %141

141:                                              ; preds = %18, %122, %61, %36, %35
  br label %324

142:                                              ; preds = %16
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 131
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = call i32 @ixj_WriteDSPCommand(i32 50484, %struct.TYPE_18__* %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  %170 = call i32 @outb(i32 %165, i32 %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  store i32 133, i32* %172, align 8
  br label %174

173:                                              ; preds = %142
  store i32 4, i32* %3, align 4
  br label %325

174:                                              ; preds = %147
  br label %324

175:                                              ; preds = %16
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i32 132, i32* %177, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  switch i64 %180, label %294 [
    i64 130, label %181
    i64 128, label %192
    i64 131, label %210
    i64 129, label %275
  ]

181:                                              ; preds = %175
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i32, i32* @PLD_SLIC_STATE_OC, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = call i32 @SLIC_SetState(i32 %188, %struct.TYPE_18__* %189)
  br label %191

191:                                              ; preds = %187, %181
  br label %294

192:                                              ; preds = %175
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @outb(i32 %204, i32 %208)
  br label %294

210:                                              ; preds = %175
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = call i32 @ixj_set_pots(%struct.TYPE_18__* %211, i32 0)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = call i32 @ixj_WriteDSPCommand(i32 50472, %struct.TYPE_18__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i32 2, i32* %3, align 4
  br label %325

217:                                              ; preds = %210
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @outb(i32 %225, i32 %228)
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  store i32 0, i32* %232, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 4
  %241 = call i32 @outb(i32 %236, i32 %240)
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 4
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  store i32 1, i32* %249, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  %258 = call i32 @outb(i32 %253, i32 %257)
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %260 = call i32 @ixj_mixer(i32 4609, %struct.TYPE_18__* %259)
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %262 = call i32 @ixj_mixer(i32 5120, %struct.TYPE_18__* %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %264 = call i32 @ixj_mixer(i32 4865, %struct.TYPE_18__* %263)
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %266 = call i32 @ixj_mixer(i32 5376, %struct.TYPE_18__* %265)
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %268 = call i32 @ixj_mixer(i32 3590, %struct.TYPE_18__* %267)
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %270 = call i32 @ixj_mixer(i32 3968, %struct.TYPE_18__* %269)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %272 = call i32 @ixj_mixer(i32 0, %struct.TYPE_18__* %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %274 = call i32 @ixj_mixer(i32 256, %struct.TYPE_18__* %273)
  br label %294

275:                                              ; preds = %175
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 0
  store i32 11, i32* %279, align 4
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 0
  store i32 0, i32* %283, align 4
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 1
  store i32 1, i32* %287, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %293 = call i32 @ixj_WriteDSPCommand(i32 %291, %struct.TYPE_18__* %292)
  br label %294

294:                                              ; preds = %175, %275, %217, %192, %191
  br label %324

295:                                              ; preds = %16
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 129
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 5, i32* %3, align 4
  br label %325

301:                                              ; preds = %295
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 0
  store i32 11, i32* %305, align 4
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 1
  store i32 0, i32* %313, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %319 = call i32 @ixj_WriteDSPCommand(i32 %317, %struct.TYPE_18__* %318)
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 1
  store i32 135, i32* %321, align 8
  br label %322

322:                                              ; preds = %301
  br label %324

323:                                              ; preds = %16
  store i32 6, i32* %3, align 4
  br label %325

324:                                              ; preds = %322, %294, %174, %141
  store i32 0, i32* %3, align 4
  br label %325

325:                                              ; preds = %324, %323, %300, %216, %173, %60, %34, %15, %14
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @SLIC_SetState(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ixj_set_pots(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ixj_WriteDSPCommand(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ixj_mixer(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
