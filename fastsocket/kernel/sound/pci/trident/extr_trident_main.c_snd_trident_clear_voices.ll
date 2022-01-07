; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_clear_voices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_clear_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }

@T4D_STOP_A = common dso_local global i32 0, align 4
@T4D_AINTEN_A = common dso_local global i32 0, align 4
@T4D_STOP_B = common dso_local global i32 0, align 4
@T4D_AINTEN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*, i16, i16)* @snd_trident_clear_voices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_clear_voices(%struct.snd_trident* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp sgt i32 %12, 63
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp sgt i32 %16, 63
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %93

24:                                               ; preds = %18
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %42, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ule i32 %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 31
  %35 = shl i32 1, %34
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %36, 5
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %27

45:                                               ; preds = %27
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %53 = load i32, i32* @T4D_STOP_A, align 4
  %54 = call i32 @TRID_REG(%struct.snd_trident* %52, i32 %53)
  %55 = call i32 @outl(i32 %51, i32 %54)
  %56 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %57 = load i32, i32* @T4D_AINTEN_A, align 4
  %58 = call i32 @TRID_REG(%struct.snd_trident* %56, i32 %57)
  %59 = call i32 @inl(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  %65 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %66 = load i32, i32* @T4D_AINTEN_A, align 4
  %67 = call i32 @TRID_REG(%struct.snd_trident* %65, i32 %66)
  %68 = call i32 @outl(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %49, %45
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %77 = load i32, i32* @T4D_STOP_B, align 4
  %78 = call i32 @TRID_REG(%struct.snd_trident* %76, i32 %77)
  %79 = call i32 @outl(i32 %75, i32 %78)
  %80 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %81 = load i32, i32* @T4D_AINTEN_B, align 4
  %82 = call i32 @TRID_REG(%struct.snd_trident* %80, i32 %81)
  %83 = call i32 @inl(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %90 = load i32, i32* @T4D_AINTEN_B, align 4
  %91 = call i32 @TRID_REG(%struct.snd_trident* %89, i32 %90)
  %92 = call i32 @outl(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %23, %73, %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @snd_BUG_ON(i32) #2

declare dso_local i32 @outl(i32, i32) #2

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #2

declare dso_local i32 @inl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
