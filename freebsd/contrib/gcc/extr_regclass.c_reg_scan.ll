; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_reg_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_reg_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TV_REG_SCAN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@max_parallel = common dso_local global i32 0, align 4
@max_set_parallel = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reg_scan(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TV_REG_SCAN, align 4
  %8 = call i32 @timevar_push(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @allocate_reg_info(i32 %9, i32 %10, i32 %11)
  store i32 3, i32* @max_parallel, align 4
  store i64 0, i64* @max_set_parallel, align 8
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %50, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @INSN_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @PATTERN(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @GET_CODE(i64 %24)
  %26 = load i64, i64* @PARALLEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @XVECLEN(i64 %29, i32 0)
  %31 = load i32, i32* @max_parallel, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @XVECLEN(i64 %34, i32 0)
  store i32 %35, i32* @max_parallel, align 4
  br label %36

36:                                               ; preds = %33, %28, %21
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @reg_scan_mark_refs(i64 %37, i64 %38, i32 0)
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @REG_NOTES(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @REG_NOTES(i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @reg_scan_mark_refs(i64 %45, i64 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %36
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @NEXT_INSN(i64 %51)
  store i64 %52, i64* %5, align 8
  br label %14

53:                                               ; preds = %14
  %54 = load i64, i64* @max_set_parallel, align 8
  %55 = load i32, i32* @max_parallel, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @max_parallel, align 4
  %59 = load i32, i32* @TV_REG_SCAN, align 4
  %60 = call i32 @timevar_pop(i32 %59)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @allocate_reg_info(i32, i32, i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i32 @reg_scan_mark_refs(i64, i64, i32) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
