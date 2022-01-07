; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_pic_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_pic_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@UNSPEC = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_pic_operand_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @GET_CODE(i32 %5)
  switch i32 %6, label %52 [
    i32 132, label %7
    i32 130, label %49
    i32 131, label %49
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @XEXP(i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  %12 = load i32, i32* @PLUS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @XEXP(i32 %15, i32 1)
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @CONST_INT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %14, %7
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @GET_CODE(i32 %24)
  %26 = load i32, i32* @UNSPEC, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XINT(i32 %29, i32 1)
  switch i32 %30, label %47 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %28
  %32 = load i32, i32* @TARGET_64BIT, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @XVECEXP(i32 %34, i32 0, i32 0)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @GET_CODE(i32 %36)
  %38 = icmp eq i32 %37, 130
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %40)
  %42 = load i32, i32* @TLS_MODEL_LOCAL_EXEC, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ false, %33 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %53

47:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %1, %1, %48
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @legitimate_pic_address_disp_p(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %47, %44, %31
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @legitimate_pic_address_disp_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
