; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_put_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_es1688 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es1688_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = call %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol* %18)
  store %struct.snd_es1688* %19, %struct.snd_es1688** %5, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 7
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 19
  %38 = and i32 %37, 7
  store i32 %38, i32* %10, align 4
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 24
  %43 = and i32 %42, 255
  store i32 %43, i32* %11, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 22
  %48 = and i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %55, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %14, align 1
  %59 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %60 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %65, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %15, align 1
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %2
  %72 = load i32, i32* %11, align 4
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %72, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %14, align 1
  %77 = load i32, i32* %11, align 4
  %78 = load i8, i8* %15, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %77, %79
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %15, align 1
  br label %82

82:                                               ; preds = %71, %2
  %83 = load i32, i32* %9, align 4
  %84 = load i8, i8* %14, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = load i32, i32* %10, align 4
  %89 = load i8, i8* %15, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %15, align 1
  %93 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %94 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %93, i32 0, i32 0
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %189

100:                                              ; preds = %82
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 160
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %104, i32 %105)
  store i8 %106, i8* %16, align 1
  br label %111

107:                                              ; preds = %100
  %108 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call zeroext i8 @snd_es1688_read(%struct.snd_es1688* %108, i32 %109)
  store i8 %110, i8* %16, align 1
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 160
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %115, i32 %116)
  store i8 %117, i8* %17, align 1
  br label %122

118:                                              ; preds = %111
  %119 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call zeroext i8 @snd_es1688_read(%struct.snd_es1688* %119, i32 %120)
  store i8 %121, i8* %17, align 1
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i8, i8* %16, align 1
  %124 = zext i8 %123 to i32
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  %127 = shl i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = and i32 %124, %128
  %130 = load i8, i8* %14, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %14, align 1
  %134 = load i8, i8* %17, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = shl i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = and i32 %135, %139
  %141 = load i8, i8* %15, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %140, %142
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %15, align 1
  %145 = load i8, i8* %14, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* %16, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %122
  %151 = load i8, i8* %15, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8, i8* %17, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp ne i32 %152, %154
  br label %156

156:                                              ; preds = %150, %122
  %157 = phi i1 [ true, %122 ], [ %155, %150 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 160
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i8, i8* %14, align 1
  %168 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %165, i32 %166, i8 zeroext %167)
  br label %174

169:                                              ; preds = %161
  %170 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i8, i8* %14, align 1
  %173 = call i32 @snd_es1688_write(%struct.snd_es1688* %170, i32 %171, i8 zeroext %172)
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 160
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i8, i8* %14, align 1
  %181 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %178, i32 %179, i8 zeroext %180)
  br label %187

182:                                              ; preds = %174
  %183 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i8, i8* %14, align 1
  %186 = call i32 @snd_es1688_write(%struct.snd_es1688* %183, i32 %184, i8 zeroext %185)
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187, %156
  br label %242

189:                                              ; preds = %82
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %190, 160
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %193, i32 %194)
  store i8 %195, i8* %16, align 1
  br label %200

196:                                              ; preds = %189
  %197 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call zeroext i8 @snd_es1688_read(%struct.snd_es1688* %197, i32 %198)
  store i8 %199, i8* %16, align 1
  br label %200

200:                                              ; preds = %196, %192
  %201 = load i8, i8* %16, align 1
  %202 = zext i8 %201 to i32
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %9, align 4
  %205 = shl i32 %203, %204
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %10, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %205, %208
  %210 = xor i32 %209, -1
  %211 = and i32 %202, %210
  %212 = load i8, i8* %14, align 1
  %213 = zext i8 %212 to i32
  %214 = or i32 %211, %213
  %215 = load i8, i8* %15, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %214, %216
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %14, align 1
  %219 = load i8, i8* %14, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8, i8* %16, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp ne i32 %220, %222
  %224 = zext i1 %223 to i32
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %200
  %228 = load i32, i32* %7, align 4
  %229 = icmp slt i32 %228, 160
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load i8, i8* %14, align 1
  %234 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %231, i32 %232, i8 zeroext %233)
  br label %240

235:                                              ; preds = %227
  %236 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %237 = load i32, i32* %7, align 4
  %238 = load i8, i8* %14, align 1
  %239 = call i32 @snd_es1688_write(%struct.snd_es1688* %236, i32 %237, i8 zeroext %238)
  br label %240

240:                                              ; preds = %235, %230
  br label %241

241:                                              ; preds = %240, %200
  br label %242

242:                                              ; preds = %241, %188
  %243 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %244 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %243, i32 0, i32 0
  %245 = load i64, i64* %6, align 8
  %246 = call i32 @spin_unlock_irqrestore(i32* %244, i64 %245)
  %247 = load i32, i32* %13, align 4
  ret i32 %247
}

declare dso_local %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688*, i32) #1

declare dso_local zeroext i8 @snd_es1688_read(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_es1688_mixer_write(%struct.snd_es1688*, i32, i8 zeroext) #1

declare dso_local i32 @snd_es1688_write(%struct.snd_es1688*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
