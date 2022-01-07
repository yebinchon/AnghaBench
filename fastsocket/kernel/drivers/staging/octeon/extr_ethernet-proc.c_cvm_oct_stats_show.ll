; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.octeon_ethernet = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TOTAL_NUMBER_OF_PORTS = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [22 x i8] c"\0AOcteon Port %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"rx_packets:             %12lu\09tx_packets:             %12lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"rx_bytes:               %12lu\09tx_bytes:               %12lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"rx_errors:              %12lu\09tx_errors:              %12lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"rx_dropped:             %12lu\09tx_dropped:             %12lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"rx_length_errors:       %12lu\09tx_aborted_errors:      %12lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"rx_over_errors:         %12lu\09tx_carrier_errors:      %12lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"rx_crc_errors:          %12lu\09tx_fifo_errors:         %12lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"rx_frame_errors:        %12lu\09tx_heartbeat_errors:    %12lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"rx_fifo_errors:         %12lu\09tx_window_errors:       %12lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"rx_missed_errors:       %12lu\09multicast:              %12lu\0A\00", align 1
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cvm_oct_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_ethernet*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %136, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @TOTAL_NUMBER_OF_PORTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %139

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %135

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call %struct.octeon_ethernet* @netdev_priv(%struct.TYPE_5__* %23)
  store %struct.octeon_ethernet* %24, %struct.octeon_ethernet** %5, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %37 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %41 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 19
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %47 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %51 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 18
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %57 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %61 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 17
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %67 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %71 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %77 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %81 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %87 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %91 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %97 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %101 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %107 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %111 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %117 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %121 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %119, i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %127 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %131 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %18, %11
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %7

139:                                              ; preds = %7
  %140 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %140, i64 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = icmp ne %struct.TYPE_5__* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cvm_oct_device, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %145, i64 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = call %struct.octeon_ethernet* @netdev_priv(%struct.TYPE_5__* %147)
  store %struct.octeon_ethernet* %148, %struct.octeon_ethernet** %5, align 8
  %149 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %150 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %144
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @cvm_oct_stats_switch_show(%struct.seq_file* %155, i8* %156)
  br label %158

158:                                              ; preds = %154, %144
  br label %159

159:                                              ; preds = %158, %139
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @cvm_oct_stats_switch_show(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
