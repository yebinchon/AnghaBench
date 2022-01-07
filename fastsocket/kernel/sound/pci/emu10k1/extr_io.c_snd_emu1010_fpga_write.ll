; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu1010_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@A_IOCFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 63
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %63

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 64
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %12
  store i32 1, i32* %4, align 4
  br label %63

21:                                               ; preds = %17
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @A_IOCFG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i32 %26, i64 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 128
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @A_IOCFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outl(i32 %35, i64 %40)
  %42 = call i32 @udelay(i32 10)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @A_IOCFG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outl(i32 %43, i64 %48)
  %50 = call i32 @udelay(i32 10)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 128
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @A_IOCFG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outl(i32 %52, i64 %57)
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %60 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %21, %20, %11
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
