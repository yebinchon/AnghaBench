; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_register_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_sigtramp_register_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i64, i64, i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@ALPHA_FP0_REGNUM = common dso_local global i32 0, align 4
@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @alpha_sigtramp_register_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_sigtramp_register_address(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gdbarch_tdep*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %17 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %3, align 8
  br label %56

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %31 = add nsw i32 %30, 32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %36 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  store i64 %42, i64* %3, align 8
  br label %56

43:                                               ; preds = %28, %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %50 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  store i64 %52, i64* %3, align 8
  br label %56

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %55, %47, %33, %14
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
