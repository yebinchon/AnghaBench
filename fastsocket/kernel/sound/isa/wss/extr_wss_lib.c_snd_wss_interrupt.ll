; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_IRQ = common dso_local global i8 0, align 1
@CS4231_IRQ_STATUS = common dso_local global i32 0, align 4
@CS4231_TIMER_IRQ = common dso_local global i8 0, align 1
@WSS_HW_INTERWAVE = common dso_local global i32 0, align 4
@WSS_MODE_PLAY = common dso_local global i32 0, align 4
@WSS_MODE_RECORD = common dso_local global i32 0, align 4
@CS4231_RECORD_IRQ = common dso_local global i8 0, align 1
@CS4231_ALL_IRQS = common dso_local global i8 0, align 1
@STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_wss*
  store %struct.snd_wss* %8, %struct.snd_wss** %5, align 8
  %9 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %10 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8, i8* @CS4231_PLAYBACK_IRQ, align 1
  store i8 %16, i8* %6, align 1
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %19 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %20 = call zeroext i8 @snd_wss_in(%struct.snd_wss* %18, i32 %19)
  store i8 %20, i8* %6, align 1
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @CS4231_TIMER_IRQ, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %35 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %34, i32 0, i32 6
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %38 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %37, i32 0, i32 6
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_timer_interrupt(%struct.TYPE_2__* %36, i32 %41)
  br label %43

43:                                               ; preds = %33, %28
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %46 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %44
  %50 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %51 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WSS_HW_INTERWAVE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %49
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @CS4231_PLAYBACK_IRQ, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %55
  %63 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %64 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WSS_MODE_PLAY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %71 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %76 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @snd_pcm_period_elapsed(i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %82 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WSS_MODE_RECORD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %89 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %94 = call i32 @snd_wss_overrange(%struct.snd_wss* %93)
  %95 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %96 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @snd_pcm_period_elapsed(i64 %97)
  br label %99

99:                                               ; preds = %92, %87
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %55
  br label %141

102:                                              ; preds = %49, %44
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @CS4231_PLAYBACK_IRQ, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %111 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %116 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @snd_pcm_period_elapsed(i64 %117)
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %102
  %121 = load i8, i8* %6, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @CS4231_RECORD_IRQ, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %129 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %134 = call i32 @snd_wss_overrange(%struct.snd_wss* %133)
  %135 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %136 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @snd_pcm_period_elapsed(i64 %137)
  br label %139

139:                                              ; preds = %132, %127
  br label %140

140:                                              ; preds = %139, %120
  br label %141

141:                                              ; preds = %140, %101
  %142 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %143 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %142, i32 0, i32 2
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load i8, i8* @CS4231_ALL_IRQS, align 1
  %146 = zext i8 %145 to i32
  %147 = xor i32 %146, -1
  %148 = load i8, i8* %6, align 1
  %149 = zext i8 %148 to i32
  %150 = xor i32 %149, -1
  %151 = or i32 %147, %150
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %6, align 1
  %153 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %154 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %141
  %160 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %161 = load i32, i32* @STATUS, align 4
  %162 = call i32 @CS4231P(i32 %161)
  %163 = call i32 @wss_outb(%struct.snd_wss* %160, i32 %162, i32 0)
  br label %169

164:                                              ; preds = %141
  %165 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %166 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %167 = load i8, i8* %6, align 1
  %168 = call i32 @snd_wss_out(%struct.snd_wss* %165, i32 %166, i8 zeroext %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %171 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %170, i32 0, i32 2
  %172 = call i32 @spin_unlock(i32* %171)
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %173
}

declare dso_local zeroext i8 @snd_wss_in(%struct.snd_wss*, i32) #1

declare dso_local i32 @snd_timer_interrupt(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_wss_overrange(%struct.snd_wss*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wss_outb(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @CS4231P(i32) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
