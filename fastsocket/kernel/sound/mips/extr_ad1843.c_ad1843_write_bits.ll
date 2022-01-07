; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_write_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_ad1843.c_ad1843_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1843 = type { i32 (i32, i32)*, i32, i32 (i32, i32, i32)* }
%struct.ad1843_bitfield = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1843*, %struct.ad1843_bitfield*, i32)* @ad1843_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1843_write_bits(%struct.snd_ad1843* %0, %struct.ad1843_bitfield* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ad1843*, align 8
  %5 = alloca %struct.ad1843_bitfield*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %4, align 8
  store %struct.ad1843_bitfield* %1, %struct.ad1843_bitfield** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %18 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %13(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %22 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %27 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %34 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %39 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %50, i32 0, i32 2
  %52 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %51, align 8
  %53 = load %struct.snd_ad1843*, %struct.snd_ad1843** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %5, align 8
  %57 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 %52(i32 %55, i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
