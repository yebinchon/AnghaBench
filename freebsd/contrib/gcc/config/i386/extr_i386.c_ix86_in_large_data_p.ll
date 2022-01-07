; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_in_large_data_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_in_large_data_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix86_cmodel = common dso_local global i64 0, align 8
@CM_MEDIUM = common dso_local global i64 0, align 8
@CM_MEDIUM_PIC = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c".ldata\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".lbss\00", align 1
@ix86_section_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ix86_in_large_data_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_in_large_data_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @ix86_cmodel, align 8
  %7 = load i64, i64* @CM_MEDIUM, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i64, i64* @ix86_cmodel, align 8
  %11 = load i64, i64* @CM_MEDIUM_PIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %55

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @FUNCTION_DECL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @VAR_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @DECL_SECTION_NAME(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @DECL_SECTION_NAME(i32 %30)
  %32 = call i8* @TREE_STRING_POINTER(i64 %31)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %29
  store i32 1, i32* %2, align 4
  br label %55

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %55

42:                                               ; preds = %25, %20
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = call i64 @int_size_in_bytes(i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @ix86_section_threshold, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %42
  store i32 1, i32* %2, align 4
  br label %55

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %41, %40, %19, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i32) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @int_size_in_bytes(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
