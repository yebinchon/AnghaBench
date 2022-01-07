; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.azx_dev*, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.azx_dev = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTSTS = common dso_local global i32 0, align 4
@SD_STS = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4
@SD_INT_COMPLETE = common dso_local global i32 0, align 4
@RIRBSTS = common dso_local global i32 0, align 4
@RIRB_INT_MASK = common dso_local global i32 0, align 4
@RIRB_INT_RESPONSE = common dso_local global i32 0, align 4
@AZX_DCAPS_RIRB_PRE_DELAY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@RPM_ACTIVE = common dso_local global i64 0, align 8
@STATESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @azx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.azx*, align 8
  %7 = alloca %struct.azx_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.azx*
  store %struct.azx* %13, %struct.azx** %6, align 8
  %14 = load %struct.azx*, %struct.azx** %6, align 8
  %15 = getelementptr inbounds %struct.azx, %struct.azx* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.azx*, %struct.azx** %6, align 8
  %18 = getelementptr inbounds %struct.azx, %struct.azx* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.azx*, %struct.azx** %6, align 8
  %23 = getelementptr inbounds %struct.azx, %struct.azx* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %166

26:                                               ; preds = %2
  %27 = load %struct.azx*, %struct.azx** %6, align 8
  %28 = load i32, i32* @INTSTS, align 4
  %29 = call i32 @azx_readl(%struct.azx* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.azx*, %struct.azx** %6, align 8
  %34 = getelementptr inbounds %struct.azx, %struct.azx* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %166

37:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %128, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.azx*, %struct.azx** %6, align 8
  %41 = getelementptr inbounds %struct.azx, %struct.azx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %131

44:                                               ; preds = %38
  %45 = load %struct.azx*, %struct.azx** %6, align 8
  %46 = getelementptr inbounds %struct.azx, %struct.azx* %45, i32 0, i32 5
  %47 = load %struct.azx_dev*, %struct.azx_dev** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %47, i64 %49
  store %struct.azx_dev* %50, %struct.azx_dev** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %53 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %127

57:                                               ; preds = %44
  %58 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %59 = load i32, i32* @SD_STS, align 4
  %60 = call i32 @azx_sd_readb(%struct.azx_dev* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %62 = load i32, i32* @SD_STS, align 4
  %63 = load i32, i32* @SD_INT_MASK, align 4
  %64 = call i32 @azx_sd_writeb(%struct.azx_dev* %61, i32 %62, i32 %63)
  %65 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %66 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %71 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SD_INT_COMPLETE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %69, %57
  br label %128

80:                                               ; preds = %74
  %81 = load %struct.azx*, %struct.azx** %6, align 8
  %82 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %83 = call i32 @azx_position_ok(%struct.azx* %81, %struct.azx_dev* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %88 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.azx*, %struct.azx** %6, align 8
  %90 = getelementptr inbounds %struct.azx, %struct.azx* %89, i32 0, i32 2
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %93 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @snd_pcm_period_elapsed(i32 %94)
  %96 = load %struct.azx*, %struct.azx** %6, align 8
  %97 = getelementptr inbounds %struct.azx, %struct.azx* %96, i32 0, i32 2
  %98 = call i32 @spin_lock(i32* %97)
  br label %126

99:                                               ; preds = %80
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load %struct.azx*, %struct.azx** %6, align 8
  %104 = getelementptr inbounds %struct.azx, %struct.azx* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.azx*, %struct.azx** %6, align 8
  %109 = getelementptr inbounds %struct.azx, %struct.azx* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %107
  %115 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %116 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.azx*, %struct.azx** %6, align 8
  %118 = getelementptr inbounds %struct.azx, %struct.azx* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.azx*, %struct.azx** %6, align 8
  %123 = getelementptr inbounds %struct.azx, %struct.azx* %122, i32 0, i32 3
  %124 = call i32 @queue_work(i64 %121, i32* %123)
  br label %125

125:                                              ; preds = %114, %107, %102, %99
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %44
  br label %128

128:                                              ; preds = %127, %79
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %38

131:                                              ; preds = %38
  %132 = load %struct.azx*, %struct.azx** %6, align 8
  %133 = load i32, i32* @RIRBSTS, align 4
  %134 = call i32 @azx_readb(%struct.azx* %132, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @RIRB_INT_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @RIRB_INT_RESPONSE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.azx*, %struct.azx** %6, align 8
  %146 = getelementptr inbounds %struct.azx, %struct.azx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AZX_DCAPS_RIRB_PRE_DELAY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = call i32 @udelay(i32 80)
  br label %153

153:                                              ; preds = %151, %144
  %154 = load %struct.azx*, %struct.azx** %6, align 8
  %155 = call i32 @azx_update_rirb(%struct.azx* %154)
  br label %156

156:                                              ; preds = %153, %139
  %157 = load %struct.azx*, %struct.azx** %6, align 8
  %158 = load i32, i32* @RIRBSTS, align 4
  %159 = load i32, i32* @RIRB_INT_MASK, align 4
  %160 = call i32 @azx_writeb(%struct.azx* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %131
  %162 = load %struct.azx*, %struct.azx** %6, align 8
  %163 = getelementptr inbounds %struct.azx, %struct.azx* %162, i32 0, i32 2
  %164 = call i32 @spin_unlock(i32* %163)
  %165 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %32, %21
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local i32 @azx_sd_readb(%struct.azx_dev*, i32) #1

declare dso_local i32 @azx_sd_writeb(%struct.azx_dev*, i32, i32) #1

declare dso_local i32 @azx_position_ok(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @queue_work(i64, i32*) #1

declare dso_local i32 @azx_readb(%struct.azx*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @azx_update_rirb(%struct.azx*) #1

declare dso_local i32 @azx_writeb(%struct.azx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
