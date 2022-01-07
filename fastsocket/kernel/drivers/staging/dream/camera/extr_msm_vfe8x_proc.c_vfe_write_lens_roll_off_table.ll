; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_write_lens_roll_off_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_write_lens_roll_off_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_roll_off_config = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }

@ROLLOFF_RAM = common dso_local global i32 0, align 4
@VFE_ROLL_OFF_INIT_TABLE_SIZE = common dso_local global i64 0, align 8
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_DMI_DATA_LO = common dso_local global i64 0, align 8
@LENS_ROLL_OFF_DELTA_TABLE_OFFSET = common dso_local global i32 0, align 4
@VFE_DMI_ADDR = common dso_local global i64 0, align 8
@VFE_ROLL_OFF_DELTA_TABLE_SIZE = common dso_local global i64 0, align 8
@VFE_DMI_CFG_DEFAULT = common dso_local global i32 0, align 4
@VFE_DMI_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_cmd_roll_off_config*)* @vfe_write_lens_roll_off_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_write_lens_roll_off_table(%struct.vfe_cmd_roll_off_config* %0) #0 {
  %2 = alloca %struct.vfe_cmd_roll_off_config*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.vfe_cmd_roll_off_config* %0, %struct.vfe_cmd_roll_off_config** %2, align 8
  %13 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %13, i32 0, i32 7
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %17 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %16, i32 0, i32 6
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %6, align 8
  %19 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %19, i32 0, i32 5
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %7, align 8
  %22 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %22, i32 0, i32 4
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %8, align 8
  %25 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %26 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %9, align 8
  %28 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %29 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %10, align 8
  %31 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %32 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %11, align 8
  %34 = load %struct.vfe_cmd_roll_off_config*, %struct.vfe_cmd_roll_off_config** %2, align 8
  %35 = getelementptr inbounds %struct.vfe_cmd_roll_off_config, %struct.vfe_cmd_roll_off_config* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %12, align 8
  %37 = load i32, i32* @ROLLOFF_RAM, align 4
  %38 = call i32 @vfe_program_dmi_cfg(i32 %37)
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %84, %1
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @VFE_ROLL_OFF_INIT_TABLE_SIZE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 16
  %52 = or i32 %47, %51
  store i32 %52, i32* %4, align 4
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %8, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 16
  %72 = or i32 %67, %71
  store i32 %72, i32* %4, align 4
  %73 = load i64*, i64** %7, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %7, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %43
  %85 = load i64, i64* %3, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %3, align 8
  br label %39

87:                                               ; preds = %39
  %88 = load i32, i32* @LENS_ROLL_OFF_DELTA_TABLE_OFFSET, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VFE_DMI_ADDR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  store i64 0, i64* %3, align 8
  br label %95

95:                                               ; preds = %140, %87
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @VFE_ROLL_OFF_DELTA_TABLE_SIZE, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %143

99:                                               ; preds = %95
  %100 = load i64*, i64** %12, align 8
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65535
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = shl i32 %106, 16
  %108 = or i32 %103, %107
  store i32 %108, i32* %4, align 4
  %109 = load i64*, i64** %12, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %12, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %9, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load i64*, i64** %11, align 8
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = and i32 %122, 65535
  %124 = load i64*, i64** %10, align 8
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 16
  %128 = or i32 %123, %127
  store i32 %128, i32* %4, align 4
  %129 = load i64*, i64** %11, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %11, align 8
  %131 = load i64*, i64** %10, align 8
  %132 = getelementptr inbounds i64, i64* %131, i32 1
  store i64* %132, i64** %10, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VFE_DMI_DATA_LO, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  br label %140

140:                                              ; preds = %99
  %141 = load i64, i64* %3, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %3, align 8
  br label %95

143:                                              ; preds = %95
  %144 = load i32, i32* @VFE_DMI_CFG_DEFAULT, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VFE_DMI_CFG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  ret void
}

declare dso_local i32 @vfe_program_dmi_cfg(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
