; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_ad1848_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_ad1848_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@REGSEL = common dso_local global i32 0, align 4
@CS4231_INIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CS4231_MISC_INFO = common dso_local global i32 0, align 4
@CS4231_RIGHT_INPUT = common dso_local global i32 0, align 4
@CS4231_ENABLE_MIC_GAIN = common dso_local global i8 0, align 1
@WSS_HW_AD1847 = common dso_local global i16 0, align 2
@CS4231_LEFT_INPUT = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@WSS_HW_TYPE_MASK = common dso_local global i32 0, align 4
@WSS_HW_DETECT = common dso_local global i32 0, align 4
@CS4231_MODE2 = common dso_local global i32 0, align 4
@CS4231_VERSION = common dso_local global i32 0, align 4
@WSS_HW_CMI8330 = common dso_local global i16 0, align 2
@WSS_HW_CS4248 = common dso_local global i16 0, align 2
@WSS_HW_AD1848 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_wss*)* @snd_ad1848_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1848_probe(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 1000)
  %12 = add i64 %10, %11
  store i64 %12, i64* %4, align 8
  store i16 0, i16* %7, align 2
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %15 = load i32, i32* @REGSEL, align 4
  %16 = call i32 @CS4231P(i32 %15)
  %17 = call i32 @wss_inb(%struct.snd_wss* %14, i32 %16)
  %18 = load i32, i32* @CS4231_INIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %180

29:                                               ; preds = %21
  %30 = call i32 (...) @cond_resched()
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %33 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %32, i32 0, i32 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %37 = load i32, i32* @CS4231_MISC_INFO, align 4
  %38 = call i32 @snd_wss_dout(%struct.snd_wss* %36, i32 %37, i32 0)
  %39 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %40 = load i32, i32* @CS4231_RIGHT_INPUT, align 4
  %41 = call i32 @snd_wss_dout(%struct.snd_wss* %39, i32 %40, i32 69)
  %42 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %43 = load i32, i32* @CS4231_RIGHT_INPUT, align 4
  %44 = call i32 @snd_wss_in(%struct.snd_wss* %42, i32 %43)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %6, align 1
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 69
  br i1 %48, label %49, label %62

49:                                               ; preds = %31
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CS4231_ENABLE_MIC_GAIN, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 69
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %174

60:                                               ; preds = %49
  %61 = load i16, i16* @WSS_HW_AD1847, align 2
  store i16 %61, i16* %7, align 2
  br label %80

62:                                               ; preds = %31
  %63 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %64 = load i32, i32* @CS4231_LEFT_INPUT, align 4
  %65 = call i32 @snd_wss_dout(%struct.snd_wss* %63, i32 %64, i32 170)
  %66 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %67 = load i32, i32* @CS4231_LEFT_INPUT, align 4
  %68 = call i32 @snd_wss_in(%struct.snd_wss* %66, i32 %67)
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %6, align 1
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @CS4231_ENABLE_MIC_GAIN, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %71, %73
  %75 = icmp ne i32 %74, 170
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %174

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %82 = load i32, i32* @STATUS, align 4
  %83 = call i32 @CS4231P(i32 %82)
  %84 = call i32 @wss_inb(%struct.snd_wss* %81, i32 %83)
  %85 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %86 = load i32, i32* @STATUS, align 4
  %87 = call i32 @CS4231P(i32 %86)
  %88 = call i32 @wss_outb(%struct.snd_wss* %85, i32 %87, i32 0)
  %89 = call i32 (...) @mb()
  %90 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %91 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @WSS_HW_TYPE_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @WSS_HW_DETECT, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %174

98:                                               ; preds = %80
  %99 = load i16, i16* %7, align 2
  %100 = icmp ne i16 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i16, i16* %7, align 2
  %103 = zext i16 %102 to i32
  %104 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %105 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %174

106:                                              ; preds = %98
  %107 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %108 = load i32, i32* @CS4231_MISC_INFO, align 4
  %109 = call i32 @snd_wss_in(%struct.snd_wss* %107, i32 %108)
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %6, align 1
  %111 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %112 = load i32, i32* @CS4231_MISC_INFO, align 4
  %113 = load i32, i32* @CS4231_MODE2, align 4
  %114 = call i32 @snd_wss_dout(%struct.snd_wss* %111, i32 %112, i32 %113)
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %151, %106
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %154

118:                                              ; preds = %115
  %119 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @snd_wss_in(%struct.snd_wss* %119, i32 %120)
  %122 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 16, %123
  %125 = call i32 @snd_wss_in(%struct.snd_wss* %122, i32 %124)
  %126 = icmp ne i32 %121, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %118
  %128 = load i8, i8* %6, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 15
  %131 = icmp ne i32 %130, 10
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %170

133:                                              ; preds = %127
  %134 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %135 = load i32, i32* @CS4231_VERSION, align 4
  %136 = call i32 @snd_wss_dout(%struct.snd_wss* %134, i32 %135, i32 0)
  %137 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %138 = load i32, i32* @CS4231_VERSION, align 4
  %139 = call i32 @snd_wss_in(%struct.snd_wss* %137, i32 %138)
  %140 = and i32 %139, 231
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %6, align 1
  %142 = load i8, i8* %6, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %133
  %145 = load i16, i16* @WSS_HW_CMI8330, align 2
  %146 = zext i16 %145 to i32
  %147 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %148 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %133
  br label %170

150:                                              ; preds = %118
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %115

154:                                              ; preds = %115
  %155 = load i8, i8* %6, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 128
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i16, i16* @WSS_HW_CS4248, align 2
  %161 = zext i16 %160 to i32
  %162 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %163 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %169

164:                                              ; preds = %154
  %165 = load i16, i16* @WSS_HW_AD1848, align 2
  %166 = zext i16 %165 to i32
  %167 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %168 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %149, %132
  %171 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %172 = load i32, i32* @CS4231_MISC_INFO, align 4
  %173 = call i32 @snd_wss_dout(%struct.snd_wss* %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %170, %101, %97, %76, %57
  %175 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %176 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %175, i32 0, i32 1
  %177 = load i64, i64* %5, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %174, %26
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wss_inb(%struct.snd_wss*, i32) #1

declare dso_local i32 @CS4231P(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_dout(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @snd_wss_in(%struct.snd_wss*, i32) #1

declare dso_local i32 @wss_outb(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
