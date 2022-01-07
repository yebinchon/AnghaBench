; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_sync_resolve_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_sync_resolve_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"too few arguments to function %qE\00", align 1
@POINTER_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"incompatible type for argument %d of %qE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sync_resolve_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_resolve_size(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @TREE_VALUE(i8* %14)
  %16 = call i8* @TREE_TYPE(i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @TREE_CODE(i8* %17)
  %19 = load i64, i64* @POINTER_TYPE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %54

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @TREE_TYPE(i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @INTEGRAL_TYPE_P(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @POINTER_TYPE_P(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %54

33:                                               ; preds = %28, %22
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @TYPE_SIZE_UNIT(i8* %34)
  %36 = call i32 @tree_low_cst(i32 %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45, %42, %39, %33
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %32, %21
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @TREE_VALUE(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i8*) #1

declare dso_local i32 @POINTER_TYPE_P(i8*) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
