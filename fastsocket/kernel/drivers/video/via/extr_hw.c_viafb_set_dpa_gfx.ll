; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_dpa_gfx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_dpa_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GFX_DPA_SETTING = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CR96 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@SR2A = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@SR1B = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@CR9B = common dso_local global i32 0, align 4
@SR65 = common dso_local global i32 0, align 4
@CR97 = common dso_local global i32 0, align 4
@CR99 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_set_dpa_gfx(i32 %0, %struct.GFX_DPA_SETTING* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GFX_DPA_SETTING*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.GFX_DPA_SETTING* %1, %struct.GFX_DPA_SETTING** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %81 [
    i32 129, label %6
    i32 128, label %41
    i32 131, label %54
    i32 130, label %61
    i32 132, label %68
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @CR96, align 4
  %8 = load i32, i32* @VIACR, align 4
  %9 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %10 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @viafb_write_reg_mask(i32 %7, i32 %8, i32 %11, i32 15)
  %13 = load i32, i32* @SR1E, align 4
  %14 = load i32, i32* @VIASR, align 4
  %15 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %16 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BIT2, align 4
  %19 = call i32 @viafb_write_reg_mask(i32 %13, i32 %14, i32 %17, i32 %18)
  %20 = load i32, i32* @SR2A, align 4
  %21 = load i32, i32* @VIASR, align 4
  %22 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %23 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BIT4, align 4
  %26 = call i32 @viafb_write_reg_mask(i32 %20, i32 %21, i32 %24, i32 %25)
  %27 = load i32, i32* @SR1B, align 4
  %28 = load i32, i32* @VIASR, align 4
  %29 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %30 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BIT1, align 4
  %33 = call i32 @viafb_write_reg_mask(i32 %27, i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* @SR2A, align 4
  %35 = load i32, i32* @VIASR, align 4
  %36 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %37 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BIT5, align 4
  %40 = call i32 @viafb_write_reg_mask(i32 %34, i32 %35, i32 %38, i32 %39)
  br label %81

41:                                               ; preds = %2
  %42 = load i32, i32* @CR9B, align 4
  %43 = load i32, i32* @VIACR, align 4
  %44 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %45 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @viafb_write_reg_mask(i32 %42, i32 %43, i32 %46, i32 15)
  %48 = load i32, i32* @SR65, align 4
  %49 = load i32, i32* @VIASR, align 4
  %50 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %51 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @viafb_write_reg_mask(i32 %48, i32 %49, i32 %52, i32 15)
  br label %81

54:                                               ; preds = %2
  %55 = load i32, i32* @CR97, align 4
  %56 = load i32, i32* @VIACR, align 4
  %57 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %58 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @viafb_write_reg_mask(i32 %55, i32 %56, i32 %59, i32 15)
  br label %81

61:                                               ; preds = %2
  %62 = load i32, i32* @CR99, align 4
  %63 = load i32, i32* @VIACR, align 4
  %64 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %65 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @viafb_write_reg_mask(i32 %62, i32 %63, i32 %66, i32 15)
  br label %81

68:                                               ; preds = %2
  %69 = load i32, i32* @CR97, align 4
  %70 = load i32, i32* @VIACR, align 4
  %71 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %72 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @viafb_write_reg_mask(i32 %69, i32 %70, i32 %73, i32 15)
  %75 = load i32, i32* @CR99, align 4
  %76 = load i32, i32* @VIACR, align 4
  %77 = load %struct.GFX_DPA_SETTING*, %struct.GFX_DPA_SETTING** %4, align 8
  %78 = getelementptr inbounds %struct.GFX_DPA_SETTING, %struct.GFX_DPA_SETTING* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @viafb_write_reg_mask(i32 %75, i32 %76, i32 %79, i32 15)
  br label %81

81:                                               ; preds = %2, %68, %61, %54, %41, %6
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
