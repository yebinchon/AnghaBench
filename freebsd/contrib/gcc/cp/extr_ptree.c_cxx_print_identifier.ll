; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_ptree.c_cxx_print_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_ptree.c_cxx_print_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bindings\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"local bindings\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"template\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxx_print_identifier(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @indent_to(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @IDENTIFIER_NAMESPACE_BINDINGS(i32 %18)
  %20 = call i32 @cxx_print_binding(i32* %17, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fprintf(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %30

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @indent_to(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @IDENTIFIER_BINDING(i32 %32)
  %34 = call i32 @cxx_print_binding(i32* %31, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @IDENTIFIER_LABEL_VALUE(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 4
  %40 = call i32 @print_node(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @IDENTIFIER_TEMPLATE(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 4
  %46 = call i32 @print_node(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %45)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @indent_to(i32*, i32) #1

declare dso_local i32 @cxx_print_binding(i32*, i32, i8*) #1

declare dso_local i32 @IDENTIFIER_NAMESPACE_BINDINGS(i32) #1

declare dso_local i32 @IDENTIFIER_BINDING(i32) #1

declare dso_local i32 @print_node(i32*, i8*, i32, i32) #1

declare dso_local i32 @IDENTIFIER_LABEL_VALUE(i32) #1

declare dso_local i32 @IDENTIFIER_TEMPLATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
