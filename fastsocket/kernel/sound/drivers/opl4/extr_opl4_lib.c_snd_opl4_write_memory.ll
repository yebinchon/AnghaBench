; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_lib.c_snd_opl4_write_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_lib.c_snd_opl4_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32, i64 }

@OPL4_REG_MEMORY_CONFIGURATION = common dso_local global i32 0, align 4
@OPL4_MODE_BIT = common dso_local global i32 0, align 4
@OPL4_REG_MEMORY_ADDRESS_HIGH = common dso_local global i32 0, align 4
@OPL4_REG_MEMORY_ADDRESS_MID = common dso_local global i32 0, align 4
@OPL4_REG_MEMORY_ADDRESS_LOW = common dso_local global i32 0, align 4
@OPL4_REG_MEMORY_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl4_write_memory(%struct.snd_opl4* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_opl4*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %12 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %16 = load i32, i32* @OPL4_REG_MEMORY_CONFIGURATION, align 4
  %17 = call i32 @snd_opl4_read(%struct.snd_opl4* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %19 = load i32, i32* @OPL4_REG_MEMORY_CONFIGURATION, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OPL4_MODE_BIT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @snd_opl4_write(%struct.snd_opl4* %18, i32 %19, i32 %22)
  %24 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %25 = load i32, i32* @OPL4_REG_MEMORY_ADDRESS_HIGH, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 16
  %28 = call i32 @snd_opl4_write(%struct.snd_opl4* %24, i32 %25, i32 %27)
  %29 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %30 = load i32, i32* @OPL4_REG_MEMORY_ADDRESS_MID, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @snd_opl4_write(%struct.snd_opl4* %29, i32 %30, i32 %32)
  %34 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %35 = load i32, i32* @OPL4_REG_MEMORY_ADDRESS_LOW, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @snd_opl4_write(%struct.snd_opl4* %34, i32 %35, i32 %36)
  %38 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %39 = call i32 @snd_opl4_wait(%struct.snd_opl4* %38)
  %40 = load i32, i32* @OPL4_REG_MEMORY_DATA, align 4
  %41 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %42 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @outb(i32 %40, i64 %43)
  %45 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %46 = call i32 @snd_opl4_wait(%struct.snd_opl4* %45)
  %47 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %48 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @outsb(i64 %50, i8* %51, i32 %52)
  %54 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %55 = load i32, i32* @OPL4_REG_MEMORY_CONFIGURATION, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_opl4_write(%struct.snd_opl4* %54, i32 %55, i32 %56)
  %58 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %59 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_opl4_read(%struct.snd_opl4*, i32) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i32, i32) #1

declare dso_local i32 @snd_opl4_wait(%struct.snd_opl4*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outsb(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
