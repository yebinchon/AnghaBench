; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@A_IOCFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu1010_fpga_read(%struct.snd_emu10k1* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 63
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %49

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 64
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @A_IOCFG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i32 %19, i64 %24)
  %26 = call i32 @udelay(i32 10)
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 128
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @A_IOCFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outl(i32 %28, i64 %33)
  %35 = call i32 @udelay(i32 10)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @A_IOCFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inl(i64 %40)
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 127
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %12, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
