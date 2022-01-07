; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_setenablebit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_setenablebit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_MIX_ENIN = common dso_local global i64 0, align 8
@VORTEX_MIX_INVOL_B = common dso_local global i64 0, align 8
@VORTEX_MIX_SMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i32, i32)* @vortex_mix_setenablebit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_mix_setenablebit(%struct.TYPE_3__* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 3
  store i32 %15, i32* %10, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 3
  %22 = load i32, i32* %10, align 4
  %23 = ashr i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = shl i32 %24, 2
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @VORTEX_MIX_ENIN, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @hwread(i32 %28, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 1, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %49

42:                                               ; preds = %18
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @VORTEX_MIX_INVOL_B, align 8
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 5
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = shl i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %53, %60
  %62 = call i32 @hwwrite(i32 %52, i64 %61, i32 128)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @VORTEX_MIX_SMP, align 8
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = call i32 @hwwrite(i32 %65, i64 %70, i32 0)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @VORTEX_MIX_SMP, align 8
  %76 = add nsw i64 %75, 4
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @hwwrite(i32 %74, i64 %80, i32 0)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* @VORTEX_MIX_ENIN, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @hwwrite(i32 %84, i64 %88, i32 %89)
  ret void
}

declare dso_local i32 @hwread(i32, i64) #1

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
