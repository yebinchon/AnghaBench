; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_ctl_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_gpr_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu10k1 = type { i32, i64 }
%struct.snd_emu10k1_fx8010_ctl = type { i32, i32, i32, i32*, i32, i32, i64* }

@db_table = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@bass_table = common dso_local global i32** null, align 8
@treble_table = common dso_local global i32** null, align 8
@onoff_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_gpr_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_gpr_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_fx8010_ctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_emu10k1* %14, %struct.snd_emu10k1** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.snd_emu10k1_fx8010_ctl*
  store %struct.snd_emu10k1_fx8010_ctl* %18, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %244, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %247

29:                                               ; preds = %23
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %29
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %72 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  store i32 %70, i32* %9, align 4
  %77 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %243 [
    i32 131, label %80
    i32 129, label %95
    i32 132, label %114
    i32 128, label %169
    i32 130, label %224
  ]

80:                                               ; preds = %69
  %81 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %85, i32 0, i32 6
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %84, %91
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %81, i64 %92, i32 0, i32 %93)
  br label %243

95:                                               ; preds = %69
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %101 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %100, i32 0, i32 6
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %99, %106
  %108 = load i32*, i32** @db_table, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %96, i64 %107, i32 0, i32 %112)
  br label %243

114:                                              ; preds = %69
  %115 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = srem i32 %117, 5
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %114
  %121 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %122 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 5
  %125 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %126 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %120, %114
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %12, align 4
  br label %248

132:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %165, %132
  %134 = load i32, i32* %11, align 4
  %135 = icmp ult i32 %134, 5
  br i1 %135, label %136, label %168

136:                                              ; preds = %133
  %137 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %138 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %139 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %142 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %141, i32 0, i32 6
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %146 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = mul i32 %144, %147
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %143, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %140, %153
  %155 = load i32**, i32*** @bass_table, align 8
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %137, i64 %154, i32 0, i32 %163)
  br label %165

165:                                              ; preds = %136
  %166 = load i32, i32* %11, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %133

168:                                              ; preds = %133
  br label %243

169:                                              ; preds = %69
  %170 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %171 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = srem i32 %172, 5
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %169
  %176 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %177 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %178, 5
  %180 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %181 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %179, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %175, %169
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %12, align 4
  br label %248

187:                                              ; preds = %175
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %220, %187
  %189 = load i32, i32* %11, align 4
  %190 = icmp ult i32 %189, 5
  br i1 %190, label %191, label %223

191:                                              ; preds = %188
  %192 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %193 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %194 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %197 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %196, i32 0, i32 6
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %201 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = mul i32 %199, %202
  %204 = load i32, i32* %10, align 4
  %205 = add i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %198, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %195, %208
  %210 = load i32**, i32*** @treble_table, align 8
  %211 = load i32, i32* %9, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %192, i64 %209, i32 0, i32 %218)
  br label %220

220:                                              ; preds = %191
  %221 = load i32, i32* %11, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %188

223:                                              ; preds = %188
  br label %243

224:                                              ; preds = %69
  %225 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %226 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %227 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.snd_emu10k1_fx8010_ctl*, %struct.snd_emu10k1_fx8010_ctl** %6, align 8
  %230 = getelementptr inbounds %struct.snd_emu10k1_fx8010_ctl, %struct.snd_emu10k1_fx8010_ctl* %229, i32 0, i32 6
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %228, %235
  %237 = load i32*, i32** @onoff_table, align 8
  %238 = load i32, i32* %9, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %225, i64 %236, i32 0, i32 %241)
  br label %243

243:                                              ; preds = %69, %224, %223, %168, %95, %80
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %10, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %23

247:                                              ; preds = %23
  br label %248

248:                                              ; preds = %247, %184, %129
  %249 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %250 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %249, i32 0, i32 0
  %251 = load i64, i64* %7, align 8
  %252 = call i32 @spin_unlock_irqrestore(i32* %250, i64 %251)
  %253 = load i32, i32* %12, align 4
  ret i32 %253
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
