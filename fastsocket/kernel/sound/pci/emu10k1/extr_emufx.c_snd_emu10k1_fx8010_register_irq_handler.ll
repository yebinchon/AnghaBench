; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_register_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_register_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_irq* }
%struct.snd_emu10k1_fx8010_irq = type { i8, %struct.snd_emu10k1_fx8010_irq*, i8*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_emu10k1_fx8010_interrupt = common dso_local global i32 0, align 4
@INTE_FXDSPENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_fx8010_register_irq_handler(%struct.snd_emu10k1* %0, i32* %1, i8 zeroext %2, i8* %3, %struct.snd_emu10k1_fx8010_irq** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_emu10k1*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.snd_emu10k1_fx8010_irq**, align 8
  %12 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  %13 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store %struct.snd_emu10k1_fx8010_irq** %4, %struct.snd_emu10k1_fx8010_irq*** %11, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.snd_emu10k1_fx8010_irq* @kmalloc(i32 32, i32 %14)
  store %struct.snd_emu10k1_fx8010_irq* %15, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %16 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %17 = icmp eq %struct.snd_emu10k1_fx8010_irq* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %77

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load i8, i8* %9, align 1
  %26 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %31, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* null, %struct.snd_emu10k1_fx8010_irq** %32, align 8
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %40, align 8
  %42 = icmp eq %struct.snd_emu10k1_fx8010_irq* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %21
  %44 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %44, %struct.snd_emu10k1_fx8010_irq** %47, align 8
  %48 = load i32, i32* @snd_emu10k1_fx8010_interrupt, align 4
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %52 = load i32, i32* @INTE_FXDSPENABLE, align 4
  %53 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %51, i32 %52)
  br label %65

54:                                               ; preds = %21
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %57, align 8
  %59 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %60 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %59, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %58, %struct.snd_emu10k1_fx8010_irq** %60, align 8
  %61 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %61, %struct.snd_emu10k1_fx8010_irq** %64, align 8
  br label %65

65:                                               ; preds = %54, %43
  %66 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %67 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.snd_emu10k1_fx8010_irq**, %struct.snd_emu10k1_fx8010_irq*** %11, align 8
  %72 = icmp ne %struct.snd_emu10k1_fx8010_irq** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %12, align 8
  %75 = load %struct.snd_emu10k1_fx8010_irq**, %struct.snd_emu10k1_fx8010_irq*** %11, align 8
  store %struct.snd_emu10k1_fx8010_irq* %74, %struct.snd_emu10k1_fx8010_irq** %75, align 8
  br label %76

76:                                               ; preds = %73, %65
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %18
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.snd_emu10k1_fx8010_irq* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
