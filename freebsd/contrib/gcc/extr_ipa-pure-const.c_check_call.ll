; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-pure-const.c_check_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-pure-const.c_check_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.cgraph_node = type { i32 }

@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@IPA_NEITHER = common dso_local global i8* null, align 8
@BUILT_IN_NORMAL = common dso_local global i64 0, align 8
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4
@ECF_PURE = common dso_local global i32 0, align 4
@IPA_CONST = common dso_local global i64 0, align 8
@IPA_PURE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @check_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_call(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cgraph_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @call_expr_flags(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_OPERAND(i64 %14, i32 1)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @get_callee_fndecl(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_VALUE(i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @check_rhs_var(%struct.TYPE_4__* %27, i64 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TREE_CHAIN(i64 %31)
  store i64 %32, i64* %7, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.cgraph_node* @cgraph_node(i64 %37)
  store %struct.cgraph_node* %38, %struct.cgraph_node** %9, align 8
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  %40 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @setjmp_call_p(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8*, i8** @IPA_NEITHER, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @DECL_BUILT_IN_CLASS(i64 %50)
  %52 = load i64, i64* @BUILT_IN_NORMAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @DECL_FUNCTION_CODE(i64 %55)
  switch i32 %56, label %62 [
    i32 129, label %57
    i32 128, label %57
  ]

57:                                               ; preds = %54, %54
  %58 = load i8*, i8** @IPA_NEITHER, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @ECF_PURE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPA_CONST, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i8*, i8** @IPA_PURE, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %78
  br label %95

90:                                               ; preds = %73
  %91 = load i8*, i8** @IPA_NEITHER, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %89
  br label %114

96:                                               ; preds = %69
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ECF_PURE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IPA_CONST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i8*, i8** @IPA_PURE, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %96
  br label %114

114:                                              ; preds = %113, %95
  ret void
}

declare dso_local i32 @call_expr_flags(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @check_rhs_var(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i64) #1

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) #1

declare dso_local i64 @setjmp_call_p(i64) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i64) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
