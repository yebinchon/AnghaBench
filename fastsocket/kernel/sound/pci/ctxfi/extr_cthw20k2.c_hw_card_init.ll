; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.card_conf = type { i32, i32, i32 }
%struct.dac_conf = type { i32, i32 }
%struct.adc_conf = type { i64, i32, i32, i32 }
%struct.daio_conf = type { i32, i32 }
%struct.trn_conf = type { i32, i32 }

@GLOBAL_CNTL_GCTL = common dso_local global i32 0, align 4
@GCTL_DBP = common dso_local global i32 0, align 4
@GCTL_TBP = common dso_local global i32 0, align 4
@GCTL_FBP = common dso_local global i32 0, align 4
@GCTL_DPC = common dso_local global i32 0, align 4
@GIE = common dso_local global i32 0, align 4
@SRC_IP = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@MIXER_AR_ENABLE = common dso_local global i32 0, align 4
@ADC_LINEIN = common dso_local global i32 0, align 4
@SRC_MCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.card_conf*)* @hw_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_card_init(%struct.hw* %0, %struct.card_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.card_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dac_conf, align 4
  %10 = alloca %struct.adc_conf, align 8
  %11 = alloca %struct.daio_conf, align 4
  %12 = alloca %struct.trn_conf, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.card_conf* %1, %struct.card_conf** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = bitcast %struct.dac_conf* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.adc_conf* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = bitcast %struct.daio_conf* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.trn_conf* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.hw*, %struct.hw** %4, align 8
  %18 = call i32 @hw_card_start(%struct.hw* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %126

23:                                               ; preds = %2
  %24 = load %struct.hw*, %struct.hw** %4, align 8
  %25 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %26 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hw_pll_init(%struct.hw* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %126

33:                                               ; preds = %23
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = call i32 @hw_auto_init(%struct.hw* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %126

40:                                               ; preds = %33
  %41 = load %struct.hw*, %struct.hw** %4, align 8
  %42 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %43 = call i8* @hw_read_20kx(%struct.hw* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @GCTL_DBP, align 4
  %46 = call i32 @set_field(i32* %7, i32 %45, i32 1)
  %47 = load i32, i32* @GCTL_TBP, align 4
  %48 = call i32 @set_field(i32* %7, i32 %47, i32 1)
  %49 = load i32, i32* @GCTL_FBP, align 4
  %50 = call i32 @set_field(i32* %7, i32 %49, i32 1)
  %51 = load i32, i32* @GCTL_DPC, align 4
  %52 = call i32 @set_field(i32* %7, i32 %51, i32 0)
  %53 = load %struct.hw*, %struct.hw** %4, align 8
  %54 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @hw_write_20kx(%struct.hw* %53, i32 %54, i32 %55)
  %57 = load %struct.hw*, %struct.hw** %4, align 8
  %58 = load i32, i32* @GIE, align 4
  %59 = call i32 @hw_write_20kx(%struct.hw* %57, i32 %58, i32 0)
  %60 = load %struct.hw*, %struct.hw** %4, align 8
  %61 = load i32, i32* @SRC_IP, align 4
  %62 = call i32 @hw_write_20kx(%struct.hw* %60, i32 %61, i32 0)
  %63 = load %struct.hw*, %struct.hw** %4, align 8
  %64 = load i32, i32* @GPIO_CTRL, align 4
  %65 = call i32 @hw_write_20kx(%struct.hw* %63, i32 %64, i32 55298)
  %66 = load %struct.hw*, %struct.hw** %4, align 8
  %67 = load i32, i32* @MIXER_AR_ENABLE, align 4
  %68 = call i32 @hw_write_20kx(%struct.hw* %66, i32 %67, i32 1)
  %69 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %70 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.hw*, %struct.hw** %4, align 8
  %74 = call i32 @hw_trn_init(%struct.hw* %73, %struct.trn_conf* %12)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %40
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %126

79:                                               ; preds = %40
  %80 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %81 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %11, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.hw*, %struct.hw** %4, align 8
  %85 = call i32 @hw_daio_init(%struct.hw* %84, %struct.daio_conf* %11)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %126

90:                                               ; preds = %79
  %91 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %92 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.hw*, %struct.hw** %4, align 8
  %96 = call i32 @hw_dac_init(%struct.hw* %95, %struct.dac_conf* %9)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %126

101:                                              ; preds = %90
  %102 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %103 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @ADC_LINEIN, align 4
  %107 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 1
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.hw*, %struct.hw** %4, align 8
  %110 = call i32 @hw_adc_init(%struct.hw* %109, %struct.adc_conf* %10)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %126

115:                                              ; preds = %101
  %116 = load %struct.hw*, %struct.hw** %4, align 8
  %117 = load i32, i32* @SRC_MCTL, align 4
  %118 = call i8* @hw_read_20kx(%struct.hw* %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, 1
  store i32 %121, i32* %8, align 4
  %122 = load %struct.hw*, %struct.hw** %4, align 8
  %123 = load i32, i32* @SRC_MCTL, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @hw_write_20kx(%struct.hw* %122, i32 %123, i32 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %115, %113, %99, %88, %77, %38, %31, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_card_start(%struct.hw*) #2

declare dso_local i32 @hw_pll_init(%struct.hw*, i32) #2

declare dso_local i32 @hw_auto_init(%struct.hw*) #2

declare dso_local i8* @hw_read_20kx(%struct.hw*, i32) #2

declare dso_local i32 @set_field(i32*, i32, i32) #2

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

declare dso_local i32 @hw_trn_init(%struct.hw*, %struct.trn_conf*) #2

declare dso_local i32 @hw_daio_init(%struct.hw*, %struct.daio_conf*) #2

declare dso_local i32 @hw_dac_init(%struct.hw*, %struct.dac_conf*) #2

declare dso_local i32 @hw_adc_init(%struct.hw*, %struct.adc_conf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
