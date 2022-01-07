; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_trident = type { i32, i32 }

@LEGACY_DMAR15 = common dso_local global i32 0, align 4
@LEGACY_DMAR11 = common dso_local global i32 0, align 4
@LEGACY_DMAR0 = common dso_local global i32 0, align 4
@LEGACY_DMAR6 = common dso_local global i32 0, align 4
@LEGACY_DMAR4 = common dso_local global i32 0, align 4
@T4D_SBDELTA_DELTA_R = common dso_local global i32 0, align 4
@T4D_SBBL_SBCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_trident* %9, %struct.snd_trident** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 6
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  store %struct.snd_trident_voice* %15, %struct.snd_trident_voice** %5, align 8
  %16 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %17 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %20 = load i32, i32* @LEGACY_DMAR15, align 4
  %21 = call i32 @TRID_REG(%struct.snd_trident* %19, i32 %20)
  %22 = call i32 @outb(i32 0, i32 %21)
  %23 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %24 = load i32, i32* @LEGACY_DMAR11, align 4
  %25 = call i32 @TRID_REG(%struct.snd_trident* %23, i32 %24)
  %26 = call i32 @outb(i32 84, i32 %25)
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %31 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %33 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %36 = load i32, i32* @LEGACY_DMAR0, align 4
  %37 = call i32 @TRID_REG(%struct.snd_trident* %35, i32 %36)
  %38 = call i32 @outl(i32 %34, i32 %37)
  %39 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %40 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %39, i32 0, i32 20
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %45 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %44, i32 0, i32 20
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %50 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %43, %1
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 16711680
  %57 = lshr i32 %56, 16
  %58 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %59 = load i32, i32* @LEGACY_DMAR6, align 4
  %60 = call i32 @TRID_REG(%struct.snd_trident* %58, i32 %59)
  %61 = call i32 @outb(i32 %57, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 65535
  %64 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %65 = load i32, i32* @LEGACY_DMAR4, align 4
  %66 = call i32 @TRID_REG(%struct.snd_trident* %64, i32 %65)
  %67 = call i32 @outw(i32 %63, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = add i32 196608000, %73
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = udiv i32 %74, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %81 = load i32, i32* @T4D_SBDELTA_DELTA_R, align 4
  %82 = call i32 @TRID_REG(%struct.snd_trident* %80, i32 %81)
  %83 = call i32 @outw(i32 %79, i32 %82)
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @snd_pcm_format_width(i32 %86)
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %95

89:                                               ; preds = %51
  %90 = load i32, i32* %7, align 4
  %91 = lshr i32 %90, 1
  %92 = sub i32 %91, 1
  %93 = trunc i32 %92 to i16
  %94 = zext i16 %93 to i32
  store i32 %94, i32* %6, align 4
  br label %100

95:                                               ; preds = %51
  %96 = load i32, i32* %7, align 4
  %97 = sub i32 %96, 1
  %98 = trunc i32 %97 to i16
  %99 = zext i16 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %106 = load i32, i32* @T4D_SBBL_SBCL, align 4
  %107 = call i32 @TRID_REG(%struct.snd_trident* %105, i32 %106)
  %108 = call i32 @outl(i32 %104, i32 %107)
  %109 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %110 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %109, i32 0, i32 0
  store i32 25, i32* %110, align 4
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_pcm_format_width(i32 %113)
  %115 = icmp eq i32 %114, 16
  br i1 %115, label %116, label %121

116:                                              ; preds = %100
  %117 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %118 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, 128
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %100
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @snd_pcm_format_signed(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %129 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, 32
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %121
  %133 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %139 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, 64
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @snd_trident_convert_rate(i32 %145)
  %147 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %148 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %147, i32 0, i32 19
  store i32 %146, i32* %148, align 8
  %149 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %150 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @snd_trident_spurious_threshold(i32 %151, i32 %154)
  %156 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %157 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %156, i32 0, i32 18
  store i32 %155, i32* %157, align 4
  %158 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %159 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %164 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %169 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %168, i32 0, i32 17
  store i32 %167, i32* %169, align 8
  %170 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %171 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %170, i32 0, i32 16
  store i64 0, i64* %171, align 8
  %172 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 2
  %176 = add nsw i32 %175, 6
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %179 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %181 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %180, i32 0, i32 3
  store i32 %177, i32* %181, align 4
  %182 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %183 = call i32 @snd_trident_control_mode(%struct.snd_pcm_substream* %182)
  %184 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %185 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %184, i32 0, i32 15
  store i32 %183, i32* %185, align 8
  %186 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %187 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %186, i32 0, i32 5
  store i32 3, i32* %187, align 4
  %188 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %189 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %188, i32 0, i32 6
  store i32 127, i32* %189, align 8
  %190 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %191 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %190, i32 0, i32 7
  store i32 127, i32* %191, align 4
  %192 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %193 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %192, i32 0, i32 8
  store i32 1, i32* %193, align 8
  %194 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %195 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %194, i32 0, i32 9
  store i32 127, i32* %195, align 4
  %196 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %197 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %196, i32 0, i32 10
  store i32 1023, i32* %197, align 8
  %198 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %199 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %198, i32 0, i32 14
  store i64 0, i64* %199, align 8
  %200 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %201 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %200, i32 0, i32 13
  store i64 0, i64* %201, align 8
  %202 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %203 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %202, i32 0, i32 12
  store i64 0, i64* %203, align 8
  %204 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %205 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %204, i32 0, i32 11
  store i64 0, i64* %205, align 8
  %206 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %207 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %208 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %206, %struct.snd_trident_voice* %207)
  %209 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %210 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %209, i32 0, i32 1
  %211 = call i32 @spin_unlock_irq(i32* %210)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_signed(i32) #1

declare dso_local i32 @snd_trident_convert_rate(i32) #1

declare dso_local i32 @snd_trident_spurious_threshold(i32, i32) #1

declare dso_local i32 @snd_trident_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_trident_write_voice_regs(%struct.snd_trident*, %struct.snd_trident_voice*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
