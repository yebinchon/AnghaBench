; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_ts_data = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reset device\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"i2c_smbus_read_byte_data failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"product minor\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"synaptics: version %x, product property %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synaptics_ts_data*, i32*)* @detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect(%struct.synaptics_ts_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.synaptics_ts_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.synaptics_ts_data* %0, %struct.synaptics_ts_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 10, i32* %7, align 4
  %8 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %4, align 8
  %9 = call i32 @i2c_set(%struct.synaptics_ts_data* %8, i32 244, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %7, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %4, align 8
  %16 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(i32 %17, i32 228)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %14
  %23 = call i32 @msleep(i32 100)
  br label %10

24:                                               ; preds = %21, %10
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 8
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %4, align 8
  %35 = call i32 @i2c_read(%struct.synaptics_ts_data* %34, i32 229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %4, align 8
  %46 = call i32 @i2c_read(%struct.synaptics_ts_data* %45, i32 227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %40
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %49, %38, %27
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_set(%struct.synaptics_ts_data*, i32, i32, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i2c_read(%struct.synaptics_ts_data*, i32, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
