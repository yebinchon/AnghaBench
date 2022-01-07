; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_write_w_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_write_w_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mt9t013_i2c_reg_conf = type { i32, i32 }

@EIO = common dso_local global i64 0, align 8
@mt9t013_client = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mt9t013_i2c_reg_conf*, i32)* @mt9t013_i2c_write_w_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_i2c_write_w_table(%struct.mt9t013_i2c_reg_conf* %0, i32 %1) #0 {
  %3 = alloca %struct.mt9t013_i2c_reg_conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mt9t013_i2c_reg_conf* %0, %struct.mt9t013_i2c_reg_conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @EIO, align 8
  %8 = sub nsw i64 0, %7
  store i64 %8, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mt9t013_i2c_reg_conf*, %struct.mt9t013_i2c_reg_conf** %3, align 8
  %18 = getelementptr inbounds %struct.mt9t013_i2c_reg_conf, %struct.mt9t013_i2c_reg_conf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mt9t013_i2c_reg_conf*, %struct.mt9t013_i2c_reg_conf** %3, align 8
  %21 = getelementptr inbounds %struct.mt9t013_i2c_reg_conf, %struct.mt9t013_i2c_reg_conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mt9t013_i2c_write_w(i32 %16, i32 %19, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %33

27:                                               ; preds = %13
  %28 = load %struct.mt9t013_i2c_reg_conf*, %struct.mt9t013_i2c_reg_conf** %3, align 8
  %29 = getelementptr inbounds %struct.mt9t013_i2c_reg_conf, %struct.mt9t013_i2c_reg_conf* %28, i32 1
  store %struct.mt9t013_i2c_reg_conf* %29, %struct.mt9t013_i2c_reg_conf** %3, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %26, %9
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i64 @mt9t013_i2c_write_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
