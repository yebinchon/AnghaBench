; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_RFSynthesizer_SetPowerIndex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_RFSynthesizer_SetPowerIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, i64, i64 }

@RF_MAXIM_2825 = common dso_local global i64 0, align 8
@RF_MAXIM_2827 = common dso_local global i64 0, align 8
@BAND_TYPE_OFDM_24 = common dso_local global i64 0, align 8
@RF_MAXIM_2828 = common dso_local global i64 0, align 8
@RF_AIROHA_2230 = common dso_local global i64 0, align 8
@al2230_txvga_data = common dso_local global i64** null, align 8
@RF_AIROHA_2230S = common dso_local global i64 0, align 8
@RF_AIROHA_7230 = common dso_local global i64 0, align 8
@al7230_txvga_data = common dso_local global i64** null, align 8
@RF_WB_242 = common dso_local global i64 0, align 8
@RF_WB_242_1 = common dso_local global i64 0, align 8
@w89rf242_txvga_data = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RFSynthesizer_SetPowerIndex(%struct.hw_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hw_data* %0, %struct.hw_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %9 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %3, align 8
  br label %147

18:                                               ; preds = %2
  %19 = load i64, i64* @RF_MAXIM_2825, align 8
  %20 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %21 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @RFSynthesizer_SetMaxim2825Power(%struct.hw_data* %25, i64 %26)
  store i64 %27, i64* %7, align 8
  br label %142

28:                                               ; preds = %18
  %29 = load i64, i64* @RF_MAXIM_2827, align 8
  %30 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %31 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @BAND_TYPE_OFDM_24, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @RFSynthesizer_SetMaxim2827_24Power(%struct.hw_data* %39, i64 %40)
  store i64 %41, i64* %7, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @RFSynthesizer_SetMaxim2827_50Power(%struct.hw_data* %43, i64 %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %141

47:                                               ; preds = %28
  %48 = load i64, i64* @RF_MAXIM_2828, align 8
  %49 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %50 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @BAND_TYPE_OFDM_24, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @RFSynthesizer_SetMaxim2828_24Power(%struct.hw_data* %58, i64 %59)
  store i64 %60, i64* %7, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @RFSynthesizer_SetMaxim2828_50Power(%struct.hw_data* %62, i64 %63)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %140

66:                                               ; preds = %47
  %67 = load i64, i64* @RF_AIROHA_2230, align 8
  %68 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %69 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @RFSynthesizer_SetAiroha2230Power(%struct.hw_data* %73, i64 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64**, i64*** @al2230_txvga_data, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i64*, i64** %76, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %7, align 8
  br label %139

82:                                               ; preds = %66
  %83 = load i64, i64* @RF_AIROHA_2230S, align 8
  %84 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %85 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @RFSynthesizer_SetAiroha2230Power(%struct.hw_data* %89, i64 %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64**, i64*** @al2230_txvga_data, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i64*, i64** %92, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %7, align 8
  br label %138

98:                                               ; preds = %82
  %99 = load i64, i64* @RF_AIROHA_7230, align 8
  %100 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %101 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @RFSynthesizer_SetAiroha7230Power(%struct.hw_data* %105, i64 %106)
  store i64 %107, i64* %7, align 8
  %108 = load i64**, i64*** @al7230_txvga_data, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i64*, i64** %108, i64 %109
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  br label %137

114:                                              ; preds = %98
  %115 = load i64, i64* @RF_WB_242, align 8
  %116 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %117 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i64, i64* @RF_WB_242_1, align 8
  %122 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %123 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120, %114
  %127 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @RFSynthesizer_SetWinbond242Power(%struct.hw_data* %127, i64 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64**, i64*** @w89rf242_txvga_data, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i64*, i64** %130, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %7, align 8
  br label %136

136:                                              ; preds = %126, %120
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137, %88
  br label %139

139:                                              ; preds = %138, %72
  br label %140

140:                                              ; preds = %139, %65
  br label %141

141:                                              ; preds = %140, %46
  br label %142

142:                                              ; preds = %141, %24
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %145 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %7, align 8
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %142, %16
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local i64 @RFSynthesizer_SetMaxim2825Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetMaxim2827_24Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetMaxim2827_50Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetMaxim2828_24Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetMaxim2828_50Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetAiroha2230Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetAiroha7230Power(%struct.hw_data*, i64) #1

declare dso_local i64 @RFSynthesizer_SetWinbond242Power(%struct.hw_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
