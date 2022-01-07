; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_reg_struct_has_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_eabi_reg_struct_has_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*)* @mips_eabi_reg_struct_has_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_eabi_reg_struct_has_addr(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = call i32 @check_typedef(%struct.type* %9)
  %11 = call i32 @TYPE_CODE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @check_typedef(%struct.type* %12)
  %14 = call i32 @TYPE_LENGTH(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @current_gdbarch, align 4
  %16 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %15)
  store %struct.gdbarch_tdep* %16, %struct.gdbarch_tdep** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TYPE_CODE_UNION, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %27 = call i32 @mips_saved_regsize(%struct.gdbarch_tdep* %26)
  %28 = icmp sgt i32 %25, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @check_typedef(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @mips_saved_regsize(%struct.gdbarch_tdep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
