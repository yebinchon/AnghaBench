; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_implicit_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_implicit_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i8* null, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not convert %qE to %qT\00", align 1
@processing_template_decl = common dso_local global i64 0, align 8
@conversion_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perform_implicit_conversion(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @error_operand_p(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** @error_mark_node, align 8
  store i8* %12, i8** %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @TREE_TYPE(i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @LOOKUP_NORMAL, align 4
  %20 = call i32* @implicit_conversion(i8* %15, i8* %17, i8* %18, i32 0, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i8*, i8** @error_mark_node, align 8
  store i8* %27, i8** %5, align 8
  br label %46

28:                                               ; preds = %13
  %29 = load i64, i64* @processing_template_decl, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @TREE_TYPE(i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @build_nop(i8* %37, i8* %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %36, %31
  br label %45

41:                                               ; preds = %28
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @convert_like(i32* %42, i8* %43)
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %41, %40
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @obstack_free(i32* @conversion_obstack, i8* %47)
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %46, %11
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i64 @error_operand_p(i8*) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local i32* @implicit_conversion(i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @build_nop(i8*, i8*) #1

declare dso_local i8* @convert_like(i32*, i8*) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
