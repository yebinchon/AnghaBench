; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_comp_type_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_comp_type_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_RTD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stdcall\00", align 1
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sseregparm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ix86_comp_type_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_comp_type_attributes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @TARGET_RTD, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @FUNCTION_TYPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TYPE_ATTRIBUTES(i32 %17)
  %19 = call i32 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @TYPE_ATTRIBUTES(i32 %23)
  %25 = call i32 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = icmp ne i32 %22, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @ix86_function_regparm(i32 %31, i32* null)
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @ix86_function_regparm(i32 %33, i32* null)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %16
  store i32 0, i32* %3, align 4
  br label %70

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @TYPE_ATTRIBUTES(i32 %38)
  %40 = call i32 @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @TYPE_ATTRIBUTES(i32 %44)
  %46 = call i32 @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = icmp ne i32 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %70

52:                                               ; preds = %37
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @TYPE_ATTRIBUTES(i32 %54)
  %56 = call i32 @lookup_attribute(i8* %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @TYPE_ATTRIBUTES(i32 %61)
  %63 = call i32 @lookup_attribute(i8* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %51, %36, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

declare dso_local i64 @ix86_function_regparm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
