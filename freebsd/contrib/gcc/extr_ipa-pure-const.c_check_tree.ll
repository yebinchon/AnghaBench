; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-pure-const.c_check_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-pure-const.c_check_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@EXC_PTR_EXPR = common dso_local global i64 0, align 8
@FILTER_EXPR = common dso_local global i64 0, align 8
@IPA_NEITHER = common dso_local global i8* null, align 8
@REALPART_EXPR = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@IPA_CONST = common dso_local global i64 0, align 8
@IPA_PURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @check_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_tree(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @EXC_PTR_EXPR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @FILTER_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  br label %92

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @TREE_THIS_VOLATILE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8*, i8** @IPA_NEITHER, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %92

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @REALPART_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @IMAGPART_EXPR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @handled_component_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %32, %27
  %42 = phi i1 [ true, %32 ], [ true, %27 ], [ %40, %37 ]
  br i1 %42, label %43, label %56

43:                                               ; preds = %41
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @ARRAY_REF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 1)
  %52 = call i32 @check_operand(%struct.TYPE_4__* %49, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 0)
  store i32 %55, i32* %5, align 4
  br label %27

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @INDIRECT_REF_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 0)
  call void @check_tree(%struct.TYPE_4__* %61, i32 %63, i32 0)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8*, i8** @IPA_NEITHER, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %92

71:                                               ; preds = %60
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IPA_CONST, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @IPA_PURE, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @SSA_VAR_P(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @check_operand(%struct.TYPE_4__* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %16, %21, %66, %87, %83
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i64 @handled_component_p(i32) #1

declare dso_local i32 @check_operand(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @INDIRECT_REF_P(i32) #1

declare dso_local i64 @SSA_VAR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
