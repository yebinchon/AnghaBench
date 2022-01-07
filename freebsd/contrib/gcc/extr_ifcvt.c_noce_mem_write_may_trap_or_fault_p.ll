; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_mem_write_may_trap_or_fault_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_mem_write_may_trap_or_fault_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64)* }

@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONST_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @noce_mem_write_may_trap_or_fault_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_mem_write_may_trap_or_fault_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @MEM_READONLY_P(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @may_trap_or_fault_p(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %58

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @XEXP(i64 %15, i32 0)
  store i64 %16, i64* %4, align 8
  %17 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 %17(i64 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %56, %14
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @GET_CODE(i64 %24)
  switch i32 %25, label %55 [
    i32 138, label %26
    i32 131, label %26
    i32 130, label %26
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 136, label %29
    i32 129, label %29
    i32 135, label %32
    i32 137, label %43
    i32 128, label %44
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %4, align 8
  br label %56

29:                                               ; preds = %23, %23
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @XEXP(i64 %30, i32 1)
  store i64 %31, i64* %4, align 8
  br label %56

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @XEXP(i64 %33, i32 1)
  %35 = call i32 @GET_CODE(i64 %34)
  %36 = load i32, i32* @CONST_INT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @XEXP(i64 %39, i32 0)
  store i64 %40, i64* %4, align 8
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

42:                                               ; preds = %38
  br label %56

43:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %58

44:                                               ; preds = %23
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @SYMBOL_REF_DECL(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @SYMBOL_REF_DECL(i64 %49)
  %51 = call i32 @decl_readonly_section(i32 %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %58

54:                                               ; preds = %48, %44
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %42, %29, %26
  br label %20

57:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %54, %53, %43, %41, %13, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @MEM_READONLY_P(i64) #1

declare dso_local i64 @may_trap_or_fault_p(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @SYMBOL_REF_DECL(i64) #1

declare dso_local i32 @decl_readonly_section(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
