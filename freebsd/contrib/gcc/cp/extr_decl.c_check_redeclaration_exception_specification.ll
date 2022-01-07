; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_redeclaration_exception_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_redeclaration_exception_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pedantic = common dso_local global i64 0, align 8
@flag_exceptions = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"declaration of %qF throws different exceptions\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"from previous declaration %q+F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_redeclaration_exception_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_redeclaration_exception_specification(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TYPE_RAISES_EXCEPTIONS(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TYPE_RAISES_EXCEPTIONS(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* @pedantic, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DECL_IN_SYSTEM_HEADER(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DECL_IS_BUILTIN(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @flag_exceptions, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @comp_except_specs(i32 %31, i32 %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %30, %27, %23, %19
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_RAISES_EXCEPTIONS(i32) #1

declare dso_local i32 @DECL_IN_SYSTEM_HEADER(i32) #1

declare dso_local i32 @DECL_IS_BUILTIN(i32) #1

declare dso_local i32 @comp_except_specs(i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
