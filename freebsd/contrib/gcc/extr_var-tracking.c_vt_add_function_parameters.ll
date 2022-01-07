; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_vt_add_function_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_vt_add_function_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@current_function_decl = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vt_add_function_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_add_function_parameters() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = load i32, i32* @current_function_decl, align 4
  %8 = call i64 @DECL_ARGUMENTS(i32 %7)
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %105, %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @DECL_RTL_IF_SET(i64 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @DECL_INCOMING_RTL(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* %1, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @PARM_DECL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %105

22:                                               ; preds = %12
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @DECL_NAME(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %105

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27
  br label %105

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @GET_MODE(i32 %35)
  %37 = load i64, i64* @BLKmode, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @GET_MODE(i32 %40)
  %42 = load i64, i64* @BLKmode, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  br label %105

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @vt_get_decl_and_offset(i32 %46, i64* %4, i32* %5)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @vt_get_decl_and_offset(i32 %50, i64* %4, i32* %5)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %105

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %105

59:                                               ; preds = %55
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  %66 = call %struct.TYPE_5__* @VTI(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %6, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @REG_P(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @REGNO(i32 %72)
  %74 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %75 = icmp ult i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @gcc_assert(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @REGNO(i32 %81)
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i64, i64* %1, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @attrs_list_insert(i32* %83, i64 %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load i64, i64* %1, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @set_variable_part(%struct.TYPE_4__* %88, i32 %89, i64 %90, i32 %91)
  br label %104

93:                                               ; preds = %59
  %94 = load i32, i32* %3, align 4
  %95 = call i64 @MEM_P(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i64, i64* %1, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @set_variable_part(%struct.TYPE_4__* %98, i32 %99, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %93
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %58, %53, %44, %33, %26, %21
  %106 = load i64, i64* %1, align 8
  %107 = call i64 @TREE_CHAIN(i64 %106)
  store i64 %107, i64* %1, align 8
  br label %9

108:                                              ; preds = %9
  ret void
}

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @DECL_RTL_IF_SET(i64) #1

declare dso_local i32 @DECL_INCOMING_RTL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @vt_get_decl_and_offset(i32, i64*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_5__* @VTI(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @attrs_list_insert(i32*, i64, i32, i32) #1

declare dso_local i32 @set_variable_part(%struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
