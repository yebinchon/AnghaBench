; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_setvolumebyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_setvolumebyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_MIX_VOL_A = common dso_local global i64 0, align 8
@VORTEX_MIX_VOL_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i8)* @vortex_mix_setvolumebyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_mix_setvolumebyte(%struct.TYPE_3__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @VORTEX_MIX_VOL_A, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = load i8, i8* %6, align 1
  %18 = call i32 @hwwrite(i32 %10, i64 %16, i8 zeroext %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @VORTEX_MIX_VOL_B, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = call i32 @hwread(i32 %21, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %3
  br label %48

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @VORTEX_MIX_VOL_B, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load i8, i8* %6, align 1
  %47 = call i32 @hwwrite(i32 %39, i64 %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i8 zeroext) #1

declare dso_local i32 @hwread(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
