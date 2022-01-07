; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_volume.c_snd_gf1_lvol_to_gvol_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_volume.c_snd_gf1_lvol_to_gvol_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @snd_gf1_lvol_to_gvol_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ugt i32 %6, 65535
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 65535, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* %2, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %5, align 2
  store i16 7, i16* %3, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 1, %24
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i16, i16* %3, align 2
  %31 = add i16 %30, -1
  store i16 %31, i16* %3, align 2
  br label %16

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %9
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sgt i32 %36, 255
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 1
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %5, align 2
  %43 = load i16, i16* %3, align 2
  %44 = add i16 %43, 1
  store i16 %44, i16* %3, align 2
  br label %34

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %2, align 4
  %48 = load i16, i16* %3, align 2
  %49 = zext i16 %48 to i32
  %50 = shl i32 1, %49
  %51 = sub i32 %47, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %4, align 2
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %46
  %57 = load i16, i16* %3, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i16, i16* %3, align 2
  %62 = zext i16 %61 to i32
  %63 = sub nsw i32 %62, 8
  %64 = load i16, i16* %4, align 2
  %65 = zext i16 %64 to i32
  %66 = ashr i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %4, align 2
  br label %81

68:                                               ; preds = %56
  %69 = load i16, i16* %3, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i16, i16* %3, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 8, %74
  %76 = load i16, i16* %4, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %4, align 2
  br label %80

80:                                               ; preds = %72, %68
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i16, i16* %4, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %4, align 2
  br label %86

86:                                               ; preds = %81, %46
  %87 = load i16, i16* %3, align 2
  %88 = zext i16 %87 to i32
  %89 = shl i32 %88, 8
  %90 = load i16, i16* %4, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i16
  ret i16 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
