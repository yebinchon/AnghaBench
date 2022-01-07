; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_default_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_default_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"the default argument for parameter %d of %qD has not yet been parsed\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"default argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @convert_default_arg(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @TREE_CODE(i8* %10)
  %12 = load i64, i64* @DEFAULT_ARG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load i8*, i8** @error_mark_node, align 8
  store i8* %18, i8** %5, align 8
  br label %67

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @DECL_TEMPLATE_INFO(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @tsubst_default_argument(i8* %27, i8* %28, i8* %29)
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %26, %22, %19
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @break_out_target_exprs(i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @TREE_CODE(i8* %34)
  %36 = load i64, i64* @CONSTRUCTOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @digest_init(i8* %39, i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @LOOKUP_NORMAL, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @convert_for_initialization(i32 0, i8* %42, i8* %43, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  store i8* %47, i8** %7, align 8
  br label %65

48:                                               ; preds = %31
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @CONSTANT_CLASS_P(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @unshare_expr(i8* %53)
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @LOOKUP_NORMAL, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i8* @convert_for_initialization(i32 0, i8* %56, i8* %57, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @convert_for_arg_passing(i8* %62, i8* %63)
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %55, %38
  %66 = load i8*, i8** %7, align 8
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %65, %14
  %68 = load i8*, i8** %5, align 8
  ret i8* %68
}

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i8*) #1

declare dso_local i8* @tsubst_default_argument(i8*, i8*, i8*) #1

declare dso_local i8* @break_out_target_exprs(i8*) #1

declare dso_local i8* @digest_init(i8*, i8*) #1

declare dso_local i8* @convert_for_initialization(i32, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @CONSTANT_CLASS_P(i8*) #1

declare dso_local i8* @unshare_expr(i8*) #1

declare dso_local i8* @convert_for_arg_passing(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
