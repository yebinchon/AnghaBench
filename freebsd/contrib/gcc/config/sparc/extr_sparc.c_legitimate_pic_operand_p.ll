; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_pic_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_legitimate_pic_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_pic_operand_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pic_address_needs_scratch(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @SPARC_SYMBOL_REF_TLS_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @CONST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @PLUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = call i32 @XEXP(i32 %25, i32 0)
  %27 = call i64 @SPARC_SYMBOL_REF_TLS_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %8
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %23, %17, %12
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @pic_address_needs_scratch(i32) #1

declare dso_local i64 @SPARC_SYMBOL_REF_TLS_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
