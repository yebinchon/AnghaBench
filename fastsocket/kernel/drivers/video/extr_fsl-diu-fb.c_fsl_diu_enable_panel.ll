; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_enable_panel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_enable_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.diu* }
%struct.diu = type { i32* }
%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i32, i64, %struct.diu_ad*, i32, %struct.fsl_diu_data* }
%struct.diu_ad = type { i32, i8* }
%struct.fsl_diu_data = type { %struct.TYPE_5__*, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mfb_info* }

@dr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"enable_panel index %d\0A\00", align 1
@MFB_TYPE_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fsl_diu_enable_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_enable_panel(%struct.fb_info* %0) #0 {
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
  %15 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %14, i32 0, i32 2
  %16 = load %struct.diu_ad*, %struct.diu_ad** %15, align 8
  store %struct.diu_ad* %16, %struct.diu_ad** %7, align 8
  %17 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %18 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %17, i32 0, i32 4
  %19 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %18, align 8
  store %struct.fsl_diu_data* %19, %struct.fsl_diu_data** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %25 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MFB_TYPE_OFF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %225

29:                                               ; preds = %1
  %30 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %31 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %221 [
    i32 0, label %33
    i32 1, label %53
    i32 3, label %97
    i32 2, label %141
    i32 4, label %181
  ]

33:                                               ; preds = %29
  %34 = load %struct.diu*, %struct.diu** %6, align 8
  %35 = getelementptr inbounds %struct.diu, %struct.diu* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %40 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.diu*, %struct.diu** %6, align 8
  %45 = getelementptr inbounds %struct.diu, %struct.diu* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %49 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @out_be32(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %33
  br label %224

53:                                               ; preds = %29
  %54 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %55 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.mfb_info*, %struct.mfb_info** %59, align 8
  store %struct.mfb_info* %60, %struct.mfb_info** %4, align 8
  %61 = load %struct.diu*, %struct.diu** %6, align 8
  %62 = getelementptr inbounds %struct.diu, %struct.diu* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %67 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %53
  %71 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %72 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %77 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %76, i32 0, i32 2
  %78 = load %struct.diu_ad*, %struct.diu_ad** %77, align 8
  %79 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %83 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %87

84:                                               ; preds = %70
  %85 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %86 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %84, %75
  %88 = load %struct.diu*, %struct.diu** %6, align 8
  %89 = getelementptr inbounds %struct.diu, %struct.diu* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %93 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @out_be32(i32* %91, i32 %94)
  br label %96

96:                                               ; preds = %87, %53
  br label %224

97:                                               ; preds = %29
  %98 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %99 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.mfb_info*, %struct.mfb_info** %103, align 8
  store %struct.mfb_info* %104, %struct.mfb_info** %4, align 8
  %105 = load %struct.diu*, %struct.diu** %6, align 8
  %106 = getelementptr inbounds %struct.diu, %struct.diu* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %111 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %97
  %115 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %116 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %121 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %120, i32 0, i32 2
  %122 = load %struct.diu_ad*, %struct.diu_ad** %121, align 8
  %123 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %127 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %131

128:                                              ; preds = %114
  %129 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %130 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %129, i32 0, i32 1
  store i8* null, i8** %130, align 8
  br label %131

131:                                              ; preds = %128, %119
  %132 = load %struct.diu*, %struct.diu** %6, align 8
  %133 = getelementptr inbounds %struct.diu, %struct.diu* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %137 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @out_be32(i32* %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %97
  br label %224

141:                                              ; preds = %29
  %142 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %143 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %144, i64 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.mfb_info*, %struct.mfb_info** %147, align 8
  store %struct.mfb_info* %148, %struct.mfb_info** %3, align 8
  %149 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %150 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %149, i32 0, i32 1
  store i8* null, i8** %150, align 8
  %151 = load %struct.diu*, %struct.diu** %6, align 8
  %152 = getelementptr inbounds %struct.diu, %struct.diu* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %157 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %155, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %141
  %163 = load %struct.diu*, %struct.diu** %6, align 8
  %164 = getelementptr inbounds %struct.diu, %struct.diu* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %168 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @out_be32(i32* %166, i32 %169)
  br label %180

171:                                              ; preds = %141
  %172 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %173 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @cpu_to_le32(i32 %174)
  %176 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %177 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %176, i32 0, i32 2
  %178 = load %struct.diu_ad*, %struct.diu_ad** %177, align 8
  %179 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %178, i32 0, i32 1
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %171, %162
  br label %224

181:                                              ; preds = %29
  %182 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %183 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %184, i64 3
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.mfb_info*, %struct.mfb_info** %187, align 8
  store %struct.mfb_info* %188, %struct.mfb_info** %3, align 8
  %189 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %190 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %189, i32 0, i32 1
  store i8* null, i8** %190, align 8
  %191 = load %struct.diu*, %struct.diu** %6, align 8
  %192 = getelementptr inbounds %struct.diu, %struct.diu* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %197 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %195, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %181
  %203 = load %struct.diu*, %struct.diu** %6, align 8
  %204 = getelementptr inbounds %struct.diu, %struct.diu* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %208 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @out_be32(i32* %206, i32 %209)
  br label %220

211:                                              ; preds = %181
  %212 = load %struct.diu_ad*, %struct.diu_ad** %7, align 8
  %213 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.mfb_info*, %struct.mfb_info** %3, align 8
  %217 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %216, i32 0, i32 2
  %218 = load %struct.diu_ad*, %struct.diu_ad** %217, align 8
  %219 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %218, i32 0, i32 1
  store i8* %215, i8** %219, align 8
  br label %220

220:                                              ; preds = %211, %202
  br label %224

221:                                              ; preds = %29
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %221, %220, %180, %140, %96, %52
  br label %228

225:                                              ; preds = %1
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %225, %224
  %229 = load i32, i32* %9, align 4
  ret i32 %229
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
