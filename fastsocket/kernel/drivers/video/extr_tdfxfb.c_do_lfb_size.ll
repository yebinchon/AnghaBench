; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_lfb_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_lfb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_par = type { i32 }

@DRAMINIT0 = common dso_local global i32 0, align 4
@DRAMINIT1 = common dso_local global i32 0, align 4
@DRAMINIT0_SGRAM_NUM = common dso_local global i32 0, align 4
@DRAMINIT1_MEM_SDRAM = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_3DFX_VOODOO5 = common dso_local global i16 0, align 2
@DRAMINIT0_SGRAM_TYPE = common dso_local global i32 0, align 4
@DRAMINIT0_SGRAM_TYPE_MASK = common dso_local global i32 0, align 4
@DRAMINIT0_SGRAM_TYPE_SHIFT = common dso_local global i32 0, align 4
@MISCINIT1 = common dso_local global i32 0, align 4
@MISCINIT1_2DBLOCK_DIS = common dso_local global i32 0, align 4
@MISCINIT1_CLUT_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tdfx_par*, i16)* @do_lfb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_lfb_size(%struct.tdfx_par* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.tdfx_par*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tdfx_par* %0, %struct.tdfx_par** %3, align 8
  store i16 %1, i16* %4, align 2
  %11 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %12 = load i32, i32* @DRAMINIT0, align 4
  %13 = call i32 @tdfx_inl(%struct.tdfx_par* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %15 = load i32, i32* @DRAMINIT1, align 4
  %16 = call i32 @tdfx_inl(%struct.tdfx_par* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DRAMINIT0_SGRAM_NUM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 8, i32 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DRAMINIT1_MEM_SDRAM, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @PCI_DEVICE_ID_3DFX_VOODOO5, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DRAMINIT0_SGRAM_TYPE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %34, %31
  br label %49

41:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DRAMINIT0_SGRAM_TYPE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DRAMINIT0_SGRAM_TYPE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = shl i32 1, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %41, %40
  %50 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %51 = load i32, i32* @MISCINIT1, align 4
  %52 = call i32 @tdfx_inl(%struct.tdfx_par* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @MISCINIT1_2DBLOCK_DIS, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @MISCINIT1_CLUT_INV, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %66 = call i32 @banshee_make_room(%struct.tdfx_par* %65, i32 1)
  %67 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %68 = load i32, i32* @MISCINIT1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @tdfx_outl(%struct.tdfx_par* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 1024
  %76 = mul nsw i64 %75, 1024
  ret i64 %76
}

declare dso_local i32 @tdfx_inl(%struct.tdfx_par*, i32) #1

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
