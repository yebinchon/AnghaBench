; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_invalidate_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_invalidate_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cselib_invalidate_rtx(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %1
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @SUBREG, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @ZERO_EXTRACT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @STRICT_LOW_PART, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %13, %8, %3
  %19 = phi i1 [ true, %8 ], [ true, %3 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %2, align 4
  br label %3

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @REG_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @REGNO(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @GET_MODE(i32 %30)
  %32 = call i32 @cselib_invalidate_regno(i32 %29, i32 %31)
  br label %41

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @MEM_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @cselib_invalidate_mem(i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @GET_MODE(i32 %43)
  %45 = call i64 @push_operand(i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @stack_pointer_rtx, align 4
  call void @cselib_invalidate_rtx(i32 %48)
  br label %49

49:                                               ; preds = %47, %41
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @cselib_invalidate_regno(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @cselib_invalidate_mem(i32) #1

declare dso_local i64 @push_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
