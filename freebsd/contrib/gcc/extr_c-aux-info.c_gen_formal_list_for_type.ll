; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_formal_list_for_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_formal_list_for_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ansi = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@void_type_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@data_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/* ??? */\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @gen_formal_list_for_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_formal_list_for_type(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ansi, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %79

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TYPE_ARG_TYPES(i64 %14)
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %54, %13
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @TREE_VALUE(i64 %20)
  %22 = load i64, i64* @void_type_node, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %58

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @TREE_VALUE(i64 %34)
  %36 = load i64, i64* @ansi, align 8
  %37 = call i8* @gen_type(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @affix_data_type(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %42, i8* %46, i8* null)
  br label %54

48:                                               ; preds = %33
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @data_type, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %49, i8* %52, i8* null)
  br label %54

54:                                               ; preds = %48, %41
  %55 = phi i8* [ %47, %41 ], [ %53, %48 ]
  store i8* %55, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @TREE_CHAIN(i64 %56)
  store i64 %57, i64* %7, align 8
  br label %16

58:                                               ; preds = %24
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @TYPE_ARG_TYPES(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %68

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %68

68:                                               ; preds = %67, %66
  br label %76

69:                                               ; preds = %58
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* null)
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i8*, i8** %6, align 8
  %78 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* null)
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %76, %12
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i8* @gen_type(i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @affix_data_type(i8*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
