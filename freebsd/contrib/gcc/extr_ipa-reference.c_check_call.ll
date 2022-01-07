; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_check_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_check_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cgraph_node = type { i32 }

@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4
@ECF_PURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @check_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_call(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cgraph_node*, align 8
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
  store i32 %18, i32* %9, align 4
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
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i64, i64* %10, align 8
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
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.cgraph_node* @cgraph_node(i64 %37)
  store %struct.cgraph_node* %38, %struct.cgraph_node** %11, align 8
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %11, align 8
  %40 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ECF_PURE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %65

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %45
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
