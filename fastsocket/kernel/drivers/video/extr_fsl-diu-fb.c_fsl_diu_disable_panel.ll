; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_disable_panel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_disable_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.diu* }
%struct.diu = type { i32* }
%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i32, %struct.diu_ad*, i32, %struct.fsl_diu_data* }
%struct.diu_ad = type { i32, i32 }
%struct.fsl_diu_data = type { %struct.TYPE_5__*, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mfb_info* }

@dr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fsl_diu_disable_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_disable_panel(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.mfb_info*, align 8
  %4 = alloca %struct.mfb_info*, align 8
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca %struct.diu*, align 8
  %7 = alloca %struct.diu_ad*, align 8
  %8 = alloca %struct.fsl_diu_data*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.mfb_info*, %struct.mfb_info** %11, align 8
  store %struct.mfb_info* %12, %struct.mfb_info** %5, align 8
  %13 = load %struct.diu*, %struct.diu** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dr, i32 0, i32 0), align 8
  store %struct.diu* %13, %struct.diu** %6, align 8
  %14 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %15 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %14, i32 0, i32 1
  %16 = load %struct.diu_ad*, %struct.diu_ad** %15, align 8
  store %struct.diu_ad* %16, %struct.diu_ad** %7, align 8
  %17 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %18 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %17, i32 0, i32 3
  %19 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %18, align 8
  store %struct.fsl_diu_data* %19, %struct.fsl_diu_data** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %197 [
    i32 0, label %23
    i32 1, label %47
    i32 3, label %82
    i32 2, label %117
    i32 4, label %157
  ]

23:                                               ; preds = %1
  %24 = load %struct.diu*, %struct.diu** %6, align 8
  %25 = getelementptr inbounds %struct.diu, %struct.diu* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %30 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.diu*, %struct.diu** %6, align 8
  %37 = getelementptr inbounds %struct.diu, %struct.diu* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %41 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @out_be32(i32* %39, i32 %44)
  br label %46

46:                                               ; preds = %35, %23
  br label %200

47:                                               ; preds = %1
  %48 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %49 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.mfb_info*, %struct.mfb_info** %53, align 8
  store %struct.mfb_info* %54, %struct.mfb_info** %4, align 8
  %55 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %56 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load %struct.diu*, %struct.diu** %6, align 8
  %61 = getelementptr inbounds %struct.diu, %struct.diu* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %65 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %64, i32 0, i32 1
  %66 = load %struct.diu_ad*, %struct.diu_ad** %65, align 8
  %67 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @out_be32(i32* %63, i32 %68)
  br label %81

70:                                               ; preds = %47
  %71 = load %struct.diu*, %struct.diu** %6, align 8
  %72 = getelementptr inbounds %struct.diu, %struct.diu* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %76 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @out_be32(i32* %74, i32 %79)
  br label %81

81:                                               ; preds = %70, %59
  br label %200

82:                                               ; preds = %1
  %83 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %84 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.mfb_info*, %struct.mfb_info** %88, align 8
  store %struct.mfb_info* %89, %struct.mfb_info** %4, align 8
  %90 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %91 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load %struct.diu*, %struct.diu** %6, align 8
  %96 = getelementptr inbounds %struct.diu, %struct.diu* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %100 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %99, i32 0, i32 1
  %101 = load %struct.diu_ad*, %struct.diu_ad** %100, align 8
  %102 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @out_be32(i32* %98, i32 %103)
  br label %116

105:                                              ; preds = %82
  %106 = load %struct.diu*, %struct.diu** %6, align 8
  %107 = getelementptr inbounds %struct.diu, %struct.diu* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %111 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @out_be32(i32* %109, i32 %114)
  br label %116

116:                                              ; preds = %105, %94
  br label %200

117:                                              ; preds = %1
  %118 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %119 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %120, i64 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.mfb_info*, %struct.mfb_info** %123, align 8
  store %struct.mfb_info* %124, %struct.mfb_info** %3, align 8
  %125 = load %struct.diu*, %struct.diu** %6, align 8
  %126 = getelementptr inbounds %struct.diu, %struct.diu* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %131 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %117
  %135 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %136 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %141 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %140, i32 0, i32 1
  %142 = load %struct.diu_ad*, %struct.diu_ad** %141, align 8
  %143 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %142, i32 0, i32 0
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %134
  br label %156

145:                                              ; preds = %117
  %146 = load %struct.diu*, %struct.diu** %6, align 8
  %147 = getelementptr inbounds %struct.diu, %struct.diu* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %151 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @out_be32(i32* %149, i32 %154)
  br label %156

156:                                              ; preds = %145, %144
  br label %200

157:                                              ; preds = %1
  %158 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %159 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %160, i64 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.mfb_info*, %struct.mfb_info** %163, align 8
  store %struct.mfb_info* %164, %struct.mfb_info** %3, align 8
  %165 = load %struct.diu*, %struct.diu** %6, align 8
  %166 = getelementptr inbounds %struct.diu, %struct.diu* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %171 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %157
  %175 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %176 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %181 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %180, i32 0, i32 1
  %182 = load %struct.diu_ad*, %struct.diu_ad** %181, align 8
  %183 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %179, %174
  br label %196

185:                                              ; preds = %157
  %186 = load %struct.diu*, %struct.diu** %6, align 8
  %187 = getelementptr inbounds %struct.diu, %struct.diu* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %191 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @out_be32(i32* %189, i32 %194)
  br label %196

196:                                              ; preds = %185, %184
  br label %200

197:                                              ; preds = %1
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %197, %196, %156, %116, %81, %46
  %201 = load i32, i32* %9, align 4
  ret i32 %201
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
