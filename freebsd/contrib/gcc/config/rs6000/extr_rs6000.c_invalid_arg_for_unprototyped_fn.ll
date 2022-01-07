; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_invalid_arg_for_unprototyped_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_invalid_arg_for_unprototyped_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_darwin64_abi = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@BUILT_IN_MD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"AltiVec argument passed to unprototyped function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i64)* @invalid_arg_for_unprototyped_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @invalid_arg_for_unprototyped_fn(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @rs6000_darwin64_abi, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @TREE_TYPE(i64 %13)
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @VECTOR_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @FUNCTION_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @DECL_BUILT_IN_CLASS(i64 %28)
  %30 = load i64, i64* @BUILT_IN_MD, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %18
  %33 = call i8* @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %35

34:                                               ; preds = %27, %22, %12, %9, %3
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ null, %34 ]
  ret i8* %36
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i64) #1

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
