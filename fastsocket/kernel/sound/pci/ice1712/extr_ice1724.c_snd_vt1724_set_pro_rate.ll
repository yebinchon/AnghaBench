; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_set_pro_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_set_pro_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32 (%struct.snd_ice1712*)*, i8 (%struct.snd_ice1712*, i32)*, i32, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_8__, i32, i32 (%struct.snd_ice1712*, i32)*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_8__ = type { i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.2*)* }
%struct.snd_ice1712.1 = type opaque
%struct.snd_ice1712.2 = type opaque
%struct.TYPE_7__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_CONTROL = common dso_local global i32 0, align 4
@DMA_STARTS = common dso_local global i32 0, align 4
@DMA_PAUSE = common dso_local global i32 0, align 4
@DMA_PAUSES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32, i32)* @snd_vt1724_set_pro_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 9
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %12, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %228

31:                                               ; preds = %3
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 7
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = load i32, i32* @DMA_CONTROL, align 4
  %38 = call i32 @ICEMT1724(%struct.snd_ice1712* %36, i32 %37)
  %39 = call i32 @inb(i32 %38)
  %40 = load i32, i32* @DMA_STARTS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %45 = load i32, i32* @DMA_PAUSE, align 4
  %46 = call i32 @ICEMT1724(%struct.snd_ice1712* %44, i32 %45)
  %47 = call i32 @inb(i32 %46)
  %48 = load i32, i32* @DMA_PAUSES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %43, %31
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 7
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %68

65:                                               ; preds = %61, %51
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 0, %64 ], [ %67, %65 ]
  store i32 %69, i32* %4, align 4
  br label %228

70:                                               ; preds = %43
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %75 = call i64 @is_pro_rate_locked(%struct.snd_ice1712* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 7
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %84 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  br label %91

91:                                               ; preds = %88, %87
  %92 = phi i32 [ 0, %87 ], [ %90, %88 ]
  store i32 %92, i32* %4, align 4
  br label %228

93:                                               ; preds = %73, %70
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %95 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %94, i32 0, i32 1
  %96 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %95, align 8
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %98 = call i32 %96(%struct.snd_ice1712* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101, %93
  %106 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %107 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %106, i32 0, i32 8
  %108 = load i32 (%struct.snd_ice1712*, i32)*, i32 (%struct.snd_ice1712*, i32)** %107, align 8
  %109 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 %108(%struct.snd_ice1712* %109, i32 %110)
  br label %124

112:                                              ; preds = %101
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %115 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %120 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %119, i32 0, i32 7
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  store i32 0, i32* %4, align 4
  br label %228

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %127 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %129 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %128, i32 0, i32 2
  %130 = load i8 (%struct.snd_ice1712*, i32)*, i8 (%struct.snd_ice1712*, i32)** %129, align 8
  %131 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call zeroext i8 %130(%struct.snd_ice1712* %131, i32 %132)
  store i8 %133, i8* %9, align 1
  %134 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %135 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %134, i32 0, i32 7
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load i8, i8* %9, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %124
  %142 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %143 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32 (%struct.snd_ice1712.2*)*, i32 (%struct.snd_ice1712.2*)** %144, align 8
  %146 = icmp ne i32 (%struct.snd_ice1712.2*)* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %149 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32 (%struct.snd_ice1712.2*)*, i32 (%struct.snd_ice1712.2*)** %150, align 8
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %153 = bitcast %struct.snd_ice1712* %152 to %struct.snd_ice1712.2*
  %154 = call i32 %151(%struct.snd_ice1712.2* %153)
  br label %155

155:                                              ; preds = %147, %141, %124
  %156 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %157 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %158, align 8
  %160 = icmp ne i32 (%struct.snd_ice1712.1*, i32)* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %163 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %164, align 8
  %166 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %167 = bitcast %struct.snd_ice1712* %166 to %struct.snd_ice1712.1*
  %168 = load i32, i32* %6, align 4
  %169 = call i32 %165(%struct.snd_ice1712.1* %167, i32 %168)
  br label %170

170:                                              ; preds = %161, %155
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %207, %170
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %174 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = icmp ult i32 %172, %175
  br i1 %176, label %177, label %210

177:                                              ; preds = %171
  %178 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %179 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %178, i32 0, i32 5
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %185, align 8
  %187 = icmp ne i32 (%struct.TYPE_12__*, i32)* %186, null
  br i1 %187, label %188, label %206

188:                                              ; preds = %177
  %189 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %190 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %189, i32 0, i32 5
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %196, align 8
  %198 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %199 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %198, i32 0, i32 5
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %202
  %204 = load i32, i32* %6, align 4
  %205 = call i32 %197(%struct.TYPE_12__* %203, i32 %204)
  br label %206

206:                                              ; preds = %188, %177
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %171

210:                                              ; preds = %171
  %211 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %212 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %214, align 8
  %216 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %210
  %218 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %219 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %221, align 8
  %223 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %224 = bitcast %struct.snd_ice1712* %223 to %struct.snd_ice1712.0*
  %225 = load i32, i32* %6, align 4
  %226 = call i32 %222(%struct.snd_ice1712.0* %224, i32 %225)
  br label %227

227:                                              ; preds = %217, %210
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %118, %91, %68, %28
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_pro_rate_locked(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
