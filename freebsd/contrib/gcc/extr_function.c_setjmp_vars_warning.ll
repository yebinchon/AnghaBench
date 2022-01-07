; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_setjmp_vars_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_setjmp_vars_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"variable %q+D might be clobbered by %<longjmp%> or %<vfork%>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setjmp_vars_warning(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @BLOCK_VARS(i64 %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @VAR_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @DECL_RTL_SET_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @DECL_RTL(i64 %20)
  %22 = call i64 @REG_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @DECL_RTL(i64 %25)
  %27 = call i32 @REGNO(i32 %26)
  %28 = call i64 @regno_clobbered_at_setjmp(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @warning(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %24, %19, %15, %10
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @TREE_CHAIN(i64 %35)
  store i64 %36, i64* %3, align 8
  br label %7

37:                                               ; preds = %7
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @BLOCK_SUBBLOCKS(i64 %38)
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %45, %37
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  call void @setjmp_vars_warning(i64 %44)
  br label %45

45:                                               ; preds = %43
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_CHAIN(i64 %46)
  store i64 %47, i64* %4, align 8
  br label %40

48:                                               ; preds = %40
  ret void
}

declare dso_local i64 @BLOCK_VARS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_RTL_SET_P(i64) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @DECL_RTL(i64) #1

declare dso_local i64 @regno_clobbered_at_setjmp(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BLOCK_SUBBLOCKS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
