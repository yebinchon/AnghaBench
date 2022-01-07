; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_via_pitch_alignment_patch_lcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_via_pitch_alignment_patch_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32, i32, i64 }
%struct.lvds_chip_information = type { i32 }

@IGA2 = common dso_local global i64 0, align 8
@CR66 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@CR67 = common dso_local global i32 0, align 4
@CR65 = common dso_local global i32 0, align 4
@CR13 = common dso_local global i32 0, align 4
@CR35 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lvds_setting_information*, %struct.lvds_chip_information*)* @via_pitch_alignment_patch_lcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_pitch_alignment_patch_lcd(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %13 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %16 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = mul nsw i32 %14, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = and i64 %21, 31
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %129

24:                                               ; preds = %2
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 31
  %27 = and i64 %26, -32
  %28 = lshr i64 %27, 3
  store i64 %28, i64* %10, align 8
  %29 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %30 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IGA2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %24
  %35 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %36 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 8
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = and i64 %40, 255
  %42 = trunc i64 %41 to i8
  store i8 %42, i8* %8, align 1
  %43 = load i32, i32* @CR66, align 4
  %44 = load i32, i32* @VIACR, align 4
  %45 = load i8, i8* %8, align 1
  %46 = call i32 @viafb_write_reg(i32 %43, i32 %44, i8 zeroext %45)
  %47 = load i32, i32* @VIACR, align 4
  %48 = load i32, i32* @CR67, align 4
  %49 = call i32 @viafb_read_reg(i32 %47, i32 %48)
  %50 = and i32 %49, 252
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %9, align 1
  %52 = load i64, i64* %10, align 8
  %53 = and i64 %52, 768
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %9, align 1
  %61 = load i32, i32* @CR67, align 4
  %62 = load i32, i32* @VIACR, align 4
  %63 = load i8, i8* %9, align 1
  %64 = call i32 @viafb_write_reg(i32 %61, i32 %62, i8 zeroext %63)
  br label %65

65:                                               ; preds = %39, %34
  %66 = load i32, i32* @VIACR, align 4
  %67 = load i32, i32* @CR67, align 4
  %68 = call i32 @viafb_read_reg(i32 %66, i32 %67)
  %69 = and i32 %68, 243
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %9, align 1
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, 1536
  %73 = lshr i64 %72, 7
  %74 = trunc i64 %73 to i8
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %9, align 1
  %80 = load i32, i32* @CR67, align 4
  %81 = load i32, i32* @VIACR, align 4
  %82 = load i8, i8* %9, align 1
  %83 = call i32 @viafb_write_reg(i32 %80, i32 %81, i8 zeroext %82)
  %84 = load i64, i64* %10, align 8
  %85 = lshr i64 %84, 1
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %7, align 1
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 2
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %7, align 1
  %92 = load i32, i32* @CR65, align 4
  %93 = load i32, i32* @VIACR, align 4
  %94 = load i8, i8* %7, align 1
  %95 = call i32 @viafb_write_reg(i32 %92, i32 %93, i8 zeroext %94)
  br label %128

96:                                               ; preds = %24
  %97 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %98 = getelementptr inbounds %struct.lvds_setting_information, %struct.lvds_setting_information* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 8
  br i1 %100, label %101, label %127

101:                                              ; preds = %96
  %102 = load i64, i64* %10, align 8
  %103 = and i64 %102, 255
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %5, align 1
  %105 = load i32, i32* @CR13, align 4
  %106 = load i32, i32* @VIACR, align 4
  %107 = load i8, i8* %5, align 1
  %108 = call i32 @viafb_write_reg(i32 %105, i32 %106, i8 zeroext %107)
  %109 = load i32, i32* @VIACR, align 4
  %110 = load i32, i32* @CR35, align 4
  %111 = call i32 @viafb_read_reg(i32 %109, i32 %110)
  %112 = and i32 %111, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %6, align 1
  %114 = load i64, i64* %10, align 8
  %115 = and i64 %114, 1792
  %116 = lshr i64 %115, 3
  %117 = trunc i64 %116 to i8
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %6, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %6, align 1
  %123 = load i32, i32* @CR35, align 4
  %124 = load i32, i32* @VIACR, align 4
  %125 = load i8, i8* %6, align 1
  %126 = call i32 @viafb_write_reg(i32 %123, i32 %124, i8 zeroext %125)
  br label %127

127:                                              ; preds = %101, %96
  br label %128

128:                                              ; preds = %127, %65
  br label %129

129:                                              ; preds = %128, %2
  ret void
}

declare dso_local i32 @viafb_write_reg(i32, i32, i8 zeroext) #1

declare dso_local i32 @viafb_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
