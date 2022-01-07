; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_write_voice_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_write_voice_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ALI_GC_CIR = common dso_local global i32 0, align 4
@ALI_CSO_ALPHA_FMS = common dso_local global i32 0, align 4
@ALI_LBA = common dso_local global i32 0, align 4
@ALI_ESO_DELTA = common dso_local global i32 0, align 4
@ALI_GVSEL_PAN_VOC_CTRL_EC = common dso_local global i32 0, align 4
@ALI_EBUF1 = common dso_local global i32 0, align 4
@ALI_EBUF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @snd_ali_write_voice_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_write_voice_regs(%struct.snd_ali* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.snd_ali*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [4 x i32], align 16
  store %struct.snd_ali* %0, %struct.snd_ali** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, 31
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %31 = load i32, i32* @ALI_GC_CIR, align 4
  %32 = call i32 @ALI_REG(%struct.snd_ali* %30, i32 %31)
  %33 = call i32 @outb(i32 %29, i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %19, align 4
  %37 = and i32 %36, 65535
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32, i32* %15, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %17, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %18, align 4
  %45 = and i32 %44, 65535
  %46 = or i32 %43, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %20, align 4
  %49 = shl i32 %48, 31
  %50 = load i32, i32* %21, align 4
  %51 = and i32 %50, 127
  %52 = shl i32 %51, 24
  %53 = or i32 %49, %52
  %54 = load i32, i32* %22, align 4
  %55 = and i32 %54, 255
  %56 = shl i32 %55, 16
  %57 = or i32 %53, %56
  %58 = load i32, i32* %23, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 12
  %61 = or i32 %57, %60
  %62 = load i32, i32* %24, align 4
  %63 = and i32 %62, 4095
  %64 = or i32 %61, %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %68 = load i32, i32* @ALI_GC_CIR, align 4
  %69 = call i32 @ALI_REG(%struct.snd_ali* %67, i32 %68)
  %70 = call i32 @outb(i32 %66, i32 %69)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %74 = load i32, i32* @ALI_CSO_ALPHA_FMS, align 4
  %75 = call i32 @ALI_REG(%struct.snd_ali* %73, i32 %74)
  %76 = call i32 @outl(i32 %72, i32 %75)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %80 = load i32, i32* @ALI_LBA, align 4
  %81 = call i32 @ALI_REG(%struct.snd_ali* %79, i32 %80)
  %82 = call i32 @outl(i32 %78, i32 %81)
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %86 = load i32, i32* @ALI_ESO_DELTA, align 4
  %87 = call i32 @ALI_REG(%struct.snd_ali* %85, i32 %86)
  %88 = call i32 @outl(i32 %84, i32 %87)
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %92 = load i32, i32* @ALI_GVSEL_PAN_VOC_CTRL_EC, align 4
  %93 = call i32 @ALI_REG(%struct.snd_ali* %91, i32 %92)
  %94 = call i32 @outl(i32 %90, i32 %93)
  %95 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %96 = load i32, i32* @ALI_EBUF1, align 4
  %97 = call i32 @ALI_REG(%struct.snd_ali* %95, i32 %96)
  %98 = call i32 @outl(i32 805306368, i32 %97)
  %99 = load %struct.snd_ali*, %struct.snd_ali** %13, align 8
  %100 = load i32, i32* @ALI_EBUF2, align 4
  %101 = call i32 @ALI_REG(%struct.snd_ali* %99, i32 %100)
  %102 = call i32 @outl(i32 805306368, i32 %101)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
