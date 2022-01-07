; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_generic_register_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_generic_register_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_register_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_REGS, align 4
  %9 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %10 = add nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i32, i32* @current_gdbarch, align 4
  %17 = call i64 @gdbarch_register_type_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @gdbarch_register_type(i32 %20, i32 %21)
  %23 = call i32 @TYPE_LENGTH(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @DEPRECATED_REGISTER_VIRTUAL_TYPE(i32 %25)
  %27 = call i32 @TYPE_LENGTH(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @gdbarch_register_type_p(i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @gdbarch_register_type(i32, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_VIRTUAL_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
