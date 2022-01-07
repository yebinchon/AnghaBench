; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_lang_bool_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_lang_bool_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@builtin_type_f_logical_s2 = common dso_local global %struct.type* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@builtin_type_bool = common dso_local global %struct.type* null, align 8
@java_boolean_type = common dso_local global %struct.type* null, align 8
@builtin_type_int = common dso_local global %struct.type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lang_bool_type() #0 {
  %1 = alloca %struct.type*, align 8
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %76 [
    i32 130, label %7
    i32 131, label %27
    i32 128, label %27
    i32 129, label %56
  ]

7:                                                ; preds = %0
  %8 = load i32, i32* @VAR_DOMAIN, align 4
  %9 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8, i32* null, i32* null)
  store %struct.symbol* %9, %struct.symbol** %2, align 8
  %10 = load %struct.symbol*, %struct.symbol** %2, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.symbol*, %struct.symbol** %2, align 8
  %14 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %13)
  store %struct.type* %14, %struct.type** %3, align 8
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = icmp ne %struct.type* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.type*, %struct.type** %3, align 8
  %19 = call i32 @TYPE_CODE(%struct.type* %18)
  %20 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %23, %struct.type** %1, align 8
  br label %78

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24, %7
  %26 = load %struct.type*, %struct.type** @builtin_type_f_logical_s2, align 8
  store %struct.type* %26, %struct.type** %1, align 8
  br label %78

27:                                               ; preds = %0, %0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @VAR_DOMAIN, align 4
  %34 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %33, i32* null, i32* null)
  store %struct.symbol* %34, %struct.symbol** %2, align 8
  br label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @VAR_DOMAIN, align 4
  %37 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %36, i32* null, i32* null)
  store %struct.symbol* %37, %struct.symbol** %2, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.symbol*, %struct.symbol** %2, align 8
  %40 = icmp ne %struct.symbol* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.symbol*, %struct.symbol** %2, align 8
  %43 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %42)
  store %struct.type* %43, %struct.type** %3, align 8
  %44 = load %struct.type*, %struct.type** %3, align 8
  %45 = icmp ne %struct.type* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.type*, %struct.type** %3, align 8
  %48 = call i32 @TYPE_CODE(%struct.type* %47)
  %49 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %52, %struct.type** %1, align 8
  br label %78

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.type*, %struct.type** @builtin_type_bool, align 8
  store %struct.type* %55, %struct.type** %1, align 8
  br label %78

56:                                               ; preds = %0
  %57 = load i32, i32* @VAR_DOMAIN, align 4
  %58 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %57, i32* null, i32* null)
  store %struct.symbol* %58, %struct.symbol** %2, align 8
  %59 = load %struct.symbol*, %struct.symbol** %2, align 8
  %60 = icmp ne %struct.symbol* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.symbol*, %struct.symbol** %2, align 8
  %63 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %62)
  store %struct.type* %63, %struct.type** %3, align 8
  %64 = load %struct.type*, %struct.type** %3, align 8
  %65 = icmp ne %struct.type* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.type*, %struct.type** %3, align 8
  %68 = call i32 @TYPE_CODE(%struct.type* %67)
  %69 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %72, %struct.type** %1, align 8
  br label %78

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.type*, %struct.type** @java_boolean_type, align 8
  store %struct.type* %75, %struct.type** %1, align 8
  br label %78

76:                                               ; preds = %0
  %77 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %77, %struct.type** %1, align 8
  br label %78

78:                                               ; preds = %76, %74, %71, %54, %51, %25, %22
  %79 = load %struct.type*, %struct.type** %1, align 8
  ret %struct.type* %79
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
