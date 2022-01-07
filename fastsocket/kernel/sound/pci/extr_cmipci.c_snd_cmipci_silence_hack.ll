; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_silence_hack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_silence_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, i64 }
%struct.cmipci_pcm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME2 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME2 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_ASFC_MASK = common dso_local global i32 0, align 4
@CM_ASFC_SHIFT = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_CH0FMT_MASK = common dso_local global i32 0, align 4
@CM_CH0FMT_SHIFT = common dso_local global i32 0, align 4
@CM_CH0_SRATE_MASK = common dso_local global i32 0, align 4
@CM_CHEN0 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@CM_RST_CH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*, %struct.cmipci_pcm*)* @snd_cmipci_silence_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cmipci_silence_hack(%struct.cmipci* %0, %struct.cmipci_pcm* %1) #0 {
  %3 = alloca %struct.cmipci*, align 8
  %4 = alloca %struct.cmipci_pcm*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %3, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %4, align 8
  %8 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %9 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %14 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %190

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = icmp ne %struct.snd_pcm_runtime* %18, null
  br i1 %19, label %20, label %190

20:                                               ; preds = %17
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %190

25:                                               ; preds = %20
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @memset(i64 %28, i32 0, i32 %29)
  %31 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %32 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @CM_REG_CH1_FRAME2, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @CM_REG_CH0_FRAME2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sdiv i32 %41, 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sdiv i32 %44, 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 %47, 16
  %49 = or i32 %43, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @snd_cmipci_write(%struct.cmipci* %50, i32 %51, i32 %52)
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %39
  %59 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %60 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %61 = call i32 @set_dac_channels(%struct.cmipci* %59, %struct.cmipci_pcm* %60, i32 2)
  br label %62

62:                                               ; preds = %58, %39
  %63 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %64 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %67 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %68 = call i32 @snd_cmipci_read(%struct.cmipci* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @CM_ASFC_MASK, align 4
  %70 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %71 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 3
  %74 = shl i32 %69, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @CM_ASFC_SHIFT, align 4
  %79 = shl i32 4, %78
  %80 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %81 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 3
  %84 = shl i32 %79, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %88 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @snd_cmipci_write(%struct.cmipci* %87, i32 %88, i32 %89)
  %91 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %92 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %93 = call i32 @snd_cmipci_read(%struct.cmipci* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @CM_CH0FMT_MASK, align 4
  %95 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %96 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 2
  %99 = shl i32 %94, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @CM_CH0FMT_SHIFT, align 4
  %104 = shl i32 3, %103
  %105 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %106 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  %109 = shl i32 %104, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %113 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %62
  %117 = load i32, i32* @CM_CH0_SRATE_MASK, align 4
  %118 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %119 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 2
  %122 = shl i32 %117, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %116, %62
  %127 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %128 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @snd_cmipci_write(%struct.cmipci* %127, i32 %128, i32 %129)
  %131 = load i32, i32* @CM_CHEN0, align 4
  %132 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %133 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %131, %134
  %136 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %137 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %141 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %142 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %143 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @snd_cmipci_write(%struct.cmipci* %140, i32 %141, i32 %144)
  %146 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %147 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock_irq(i32* %147)
  %149 = call i32 @msleep(i32 1)
  %150 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %151 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %150, i32 0, i32 1
  %152 = call i32 @spin_lock_irq(i32* %151)
  %153 = load i32, i32* @CM_CHEN0, align 4
  %154 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %155 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %153, %156
  %158 = xor i32 %157, -1
  %159 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %160 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load i32, i32* @CM_RST_CH0, align 4
  %164 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %165 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = shl i32 %163, %166
  store i32 %167, i32* %7, align 4
  %168 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %169 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %170 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %171 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @snd_cmipci_write(%struct.cmipci* %168, i32 %169, i32 %174)
  %176 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %177 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %178 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %179 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = call i32 @snd_cmipci_write(%struct.cmipci* %176, i32 %177, i32 %183)
  %185 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %186 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %185, i32 0, i32 1
  %187 = call i32 @spin_unlock_irq(i32* %186)
  %188 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %4, align 8
  %189 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %188, i32 0, i32 1
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %126, %20, %17, %2
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @set_dac_channels(%struct.cmipci*, %struct.cmipci_pcm*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
