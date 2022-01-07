; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_uart16550* }
%struct.snd_uart16550 = type { i64, i64, i32, i32, i8*, i32, i32 }

@snd_uart16550_output_write.lasttime = internal global i64 0, align 8
@SNDRV_SERIAL_MS124W_MB = common dso_local global i64 0, align 8
@TX_BUFF_SIZE = common dso_local global i32 0, align 4
@SNDRV_SERIAL_SOUNDCANVAS = common dso_local global i64 0, align 8
@SNDRV_SERIAL_GENERIC = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @snd_uart16550_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_uart16550_output_write(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.snd_uart16550*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_uart16550*, %struct.snd_uart16550** %11, align 8
  store %struct.snd_uart16550* %12, %struct.snd_uart16550** %6, align 8
  %13 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %14 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %13, i32 0, i32 5
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %18 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %23 = call i32 @snd_uart16550_io_loop(%struct.snd_uart16550* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %26 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_SERIAL_MS124W_MB, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %55
  %32 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %33 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TX_BUFF_SIZE, align 4
  %36 = sub nsw i32 %35, 2
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %64

39:                                               ; preds = %31
  %40 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %41 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %40, i8* %4, i32 1)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %64

44:                                               ; preds = %39
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 4
  %49 = or i32 %48, 8
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %5, align 1
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i8 -8, i8* %5, align 1
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %57 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %58 = load i8, i8* %5, align 1
  %59 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %56, %struct.snd_rawmidi_substream* %57, i8 zeroext %58)
  %60 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %61 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %62 = load i8, i8* %4, align 1
  %63 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %60, %struct.snd_rawmidi_substream* %61, i8 zeroext %62)
  br label %31

64:                                               ; preds = %43, %38
  br label %190

65:                                               ; preds = %24
  store i8 0, i8* %7, align 1
  br label %66

66:                                               ; preds = %185, %65
  %67 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %68 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %67, i8* %4, i32 1)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %188

70:                                               ; preds = %66
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %70
  %75 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %76 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SNDRV_SERIAL_SOUNDCANVAS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %82 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SNDRV_SERIAL_GENERIC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %155

86:                                               ; preds = %80, %74
  %87 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %88 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %91 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %86
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i64, i64* @snd_uart16550_output_write.lasttime, align 8
  %97 = load i32, i32* @HZ, align 4
  %98 = mul nsw i32 3, %97
  %99 = sext i32 %98 to i64
  %100 = add i64 %96, %99
  %101 = call i64 @time_after(i64 %95, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %94, %86
  %104 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %105 = call i64 @snd_uart16550_buffer_can_write(%struct.snd_uart16550* %104, i32 3)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %147

107:                                              ; preds = %103
  %108 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %109 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %112 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %114 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %115 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %113, %struct.snd_rawmidi_substream* %114, i8 zeroext -11)
  %116 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %117 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %118 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %119 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  %122 = trunc i32 %121 to i8
  %123 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %116, %struct.snd_rawmidi_substream* %117, i8 zeroext %122)
  %124 = load i8, i8* %4, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp slt i32 %125, 128
  br i1 %126, label %127, label %146

127:                                              ; preds = %107
  %128 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %129 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SNDRV_SERIAL_SOUNDCANVAS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %135 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %136 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %137 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %140 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %134, %struct.snd_rawmidi_substream* %135, i8 zeroext %144)
  br label %146

146:                                              ; preds = %133, %127, %107
  br label %154

147:                                              ; preds = %103
  %148 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %149 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %188

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %146
  br label %155

155:                                              ; preds = %154, %94, %80, %70
  %156 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %157 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %158 = load i8, i8* %4, align 1
  %159 = call i32 @snd_uart16550_output_byte(%struct.snd_uart16550* %156, %struct.snd_rawmidi_substream* %157, i8 zeroext %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %163 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  br label %188

167:                                              ; preds = %161, %155
  %168 = load i8, i8* %4, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp sge i32 %169, 128
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load i8, i8* %4, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp slt i32 %173, 240
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load i8, i8* %4, align 1
  %177 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %178 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %181 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 %176, i8* %184, align 1
  br label %185

185:                                              ; preds = %175, %171, %167
  store i8 1, i8* %7, align 1
  %186 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %187 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %186, i32 1)
  br label %66

188:                                              ; preds = %166, %152, %66
  %189 = load i64, i64* @jiffies, align 8
  store i64 %189, i64* @snd_uart16550_output_write.lasttime, align 8
  br label %190

190:                                              ; preds = %188, %64
  %191 = load %struct.snd_uart16550*, %struct.snd_uart16550** %6, align 8
  %192 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %191, i32 0, i32 5
  %193 = load i64, i64* %3, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_uart16550_io_loop(%struct.snd_uart16550*) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_uart16550_output_byte(%struct.snd_uart16550*, %struct.snd_rawmidi_substream*, i8 zeroext) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @snd_uart16550_buffer_can_write(%struct.snd_uart16550*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
