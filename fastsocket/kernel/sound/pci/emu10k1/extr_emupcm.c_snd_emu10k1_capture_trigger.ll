; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1 = type { i32, i32, i64 }

@IPR = common dso_local global i64 0, align 8
@ADCCR = common dso_local global i32 0, align 4
@A_FXWC1 = common dso_local global i32 0, align 4
@A_FXWC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cr_val=0x%x, cr_val2=0x%x\0A\00", align 1
@FXWC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %15, align 8
  store %struct.snd_emu10k1_pcm* %16, %struct.snd_emu10k1_pcm** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %141 [
    i32 130, label %21
    i32 131, label %21
    i32 129, label %93
    i32 128, label %93
  ]

21:                                               ; preds = %2, %2
  %22 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 %24, i64 %29)
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %32 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %31, i32 %34)
  %36 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %79 [
    i32 133, label %39
    i32 132, label %46
  ]

39:                                               ; preds = %21
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %41 = load i32, i32* @ADCCR, align 4
  %42 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %40, i32 %41, i32 0, i32 %44)
  br label %80

46:                                               ; preds = %21
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %53 = load i32, i32* @A_FXWC1, align 4
  %54 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %52, i32 %53, i32 0, i32 %56)
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %59 = load i32, i32* @A_FXWC2, align 4
  %60 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %58, i32 %59, i32 0, i32 %62)
  %64 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_printdd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  br label %78

71:                                               ; preds = %46
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %73 = load i32, i32* @FXWC, align 4
  %74 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %72, i32 %73, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %71, %51
  br label %80

79:                                               ; preds = %21
  br label %80

80:                                               ; preds = %79, %78, %39
  %81 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %82 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %81, i32 %84, i32 0, i32 %87)
  %89 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %92 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %144

93:                                               ; preds = %2, %2
  %94 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %97 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %96, i32 %99)
  %101 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %102 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %105 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IPR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outl(i32 %103, i64 %108)
  %110 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %111 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %110, i32 %113, i32 0, i32 0)
  %115 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %139 [
    i32 133, label %118
    i32 132, label %122
  ]

118:                                              ; preds = %93
  %119 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %120 = load i32, i32* @ADCCR, align 4
  %121 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %119, i32 %120, i32 0, i32 0)
  br label %140

122:                                              ; preds = %93
  %123 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %124 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %129 = load i32, i32* @A_FXWC1, align 4
  %130 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %128, i32 %129, i32 0, i32 0)
  %131 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %132 = load i32, i32* @A_FXWC2, align 4
  %133 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %131, i32 %132, i32 0, i32 0)
  br label %138

134:                                              ; preds = %122
  %135 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %136 = load i32, i32* @FXWC, align 4
  %137 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %135, i32 %136, i32 0, i32 0)
  br label %138

138:                                              ; preds = %134, %127
  br label %140

139:                                              ; preds = %93
  br label %140

140:                                              ; preds = %139, %138, %118
  br label %144

141:                                              ; preds = %2
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %140, %80
  %145 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %146 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
