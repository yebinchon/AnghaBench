; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_name_as_c_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_name_as_c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@complete_dtor_identifier = common dso_local global i64 0, align 8
@base_dtor_identifier = common dso_local global i64 0, align 8
@deleting_dtor_identifier = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32*)* @name_as_c_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @name_as_c_string(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @IDENTIFIER_CTOR_OR_DTOR_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @constructor_name(i64 %13)
  %15 = call i64 @IDENTIFIER_POINTER(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @complete_dtor_identifier, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @base_dtor_identifier, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @deleting_dtor_identifier, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20, %12
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %29, i32* null)
  store i8* %30, i8** %7, align 8
  %31 = load i32*, i32** %6, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %49

33:                                               ; preds = %3
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @IDENTIFIER_TYPENAME_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @TREE_TYPE(i64 %38)
  %40 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %41 = call i8* @type_as_string(i32 %39, i32 %40)
  %42 = call i8* @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32* null)
  store i8* %42, i8** %7, align 8
  %43 = load i32*, i32** %6, align 8
  store i32 1, i32* %43, align 4
  br label %48

44:                                               ; preds = %33
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @IDENTIFIER_POINTER(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local i64 @IDENTIFIER_CTOR_OR_DTOR_P(i64) #1

declare dso_local i64 @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @constructor_name(i64) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i64 @IDENTIFIER_TYPENAME_P(i64) #1

declare dso_local i8* @type_as_string(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
