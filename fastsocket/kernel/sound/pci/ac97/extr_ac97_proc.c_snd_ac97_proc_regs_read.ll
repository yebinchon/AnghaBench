; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ac97* }
%struct.snd_ac97 = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i64* }
%struct.snd_info_buffer = type { i32 }

@AC97_ID_AD1881 = common dso_local global i32 0, align 4
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ac97_proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  store %struct.snd_ac97* %9, %struct.snd_ac97** %5, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, -192
  %17 = load i32, i32* @AC97_ID_AD1881, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %65

23:                                               ; preds = %20
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %23
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %36 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %45, %54
  %56 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %35, i32 %36, i32 28672, i32 %55)
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @snd_ac97_proc_regs_read_main(%struct.snd_ac97* %57, %struct.snd_info_buffer* %58, i32 %59)
  br label %61

61:                                               ; preds = %34, %23
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %67 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %68 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %66, i32 %67, i32 28672, i32 28672)
  br label %73

69:                                               ; preds = %2
  %70 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %72 = call i32 @snd_ac97_proc_regs_read_main(%struct.snd_ac97* %70, %struct.snd_info_buffer* %71, i32 0)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_proc_regs_read_main(%struct.snd_ac97*, %struct.snd_info_buffer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
