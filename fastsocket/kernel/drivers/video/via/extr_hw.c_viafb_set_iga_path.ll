; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_iga_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_iga_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i64 }

@viafb_SAMM_ON = common dso_local global i32 0, align 4
@viafb_CRT_ON = common dso_local global i64 0, align 8
@viafb_primary_dev = common dso_local global i64 0, align 8
@CRT_Device = common dso_local global i64 0, align 8
@IGA1 = common dso_local global i8* null, align 8
@viaparinfo = common dso_local global %struct.TYPE_12__* null, align 8
@IGA2 = common dso_local global i8* null, align 8
@viafb_DVI_ON = common dso_local global i64 0, align 8
@DVI_Device = common dso_local global i64 0, align 8
@viafb_LCD_ON = common dso_local global i64 0, align 8
@LCD_Device = common dso_local global i64 0, align 8
@viafb_dual_fb = common dso_local global i64 0, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@LCD2_Device = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_set_iga_path() #0 {
  %1 = load i32, i32* @viafb_SAMM_ON, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %112

3:                                                ; preds = %0
  %4 = load i64, i64* @viafb_CRT_ON, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load i64, i64* @viafb_primary_dev, align 8
  %8 = load i64, i64* @CRT_Device, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i8*, i8** @IGA1, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i8* %11, i8** %15, align 8
  br label %22

16:                                               ; preds = %6
  %17 = load i8*, i8** @IGA2, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  br label %22

22:                                               ; preds = %16, %10
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i64, i64* @viafb_DVI_ON, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i64, i64* @viafb_primary_dev, align 8
  %28 = load i64, i64* @DVI_Device, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** @IGA1, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i8* %31, i8** %35, align 8
  br label %42

36:                                               ; preds = %26
  %37 = load i8*, i8** @IGA2, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i64, i64* @viafb_LCD_ON, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = load i64, i64* @viafb_primary_dev, align 8
  %48 = load i64, i64* @LCD_Device, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i64, i64* @viafb_dual_fb, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UNICHROME_CLE266, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load i8*, i8** @IGA2, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** @IGA1, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @IGA1, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  br label %83

77:                                               ; preds = %53, %50
  %78 = load i8*, i8** @IGA1, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 8
  br label %83

83:                                               ; preds = %77, %61
  br label %90

84:                                               ; preds = %46
  %85 = load i8*, i8** @IGA2, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  br label %90

90:                                               ; preds = %84, %83
  br label %91

91:                                               ; preds = %90, %43
  %92 = load i64, i64* @viafb_LCD2_ON, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i64, i64* @LCD2_Device, align 8
  %96 = load i64, i64* @viafb_primary_dev, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** @IGA1, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i8* %99, i8** %103, align 8
  br label %110

104:                                              ; preds = %94
  %105 = load i8*, i8** @IGA2, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %91
  br label %214

112:                                              ; preds = %0
  store i32 0, i32* @viafb_SAMM_ON, align 4
  %113 = load i64, i64* @viafb_CRT_ON, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i64, i64* @viafb_LCD_ON, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i8*, i8** @IGA1, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  %124 = load i8*, i8** @IGA2, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  br label %213

129:                                              ; preds = %115, %112
  %130 = load i64, i64* @viafb_CRT_ON, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i64, i64* @viafb_DVI_ON, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i8*, i8** @IGA1, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load i8*, i8** @IGA2, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  store i8* %141, i8** %145, align 8
  br label %212

146:                                              ; preds = %132, %129
  %147 = load i64, i64* @viafb_LCD_ON, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i64, i64* @viafb_DVI_ON, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i8*, i8** @IGA1, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i8* %153, i8** %157, align 8
  %158 = load i8*, i8** @IGA2, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i8* %158, i8** %162, align 8
  br label %211

163:                                              ; preds = %149, %146
  %164 = load i64, i64* @viafb_LCD_ON, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load i64, i64* @viafb_LCD2_ON, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load i8*, i8** @IGA2, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i8* %170, i8** %174, align 8
  %175 = load i8*, i8** @IGA2, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i8* %175, i8** %179, align 8
  br label %210

180:                                              ; preds = %166, %163
  %181 = load i64, i64* @viafb_CRT_ON, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i8*, i8** @IGA1, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i8* %184, i8** %188, align 8
  br label %209

189:                                              ; preds = %180
  %190 = load i64, i64* @viafb_LCD_ON, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i8*, i8** @IGA2, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i8* %193, i8** %197, align 8
  br label %208

198:                                              ; preds = %189
  %199 = load i64, i64* @viafb_DVI_ON, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i8*, i8** @IGA1, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  store i8* %202, i8** %206, align 8
  br label %207

207:                                              ; preds = %201, %198
  br label %208

208:                                              ; preds = %207, %192
  br label %209

209:                                              ; preds = %208, %183
  br label %210

210:                                              ; preds = %209, %169
  br label %211

211:                                              ; preds = %210, %152
  br label %212

212:                                              ; preds = %211, %135
  br label %213

213:                                              ; preds = %212, %118
  br label %214

214:                                              ; preds = %213, %111
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
