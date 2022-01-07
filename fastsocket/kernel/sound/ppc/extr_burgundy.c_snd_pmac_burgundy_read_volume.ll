; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_read_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_read_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32 }

@BURGUNDY_VOLUME_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i64*, i32)* @snd_pmac_burgundy_read_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_read_volume(%struct.snd_pmac* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @snd_pmac_burgundy_rcw(%struct.snd_pmac* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %15, i64* %17, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %32

29:                                               ; preds = %4
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %37, i64* %39, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %54

51:                                               ; preds = %32
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  ret void
}

declare dso_local i32 @snd_pmac_burgundy_rcw(%struct.snd_pmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
