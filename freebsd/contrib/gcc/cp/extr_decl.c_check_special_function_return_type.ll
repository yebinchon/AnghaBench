; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_special_function_return_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_special_function_return_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@.str = private unnamed_addr constant [50 x i8] c"return type specification for constructor invalid\00", align 1
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@void_type_node = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"return type specification for destructor invalid\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"operator %qT declared to return %qT\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"return type specified for %<operator %T%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*)* @check_special_function_return_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_special_function_return_type(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %67 [
    i32 130, label %8
    i32 128, label %27
    i32 129, label %46
  ]

8:                                                ; preds = %3
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %15 = call i32 (...) %14()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @TYPE_FOR_JAVA(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @build_pointer_type(i8* %22)
  store i8* %23, i8** %5, align 8
  br label %26

24:                                               ; preds = %17, %13
  %25 = load i8*, i8** @void_type_node, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %24, %21
  br label %69

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %34 = call i32 (...) %33()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @TYPE_FOR_JAVA(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** @void_type_node, align 8
  %42 = call i8* @build_pointer_type(i8* %41)
  store i8* %42, i8** %5, align 8
  br label %45

43:                                               ; preds = %36, %32
  %44 = load i8*, i8** @void_type_node, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %43, %40
  br label %69

46:                                               ; preds = %3
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @same_type_p(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  br label %65

58:                                               ; preds = %49, %46
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %5, align 8
  br label %69

67:                                               ; preds = %3
  %68 = call i32 (...) @gcc_unreachable()
  br label %69

69:                                               ; preds = %67, %65, %45, %26
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @TYPE_FOR_JAVA(i8*) #1

declare dso_local i8* @build_pointer_type(i8*) #1

declare dso_local i32 @same_type_p(i8*, i8*) #1

declare dso_local i32 @pedwarn(i8*, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
