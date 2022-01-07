; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch = type { i32 }

@I386_EIP_REGNUM = common dso_local global i32 0, align 4
@I386_EBP_REGNUM = common dso_local global i32 0, align 4
@I386_ESP_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void = common dso_local global i32 0, align 4
@builtin_type_i387_ext = common dso_local global %struct.type* null, align 8
@builtin_type_vec128i = common dso_local global %struct.type* null, align 8
@builtin_type_vec64i = common dso_local global %struct.type* null, align 8
@builtin_type_int = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.gdbarch*, i32)* @i386_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @i386_register_type(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @I386_EIP_REGNUM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @I386_EBP_REGNUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @I386_ESP_REGNUM, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @builtin_type_void, align 4
  %19 = call %struct.type* @lookup_pointer_type(i32 %18)
  store %struct.type* %19, %struct.type** %3, align 8
  br label %42

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @i386_fp_regnum_p(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load %struct.type*, %struct.type** @builtin_type_i387_ext, align 8
  store %struct.type* %25, %struct.type** %3, align 8
  br label %42

26:                                               ; preds = %20
  %27 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @i386_sse_regnum_p(%struct.gdbarch* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.type*, %struct.type** @builtin_type_vec128i, align 8
  store %struct.type* %32, %struct.type** %3, align 8
  br label %42

33:                                               ; preds = %26
  %34 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @i386_mmx_regnum_p(%struct.gdbarch* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.type*, %struct.type** @builtin_type_vec64i, align 8
  store %struct.type* %39, %struct.type** %3, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %41, %struct.type** %3, align 8
  br label %42

42:                                               ; preds = %40, %38, %31, %24, %17
  %43 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %43
}

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i64 @i386_fp_regnum_p(i32) #1

declare dso_local i64 @i386_sse_regnum_p(%struct.gdbarch*, i32) #1

declare dso_local i64 @i386_mmx_regnum_p(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
