; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch = type { i32 }

@ALPHA_SP_REGNUM = common dso_local global i32 0, align 4
@ALPHA_GP_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global %struct.type* null, align 8
@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void_func_ptr = common dso_local global %struct.type* null, align 8
@ALPHA_FP0_REGNUM = common dso_local global i32 0, align 4
@builtin_type_ieee_double_little = common dso_local global %struct.type* null, align 8
@builtin_type_int64 = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.gdbarch*, i32)* @alpha_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @alpha_register_type(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ALPHA_SP_REGNUM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ALPHA_GP_REGNUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load %struct.type*, %struct.type** @builtin_type_void_data_ptr, align 8
  store %struct.type* %14, %struct.type** %3, align 8
  br label %34

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** @builtin_type_void_func_ptr, align 8
  store %struct.type* %20, %struct.type** %3, align 8
  br label %34

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %28 = add nsw i32 %27, 31
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** @builtin_type_ieee_double_little, align 8
  store %struct.type* %31, %struct.type** %3, align 8
  br label %34

32:                                               ; preds = %25, %21
  %33 = load %struct.type*, %struct.type** @builtin_type_int64, align 8
  store %struct.type* %33, %struct.type** %3, align 8
  br label %34

34:                                               ; preds = %32, %30, %19, %13
  %35 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
