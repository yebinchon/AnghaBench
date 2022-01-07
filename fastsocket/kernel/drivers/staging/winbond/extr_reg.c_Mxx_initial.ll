; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_Mxx_initial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_Mxx_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i32, i32, i32, i32, i32, i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_CWMIN = common dso_local global i32 0, align 4
@DEFAULT_CWMAX = common dso_local global i32 0, align 4
@DEFAULT_AID = common dso_local global i32 0, align 4
@DEFAULT_RATE_RETRY_LIMIT = common dso_local global i32 0, align 4
@DEFAULT_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@DEFAULT_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@DEFAULT_PIFST = common dso_local global i32 0, align 4
@DEFAULT_EIFST = common dso_local global i32 0, align 4
@DEFAULT_DIFST = common dso_local global i32 0, align 4
@DEFAULT_SIFST = common dso_local global i32 0, align 4
@DEFAULT_OSIFST = common dso_local global i32 0, align 4
@DEFAULT_SLOT_TIME = common dso_local global i32 0, align 4
@DEFAULT_ATIMWD = common dso_local global i32 0, align 4
@DEFAULT_MAX_TX_MSDU_LIFE_TIME = common dso_local global i32 0, align 4
@DEFAULT_BEACON_INTERVAL = common dso_local global i32 0, align 4
@DEFAULT_PROBE_DELAY_TIME = common dso_local global i32 0, align 4
@DEFAULT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@DEFAULT_MAC_POWER_STATE = common dso_local global i32 0, align 4
@DEFAULT_DTIM_ALERT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mxx_initial(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [11 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %7 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %8 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %7, i32 0, i32 7
  store %struct.wb35_reg* %8, %struct.wb35_reg** %3, align 8
  %9 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %10 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %9, i32 0, i32 0
  store i32 -2147483648, i32* %10, align 4
  %11 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %12 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %11, i32 0, i32 1
  store i32 134479938, i32* %12, align 4
  %13 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %14 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @DEFAULT_CWMIN, align 4
  %19 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @DEFAULT_CWMAX, align 4
  %22 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %23 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DEFAULT_CWMIN, align 4
  %25 = shl i32 %24, 10
  %26 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %27 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DEFAULT_CWMAX, align 4
  %29 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %30 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %34 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @DEFAULT_AID, align 4
  %44 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %45 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %47 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 4
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @DEFAULT_AID, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  %58 = load i32, i32* @DEFAULT_RATE_RETRY_LIMIT, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* @DEFAULT_LONG_RETRY_LIMIT, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %59, %61
  %63 = load i32, i32* @DEFAULT_SHORT_RETRY_LIMIT, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %66 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %68 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 5
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @DEFAULT_PIFST, align 4
  %72 = shl i32 %71, 26
  %73 = load i32, i32* @DEFAULT_EIFST, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %72, %74
  %76 = load i32, i32* @DEFAULT_DIFST, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load i32, i32* @DEFAULT_SIFST, align 4
  %80 = shl i32 %79, 4
  %81 = or i32 %78, %80
  %82 = load i32, i32* @DEFAULT_OSIFST, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %86 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 6
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @DEFAULT_SLOT_TIME, align 4
  %90 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %91 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @DEFAULT_ATIMWD, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* @DEFAULT_SLOT_TIME, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %98 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %4, align 4
  %100 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 7
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @DEFAULT_MAX_TX_MSDU_LIFE_TIME, align 4
  %102 = shl i32 %101, 10
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %105 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %4, align 4
  %107 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 8
  store i32 %106, i32* %107, align 16
  %108 = load i32, i32* @DEFAULT_BEACON_INTERVAL, align 4
  %109 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %110 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @DEFAULT_PROBE_DELAY_TIME, align 4
  %112 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %113 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @DEFAULT_BEACON_INTERVAL, align 4
  %115 = shl i32 %114, 16
  %116 = load i32, i32* @DEFAULT_PROBE_DELAY_TIME, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %120 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %4, align 4
  %122 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 9
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @DEFAULT_PROTOCOL_VERSION, align 4
  %124 = shl i32 %123, 30
  %125 = load i32, i32* @DEFAULT_MAC_POWER_STATE, align 4
  %126 = shl i32 %125, 28
  %127 = or i32 %124, %126
  %128 = load i32, i32* @DEFAULT_DTIM_ALERT_TIME, align 4
  %129 = shl i32 %128, 24
  %130 = or i32 %127, %129
  %131 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %132 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 4
  %133 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %134 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 10
  store i32 %135, i32* %136, align 8
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %150, %1
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 11
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 %142, 4
  %144 = add nsw i32 2084, %143
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %141, i32 %144, i32 %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %137

153:                                              ; preds = %137
  %154 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %155 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %154, i32 2144, i32 306713160)
  %156 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %157 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %156, i32 0, i32 9
  store i32 306713160, i32* %157, align 4
  %158 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %159 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %158, i32 2152, i32 329984)
  %160 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %161 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %160, i32 0, i32 10
  store i32 329984, i32* %161, align 4
  %162 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %163 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %162, i32 2200, i32 -30584)
  %164 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %165 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %164, i32 0, i32 11
  store i32 -30584, i32* %165, align 4
  ret void
}

declare dso_local i32 @Wb35Reg_WriteSync(%struct.hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
