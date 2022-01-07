; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_storage_class_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_storage_class_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"static\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_storage_class_specifier(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @TYPE_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @pp_c_identifier(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @DECL_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @DECL_REGISTER(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pp_c_identifier(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @TREE_STATIC(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @VAR_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @pp_c_identifier(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27, %23
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %12
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @DECL_REGISTER(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
