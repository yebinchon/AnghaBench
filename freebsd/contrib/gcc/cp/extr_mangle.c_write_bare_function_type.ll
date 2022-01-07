; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_bare_function_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_bare_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"bare-function-type\00", align 1
@METHOD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @write_bare_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bare_function_type(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @DECL_FUNCTION_MEMBER_P(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @DECL_CONTEXT(i32* %17)
  %19 = call i64 @TYPE_FOR_JAVA(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @DECL_CONSTRUCTOR_P(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @DECL_DESTRUCTOR_P(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @DECL_CONV_FN_P(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  %34 = call i32 @write_char(i8 signext 74)
  br label %36

35:                                               ; preds = %29, %25, %21, %16, %12, %3
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @TREE_TYPE(i32* %43)
  %45 = call i32 @write_type(i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @TYPE_ARG_TYPES(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @TREE_CODE(i32* %49)
  %51 = load i64, i64* @METHOD_TYPE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @write_method_parms(i32 %48, i32 %53, i32* %54)
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32*) #1

declare dso_local i64 @DECL_FUNCTION_MEMBER_P(i32*) #1

declare dso_local i64 @TYPE_FOR_JAVA(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32*) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32*) #1

declare dso_local i32 @DECL_DESTRUCTOR_P(i32*) #1

declare dso_local i32 @DECL_CONV_FN_P(i32*) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @write_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32 @write_method_parms(i32, i32, i32*) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
