; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_linetest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_linetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, i64, %struct.TYPE_19__, i64, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64 }

@SOP_PU_CONVERSATION = common dso_local global i32 0, align 4
@SOP_PU_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@hertz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @ixj_linetest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_linetest(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %3 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = call i32 @daa_int_read(%struct.TYPE_21__* %9)
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @outb_p(i32 %26, i64 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @outb_p(i32 %39, i64 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @inb_p(i64 %47)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %66 = call i32 @LED_SetState(i32 4, %struct.TYPE_21__* %65)
  br label %169

67:                                               ; preds = %1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @outb_p(i32 %86, i64 %90)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @outb_p(i32 %99, i64 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %105 = load i32, i32* @SOP_PU_CONVERSATION, align 4
  %106 = call i32 @daa_set_mode(%struct.TYPE_21__* %104, i32 %105)
  %107 = call i32 @msleep(i32 1000)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %109 = call i32 @daa_int_read(%struct.TYPE_21__* %108)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %111 = load i32, i32* @SOP_PU_RESET, align 4
  %112 = call i32 @daa_set_mode(%struct.TYPE_21__* %110, i32 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %67
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %127 = call i32 @LED_SetState(i32 4, %struct.TYPE_21__* %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  %140 = call i32 @outb_p(i32 %135, i64 %139)
  br label %168

141:                                              ; preds = %67
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  store i32 1, i32* %144, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %146 = call i32 @LED_SetState(i32 8, %struct.TYPE_21__* %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  %167 = call i32 @outb_p(i32 %162, i64 %166)
  br label %168

168:                                              ; preds = %141, %122
  br label %169

169:                                              ; preds = %168, %58
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  %182 = call i32 @outb_p(i32 %177, i64 %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = load i32, i32* @SOP_PU_CONVERSATION, align 4
  %185 = call i32 @daa_set_mode(%struct.TYPE_21__* %183, i32 %184)
  %186 = call i32 @msleep(i32 1000)
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %188 = call i32 @daa_int_read(%struct.TYPE_21__* %187)
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %190 = load i32, i32* @SOP_PU_RESET, align 4
  %191 = call i32 @daa_set_mode(%struct.TYPE_21__* %189, i32 %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %169
  %202 = load i64, i64* @jiffies, align 8
  %203 = load i32, i32* @hertz, align 4
  %204 = sdiv i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %202, %205
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  br label %216

212:                                              ; preds = %169
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %201
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %216
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %230 = call i32 @LED_SetState(i32 10, %struct.TYPE_21__* %229)
  br label %234

231:                                              ; preds = %222
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %233 = call i32 @LED_SetState(i32 6, %struct.TYPE_21__* %232)
  br label %234

234:                                              ; preds = %231, %228
  br label %248

235:                                              ; preds = %216
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %243 = call i32 @LED_SetState(i32 9, %struct.TYPE_21__* %242)
  br label %247

244:                                              ; preds = %235
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %246 = call i32 @LED_SetState(i32 5, %struct.TYPE_21__* %245)
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %234
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  store i32 0, i32* %251, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  ret i32 %255
}

declare dso_local i32 @daa_int_read(%struct.TYPE_21__*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @LED_SetState(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @daa_set_mode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
