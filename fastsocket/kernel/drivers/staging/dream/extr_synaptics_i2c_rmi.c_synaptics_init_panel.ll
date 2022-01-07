; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_synaptics_init_panel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_synaptics_init_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_ts_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"set page select\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"set No Clip Z\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fallback page select\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"select 80 reports per second\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synaptics_ts_data*)* @synaptics_init_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synaptics_init_panel(%struct.synaptics_ts_data* %0) #0 {
  %2 = alloca %struct.synaptics_ts_data*, align 8
  %3 = alloca i32, align 4
  store %struct.synaptics_ts_data* %0, %struct.synaptics_ts_data** %2, align 8
  %4 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %2, align 8
  %5 = call i32 @i2c_set(%struct.synaptics_ts_data* %4, i32 255, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %2, align 8
  %10 = call i32 @i2c_set(%struct.synaptics_ts_data* %9, i32 65, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %2, align 8
  %13 = call i32 @i2c_set(%struct.synaptics_ts_data* %12, i32 255, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %2, align 8
  %15 = call i32 @i2c_set(%struct.synaptics_ts_data* %14, i32 240, i32 129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @i2c_set(%struct.synaptics_ts_data*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
