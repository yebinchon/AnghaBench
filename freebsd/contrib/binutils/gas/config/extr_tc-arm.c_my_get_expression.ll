; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_my_get_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_my_get_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i64, i64 }

@unified_syntax = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"immediate expression requires a # prefix\00", align 1
@inst = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@in_my_get_expression = common dso_local global i32 0, align 4
@O_illegal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"bad expression\00", align 1
@O_big = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid constant\00", align 1
@absolute_section = common dso_local global i64 0, align 8
@bss_section = common dso_local global i64 0, align 8
@data_section = common dso_local global i64 0, align 8
@text_section = common dso_local global i64 0, align 8
@undefined_section = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**, i32)* @my_get_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_get_expression(%struct.TYPE_6__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @unified_syntax, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 129, %17 ]
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %48 [
    i32 130, label %22
    i32 131, label %23
    i32 129, label %37
    i32 128, label %37
  ]

22:                                               ; preds = %20
  br label %50

23:                                               ; preds = %20
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @is_immediate_prefix(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %32 = load i32, i32* @FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %23
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  br label %50

37:                                               ; preds = %20, %20
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @is_immediate_prefix(i8 signext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %47

47:                                               ; preds = %43, %37
  br label %50

48:                                               ; preds = %20
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %47, %33, %22
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = call i32 @memset(%struct.TYPE_6__* %51, i32 0, i32 24)
  %53 = load i8*, i8** @input_line_pointer, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** @input_line_pointer, align 8
  store i32 1, i32* @in_my_get_expression, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = call i64 @expression(%struct.TYPE_6__* %56)
  store i64 %57, i64* %9, align 8
  store i32 0, i32* @in_my_get_expression, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @O_illegal, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load i8*, i8** @input_line_pointer, align 8
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** @input_line_pointer, align 8
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  br label %72

72:                                               ; preds = %69, %63
  store i32 1, i32* %4, align 4
  br label %114

73:                                               ; preds = %50
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @O_big, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %104, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @walk_no_bignums(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @walk_no_bignums(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98, %87, %76
  %105 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %107 = load i8*, i8** @input_line_pointer, align 8
  %108 = load i8**, i8*** %6, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** %8, align 8
  store i8* %109, i8** @input_line_pointer, align 8
  store i32 1, i32* %4, align 4
  br label %114

110:                                              ; preds = %98, %93, %82, %73
  %111 = load i8*, i8** @input_line_pointer, align 8
  %112 = load i8**, i8*** %6, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** %8, align 8
  store i8* %113, i8** @input_line_pointer, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %104, %72, %29
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @is_immediate_prefix(i8 signext) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @expression(%struct.TYPE_6__*) #1

declare dso_local i64 @walk_no_bignums(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
