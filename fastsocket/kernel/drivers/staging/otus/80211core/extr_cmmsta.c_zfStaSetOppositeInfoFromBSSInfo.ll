; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSetOppositeInfoFromBSSInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSetOppositeInfoFromBSSInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.zsBssInfo = type { i64*, i32, i32, i32, i32* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaSetOppositeInfoFromBSSInfo(i32* %0, %struct.zsBssInfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.zsBssInfo* %1, %struct.zsBssInfo** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %13 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %14 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @zfMemoryCopy(i32* %12, i32* %15, i32 6)
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = call i32 @zfStaFindFreeOpposite(i32* %17, i32* %18, i32* %5)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %214

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %35 = call i32 @zfMemoryCopy(i32* %33, i32* %34, i32 6)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @zfHpCapability(i32* %36)
  %38 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %41 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %128

46:                                               ; preds = %23
  %47 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %48 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 3000
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %53 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 3, i32 2
  %70 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %71 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @zfRateCtrlInitCell(i32* %57, i32* %65, i32 %69, i32 1, i32 %72)
  br label %88

74:                                               ; preds = %51
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %85 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @zfRateCtrlInitCell(i32* %75, i32* %83, i32 1, i32 1, i32 %86)
  br label %88

88:                                               ; preds = %74, %56
  br label %127

89:                                               ; preds = %46
  %90 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %91 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 3, i32 2
  %108 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %109 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @zfRateCtrlInitCell(i32* %95, i32* %103, i32 %107, i32 0, i32 %110)
  br label %126

112:                                              ; preds = %89
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %123 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @zfRateCtrlInitCell(i32* %113, i32* %121, i32 1, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %112, %94
  br label %127

127:                                              ; preds = %126, %88
  br label %210

128:                                              ; preds = %23
  %129 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %130 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 3000
  br i1 %132, label %133, label %171

133:                                              ; preds = %128
  %134 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %135 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 3, i32 2
  %152 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %153 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @zfRateCtrlInitCell(i32* %139, i32* %147, i32 %151, i32 1, i32 %154)
  br label %170

156:                                              ; preds = %133
  %157 = load i32*, i32** %3, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %167 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @zfRateCtrlInitCell(i32* %157, i32* %165, i32 0, i32 1, i32 %168)
  br label %170

170:                                              ; preds = %156, %138
  br label %209

171:                                              ; preds = %128
  %172 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %173 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %194

176:                                              ; preds = %171
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 3, i32 2
  %190 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %191 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @zfRateCtrlInitCell(i32* %177, i32* %185, i32 %189, i32 0, i32 %192)
  br label %208

194:                                              ; preds = %171
  %195 = load i32*, i32** %3, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %205 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @zfRateCtrlInitCell(i32* %195, i32* %203, i32 1, i32 0, i32 %206)
  br label %208

208:                                              ; preds = %194, %176
  br label %209

209:                                              ; preds = %208, %170
  br label %210

210:                                              ; preds = %209, %127
  %211 = load i32*, i32** %3, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @zfStaInitCommonOppositeInfo(i32* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %22
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zfStaFindFreeOpposite(i32*, i32*, i32*) #1

declare dso_local i32 @zfHpCapability(i32*) #1

declare dso_local i32 @zfRateCtrlInitCell(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfStaInitCommonOppositeInfo(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
