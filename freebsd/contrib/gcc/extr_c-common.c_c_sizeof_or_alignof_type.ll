; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_sizeof_or_alignof_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_sizeof_or_alignof_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__alignof__\00", align 1
@FUNCTION_TYPE = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@warn_pointer_arith = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"invalid application of %<sizeof%> to a function type\00", align 1
@size_one_node = common dso_local global i8* null, align 8
@FUNCTION_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid application of %qs to a void type\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"invalid application of %qs to incomplete type %qT \00", align 1
@size_zero_node = common dso_local global i8* null, align 8
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@char_type_node = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @c_sizeof_or_alignof_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @TREE_CODE(i8* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FUNCTION_TYPE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* @pedantic, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @warn_pointer_arith, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28, %22
  %34 = load i8*, i8** @size_one_node, align 8
  store i8* %34, i8** %8, align 8
  br label %40

35:                                               ; preds = %19
  %36 = load i32, i32* @FUNCTION_BOUNDARY, align 4
  %37 = load i32, i32* @BITS_PER_UNIT, align 4
  %38 = sdiv i32 %36, %37
  %39 = call i8* @size_int(i32 %38)
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %35, %33
  br label %100

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @VOID_TYPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ERROR_MARK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @VOID_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i64, i64* @pedantic, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @warn_pointer_arith, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %59, %53, %49
  %66 = load i8*, i8** @size_one_node, align 8
  store i8* %66, i8** %8, align 8
  br label %99

67:                                               ; preds = %45
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @COMPLETE_TYPE_P(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** @size_zero_node, align 8
  store i8* %79, i8** %8, align 8
  br label %98

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @TYPE_SIZE_UNIT(i8* %85)
  %87 = load i32, i32* @char_type_node, align 4
  %88 = call i32 @TYPE_PRECISION(i32 %87)
  %89 = load i32, i32* @BITS_PER_UNIT, align 4
  %90 = sdiv i32 %88, %89
  %91 = call i8* @size_int(i32 %90)
  %92 = call i8* @size_binop(i32 %84, i32 %86, i8* %91)
  store i8* %92, i8** %8, align 8
  br label %97

93:                                               ; preds = %80
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @TYPE_ALIGN_UNIT(i8* %94)
  %96 = call i8* @size_int(i32 %95)
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %93, %83
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %40
  %101 = load i32, i32* @size_type_node, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i8* @fold_convert(i32 %101, i8* %102)
  store i8* %103, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @TREE_TYPE(i8* %104)
  %106 = call i32 @TYPE_IS_SIZETYPE(i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @gcc_assert(i32 %109)
  %111 = load i8*, i8** %8, align 8
  ret i8* %111
}

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @pedwarn(i8*, ...) #1

declare dso_local i8* @size_int(i32) #1

declare dso_local i32 @COMPLETE_TYPE_P(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @size_binop(i32, i32, i8*) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i8*) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TYPE_ALIGN_UNIT(i8*) #1

declare dso_local i8* @fold_convert(i32, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_IS_SIZETYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
