; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_write_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_write_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32 }

@BURGUNDY_VOLUME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i64*, i32)* @snd_pmac_burgundy_write_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_write_volume(%struct.snd_pmac* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64*, i64** %7, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %4
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 100
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 100
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %16, %4
  br label %80

32:                                               ; preds = %26
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @BURGUNDY_VOLUME_OFFSET, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi i64 [ %43, %37 ], [ 0, %44 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @BURGUNDY_VOLUME_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  br label %60

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %52
  %61 = phi i64 [ %58, %52 ], [ 0, %59 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %64, %65
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %70, %60
  %76 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @snd_pmac_burgundy_wcw(%struct.snd_pmac* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %31
  ret void
}

declare dso_local i32 @snd_pmac_burgundy_wcw(%struct.snd_pmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
