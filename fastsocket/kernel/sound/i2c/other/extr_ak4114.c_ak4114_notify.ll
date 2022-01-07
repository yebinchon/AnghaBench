; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_ak4114_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_ak4114_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@AK4114_PAR = common dso_local global i8 0, align 1
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AK4114_V = common dso_local global i8 0, align 1
@AK4114_CCRC = common dso_local global i8 0, align 1
@AK4114_QCRC = common dso_local global i8 0, align 1
@AK4114_PEM = common dso_local global i8 0, align 1
@AK4114_CINT = common dso_local global i8 0, align 1
@AK4114_QINT = common dso_local global i8 0, align 1
@AK4114_AUDION = common dso_local global i8 0, align 1
@AK4114_AUTO = common dso_local global i8 0, align 1
@AK4114_DTSCD = common dso_local global i8 0, align 1
@AK4114_UNLCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4114*, i8, i8, i8, i8)* @ak4114_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4114_notify(%struct.ak4114* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.ak4114*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %11 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %12 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %231

18:                                               ; preds = %5
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @AK4114_PAR, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %27 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %30 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %31 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @snd_ctl_notify(i32 %28, i32 %29, i32* %35)
  br label %37

37:                                               ; preds = %25, %18
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @AK4114_V, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %46 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %49 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %50 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @snd_ctl_notify(i32 %47, i32 %48, i32* %54)
  br label %56

56:                                               ; preds = %44, %37
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @AK4114_CCRC, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %65 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %68 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %69 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @snd_ctl_notify(i32 %66, i32 %67, i32* %73)
  br label %75

75:                                               ; preds = %63, %56
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @AK4114_QCRC, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %84 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %87 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %88 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @snd_ctl_notify(i32 %85, i32 %86, i32* %92)
  br label %94

94:                                               ; preds = %82, %75
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 240
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %101 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %104 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %105 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @snd_ctl_notify(i32 %102, i32 %103, i32* %109)
  br label %111

111:                                              ; preds = %99, %94
  %112 = load i8, i8* %9, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @AK4114_PEM, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = load i8, i8* %9, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @AK4114_CINT, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %118, %120
  %122 = or i32 %116, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %111
  %125 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %126 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %129 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %130 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %131, i64 9
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = call i32 @snd_ctl_notify(i32 %127, i32 %128, i32* %134)
  br label %136

136:                                              ; preds = %124, %111
  %137 = load i8, i8* %9, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* @AK4114_QINT, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %145 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %148 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %149 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %150, i64 10
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = call i32 @snd_ctl_notify(i32 %146, i32 %147, i32* %153)
  br label %155

155:                                              ; preds = %143, %136
  %156 = load i8, i8* %9, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @AK4114_AUDION, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %164 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %167 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %168 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %169, i64 11
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = call i32 @snd_ctl_notify(i32 %165, i32 %166, i32* %172)
  br label %174

174:                                              ; preds = %162, %155
  %175 = load i8, i8* %9, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8, i8* @AK4114_AUTO, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %176, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %183 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %186 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %187 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %188, i64 12
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = call i32 @snd_ctl_notify(i32 %184, i32 %185, i32* %191)
  br label %193

193:                                              ; preds = %181, %174
  %194 = load i8, i8* %9, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @AK4114_DTSCD, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %193
  %201 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %202 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %205 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %206 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %207, i64 13
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = call i32 @snd_ctl_notify(i32 %203, i32 %204, i32* %210)
  br label %212

212:                                              ; preds = %200, %193
  %213 = load i8, i8* %9, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8, i8* @AK4114_UNLCK, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %212
  %220 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %221 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %224 = load %struct.ak4114*, %struct.ak4114** %6, align 8
  %225 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %226, i64 14
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = call i32 @snd_ctl_notify(i32 %222, i32 %223, i32* %229)
  br label %231

231:                                              ; preds = %17, %219, %212
  ret void
}

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
