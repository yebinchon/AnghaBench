; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_fp_register_arg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_fp_register_arg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@MIPS_EABI = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@MIPS_FPU_TYPE = common dso_local global i64 0, align 8
@MIPS_FPU_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*)* @fp_register_arg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fp_register_arg_p(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.type* %1, %struct.type** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TYPE_CODE_FLT, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @MIPS_EABI, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TYPE_CODE_UNION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15, %11
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = call i32 @TYPE_NFIELDS(%struct.type* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.type*, %struct.type** %4, align 8
  %25 = call i32 @TYPE_FIELD_TYPE(%struct.type* %24, i32 0)
  %26 = call i32 @TYPE_CODE(i32 %25)
  %27 = load i32, i32* @TYPE_CODE_FLT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %2
  %30 = load i64, i64* @MIPS_FPU_TYPE, align 8
  %31 = load i64, i64* @MIPS_FPU_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %29, %23, %19, %15, %8
  %34 = phi i1 [ false, %23 ], [ false, %19 ], [ false, %15 ], [ false, %8 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
