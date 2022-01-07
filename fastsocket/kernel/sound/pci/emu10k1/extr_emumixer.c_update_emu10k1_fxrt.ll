; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_update_emu10k1_fxrt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_update_emu10k1_fxrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64 }

@A_FXRT1 = common dso_local global i32 0, align 4
@A_FXRT2 = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i8*)* @update_emu10k1_fxrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_emu10k1_fxrt(%struct.snd_emu10k1* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %8 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = load i32, i32* @A_FXRT1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @snd_emu10k1_compose_audigy_fxrt1(i8* %15)
  %17 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %12, i32 %13, i32 %14, i32 %16)
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = load i32, i32* @A_FXRT2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @snd_emu10k1_compose_audigy_fxrt2(i8* %21)
  %23 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %18, i32 %19, i32 %20, i32 %22)
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %26 = load i32, i32* @FXRT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @snd_emu10k1_compose_send_routing(i8* %28)
  %30 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %25, i32 %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt1(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt2(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_send_routing(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
