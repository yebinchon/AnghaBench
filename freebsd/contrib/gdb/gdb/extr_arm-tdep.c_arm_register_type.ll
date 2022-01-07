; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch = type { i32 }

@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@NUM_FREGS = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@builtin_type_arm_ext_big = common dso_local global %struct.type* null, align 8
@builtin_type_arm_ext_littlebyte_bigword = common dso_local global %struct.type* null, align 8
@builtin_type_int32 = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.gdbarch*, i32)* @arm_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @arm_register_type(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ARM_F0_REGNUM, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ARM_F0_REGNUM, align 4
  %12 = load i32, i32* @NUM_FREGS, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %17 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** @builtin_type_arm_ext_big, align 8
  store %struct.type* %20, %struct.type** %3, align 8
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.type*, %struct.type** @builtin_type_arm_ext_littlebyte_bigword, align 8
  store %struct.type* %22, %struct.type** %3, align 8
  br label %25

23:                                               ; preds = %9, %2
  %24 = load %struct.type*, %struct.type** @builtin_type_int32, align 8
  store %struct.type* %24, %struct.type** %3, align 8
  br label %25

25:                                               ; preds = %23, %21, %19
  %26 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
