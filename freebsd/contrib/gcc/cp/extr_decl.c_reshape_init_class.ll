; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"initializer for %qT must be brace-enclosed\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%qT has no non-static data member named %qD\00", align 1
@UNION_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_6__*, i32)* @reshape_init_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reshape_init_class(i64 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @CLASS_TYPE_P(i64 %11)
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = call i64 @build_constructor(i32 %14, i32* null)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @TYPE_FIELDS(i64 %16)
  %18 = call i64 @next_initializable_field(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* @error_mark_node, align 8
  store i64 %27, i64* %4, align 8
  br label %96

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %4, align 8
  br label %96

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %90, %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %34, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @lookup_field_1(i64 %47, i8* %52, i32 0)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @FIELD_DECL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %46
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %62, i8* %67)
  %69 = load i64, i64* @error_mark_node, align 8
  store i64 %69, i64* %4, align 8
  br label %96

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %94

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @TREE_TYPE(i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = call i64 @reshape_init_r(i32 %77, %struct.TYPE_6__* %78, i32 0)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @CONSTRUCTOR_ELTS(i64 %80)
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @CONSTRUCTOR_APPEND_ELT(i32 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @TREE_CODE(i64 %85)
  %87 = load i64, i64* @UNION_TYPE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %94

90:                                               ; preds = %75
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @TREE_CHAIN(i64 %91)
  %93 = call i64 @next_initializable_field(i32 %92)
  store i64 %93, i64* %8, align 8
  br label %31

94:                                               ; preds = %89, %74, %31
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %61, %28, %24
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @build_constructor(i32, i32*) #1

declare dso_local i64 @next_initializable_field(i32) #1

declare dso_local i32 @TYPE_FIELDS(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @lookup_field_1(i64, i8*, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @reshape_init_r(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @CONSTRUCTOR_APPEND_ELT(i32, i64, i64) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i64) #1

declare dso_local i32 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
