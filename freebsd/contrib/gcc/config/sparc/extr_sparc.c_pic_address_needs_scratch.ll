; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_pic_address_needs_scratch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_pic_address_needs_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pic_address_needs_scratch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @CONST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @XEXP(i32 %9, i32 0)
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @PLUS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SYMBOL_REF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  %24 = call i32 @XEXP(i32 %23, i32 1)
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @CONST_INT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = call i32 @XEXP(i32 %30, i32 1)
  %32 = call i32 @SMALL_INT(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %28, %21, %14, %8, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SMALL_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
