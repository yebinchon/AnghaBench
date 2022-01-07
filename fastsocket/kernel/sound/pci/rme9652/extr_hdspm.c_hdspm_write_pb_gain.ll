; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_hdspm_write_pb_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_hdspm_write_pb_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i16* }

@HDSPM_MIXER_CHANNELS = common dso_local global i32 0, align 4
@HDSPM_MADI_mixerBase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32, i32, i16)* @hdspm_write_pb_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_write_pb_gain(%struct.hdspm* %0, i32 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.hdspm* %0, %struct.hdspm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @HDSPM_MIXER_CHANNELS, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @HDSPM_MIXER_CHANNELS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %47

18:                                               ; preds = %13
  %19 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %20 = load i64, i64* @HDSPM_MADI_mixerBase, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add i32 64, %21
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 128, %23
  %25 = add i32 %22, %24
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %20, %27
  %29 = load i16, i16* %9, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 65535
  %32 = trunc i32 %31 to i16
  %33 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %34 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i16*, i16** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  store i16 %32, i16* %45, align 2
  %46 = call i32 @hdspm_write(%struct.hdspm* %19, i64 %28, i16 zeroext %32)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %18, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
