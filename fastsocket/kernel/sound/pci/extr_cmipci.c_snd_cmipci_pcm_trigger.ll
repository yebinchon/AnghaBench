; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32 }
%struct.cmipci_pcm = type { i32, i32, i32, i32 }

@CM_CH0_INT_EN = common dso_local global i32 0, align 4
@CM_CHEN0 = common dso_local global i32 0, align 4
@CM_RST_CH0 = common dso_local global i32 0, align 4
@CM_PAUSE0 = common dso_local global i32 0, align 4
@CM_REG_INT_HLDCLR = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.cmipci_pcm*, i32)* @snd_cmipci_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_pcm_trigger(%struct.cmipci* %0, %struct.cmipci_pcm* %1, i32 %2) #0 {
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca %struct.cmipci_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %4, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @CM_CH0_INT_EN, align 4
  %13 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %14 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @CM_CHEN0, align 4
  %18 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CM_RST_CH0, align 4
  %23 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CM_PAUSE0, align 4
  %28 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %33 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %114 [
    i32 130, label %36
    i32 129, label %54
    i32 133, label %89
    i32 128, label %89
    i32 132, label %101
    i32 131, label %101
  ]

36:                                               ; preds = %3
  %37 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %38 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %40 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %45 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %49 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %50 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %51 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_cmipci_write(%struct.cmipci* %48, i32 %49, i32 %52)
  br label %117

54:                                               ; preds = %3
  %55 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %56 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %58 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %64 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %68 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %69 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %70 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_cmipci_write(%struct.cmipci* %67, i32 %68, i32 %73)
  %75 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %76 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %77 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %78 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = call i32 @snd_cmipci_write(%struct.cmipci* %75, i32 %76, i32 %82)
  %84 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %85 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %88 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %117

89:                                               ; preds = %3, %3
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %92 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %96 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %97 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %98 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snd_cmipci_write(%struct.cmipci* %95, i32 %96, i32 %99)
  br label %117

101:                                              ; preds = %3, %3
  %102 = load i32, i32* %10, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %105 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %109 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %110 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %111 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snd_cmipci_write(%struct.cmipci* %108, i32 %109, i32 %112)
  br label %117

114:                                              ; preds = %3
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %101, %89, %54, %36
  %118 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %119 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
