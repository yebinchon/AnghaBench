; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ptr_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ptr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64, i64 }

@A_PTR_ADDRESS_MASK = common dso_local global i32 0, align 4
@PTR_ADDRESS_MASK = common dso_local global i32 0, align 4
@PTR_CHANNELNUM_MASK = common dso_local global i32 0, align 4
@PTR = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @A_PTR_ADDRESS_MASK, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @PTR_ADDRESS_MASK, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PTR_CHANNELNUM_MASK, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -16777216
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = lshr i32 %36, 24
  %38 = and i32 %37, 63
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %12, align 1
  %40 = load i32, i32* %6, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 31
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %13, align 1
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i8, i8* %13, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %47, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PTR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 %55, i64 %60)
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DATA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inl(i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %72, %73
  %75 = load i8, i8* %13, align 1
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %74, %76
  store i32 %77, i32* %4, align 4
  br label %101

78:                                               ; preds = %22
  %79 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %79, i32 0, i32 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PTR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outl(i32 %83, i64 %88)
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DATA, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @inl(i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %96, i32 0, i32 0
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %78, %35
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
