; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_invalidate_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_invalidate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_voice = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }

@CD0 = common dso_local global i64 0, align 8
@CCR_CACHEINVALIDSIZE = common dso_local global i64 0, align 8
@CCR_READADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, %struct.snd_emu10k1_voice*)* @snd_emu10k1_playback_invalidate_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %0, i32 %1, %struct.snd_emu10k1_voice* %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emu10k1_voice*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_emu10k1_voice* %2, %struct.snd_emu10k1_voice** %6, align 8
  store i32 64, i32* %12, align 4
  %15 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %16 = icmp eq %struct.snd_emu10k1_voice* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %135

18:                                               ; preds = %3
  %19 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %24, align 8
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %7, align 8
  %26 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %18
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br label %36

36:                                               ; preds = %31, %18
  %37 = phi i1 [ false, %18 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_pcm_format_width(i32 %41)
  %43 = icmp eq i32 %42, 16
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 -2139062144
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @emu10k1_ccis(i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* %11, align 4
  %55 = sub i32 32, %54
  br label %61

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 64, %57
  %59 = add i32 %58, 1
  %60 = lshr i32 %59, 1
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i32 [ %55, %53 ], [ %60, %56 ]
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ugt i32 %63, 16
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 16, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %61
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %73 = load i64, i64* @CD0, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %72, i64 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %84 = load i64, i64* @CD0, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %83, i64 %87, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %67

96:                                               ; preds = %67
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %98 = load i64, i64* @CCR_CACHEINVALIDSIZE, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %97, i64 %98, i32 %99, i32 0)
  %101 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %102 = load i64, i64* @CCR_READADDRESS, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %101, i64 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %96
  %109 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %110 = load i64, i64* @CCR_CACHEINVALIDSIZE, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 1
  %113 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %109, i64 %110, i32 %112, i32 0)
  %114 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %115 = load i64, i64* @CCR_READADDRESS, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %114, i64 %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %108, %96
  %121 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %122 = load i64, i64* @CCR_CACHEINVALIDSIZE, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %121, i64 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %130 = load i64, i64* @CCR_CACHEINVALIDSIZE, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %129, i64 %130, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %17, %128, %120
  ret void
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @emu10k1_ccis(i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
