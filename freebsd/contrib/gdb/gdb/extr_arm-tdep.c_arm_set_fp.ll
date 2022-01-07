; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_set_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_set_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@BFD_ENDIAN_LITTLE = common dso_local global i64 0, align 8
@ARM_FLOAT_SOFT_FPA = common dso_local global i32 0, align 4
@ARM_FLOAT_FPA = common dso_local global i32 0, align 4
@floatformat_ieee_double_littlebyte_bigword = common dso_local global i32 0, align 4
@floatformat_ieee_double_little = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*)* @arm_set_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_set_fp(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  %3 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %4 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %5 = call i32 @arm_get_fp_model(%struct.gdbarch* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %7 = call i64 @gdbarch_byte_order(%struct.gdbarch* %6)
  %8 = load i64, i64* @BFD_ENDIAN_LITTLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ARM_FLOAT_SOFT_FPA, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ARM_FLOAT_FPA, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %20 = call i32 @set_gdbarch_double_format(%struct.gdbarch* %19, i32* @floatformat_ieee_double_littlebyte_bigword)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %22 = call i32 @set_gdbarch_long_double_format(%struct.gdbarch* %21, i32* @floatformat_ieee_double_littlebyte_bigword)
  br label %28

23:                                               ; preds = %14, %1
  %24 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %25 = call i32 @set_gdbarch_double_format(%struct.gdbarch* %24, i32* @floatformat_ieee_double_little)
  %26 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %27 = call i32 @set_gdbarch_long_double_format(%struct.gdbarch* %26, i32* @floatformat_ieee_double_little)
  br label %28

28:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @arm_get_fp_model(%struct.gdbarch*) #1

declare dso_local i64 @gdbarch_byte_order(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_double_format(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_long_double_format(%struct.gdbarch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
