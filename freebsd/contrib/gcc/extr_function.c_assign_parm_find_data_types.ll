; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_data_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_data_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32*)*, i64 (i32*)* }
%struct.assign_parm_data_all = type { i32 }
%struct.assign_parm_data_one = type { i32, i32, i32, i32, i32, i32*, i32* }

@current_function_stdarg = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@error_mark_node = common dso_local global i32* null, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@UNION_TYPE = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_all*, i32*, %struct.assign_parm_data_one*)* @assign_parm_find_data_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_find_data_types(%struct.assign_parm_data_all* %0, i32* %1, %struct.assign_parm_data_one* %2) #0 {
  %4 = alloca %struct.assign_parm_data_all*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assign_parm_data_one*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.assign_parm_data_all* %0, %struct.assign_parm_data_all** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.assign_parm_data_one* %2, %struct.assign_parm_data_one** %6, align 8
  %13 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %14 = call i32 @memset(%struct.assign_parm_data_one* %13, i32 0, i32 40)
  %15 = load i32, i32* @current_function_stdarg, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %19 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %41

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @TREE_CHAIN(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %26 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %40

27:                                               ; preds = %20
  %28 = load i64 (i32*)*, i64 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 1), align 8
  %29 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %30 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %29, i32 0, i32 0
  %31 = call i64 %28(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %35 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %39

36:                                               ; preds = %27
  %37 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %38 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @TREE_TYPE(i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @DECL_ARG_TYPE(i32* %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @TREE_TYPE(i32* %46)
  %48 = load i32*, i32** @error_mark_node, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @TREE_CODE(i32* %51)
  %53 = load i64, i64* @PARM_DECL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @VOID_TYPE_P(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %55, %50, %41
  %63 = load i32*, i32** @void_type_node, align 8
  store i32* %63, i32** %8, align 8
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* @VOIDmode, align 4
  store i32 %64, i32* %11, align 4
  store i32 %64, i32* %10, align 4
  store i32 %64, i32* %9, align 4
  br label %112

65:                                               ; preds = %58
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @TYPE_MODE(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @TYPE_MODE(i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @TREE_CODE(i32* %70)
  %72 = load i64, i64* @UNION_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load i32*, i32** %8, align 8
  %76 = call i64 @TYPE_TRANSPARENT_UNION(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = call i32* @TYPE_FIELDS(i32* %79)
  %81 = call i32* @TREE_TYPE(i32* %80)
  store i32* %81, i32** %8, align 8
  br label %82

82:                                               ; preds = %78, %74, %65
  %83 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %84 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %83, i32 0, i32 0
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %88 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @pass_by_reference(i32* %84, i32 %85, i32* %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @build_pointer_type(i32* %93)
  store i32* %94, i32** %7, align 8
  store i32* %94, i32** %8, align 8
  %95 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %96 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* @Pmode, align 4
  store i32 %97, i32* %9, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %82
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i64 (i32*)*, i64 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %101 = load i32*, i32** @current_function_decl, align 8
  %102 = call i32* @TREE_TYPE(i32* %101)
  %103 = call i64 %100(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @TYPE_UNSIGNED(i32* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @promote_mode(i32* %108, i32 %109, i32* %12, i32 1)
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %105, %98
  br label %112

112:                                              ; preds = %111, %62
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %115 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %114, i32 0, i32 6
  store i32* %113, i32** %115, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %118 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %117, i32 0, i32 5
  store i32* %116, i32** %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %121 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %124 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %127 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  ret void
}

declare dso_local i32 @memset(%struct.assign_parm_data_one*, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i32* @DECL_ARG_TYPE(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i64 @VOID_TYPE_P(i32*) #1

declare dso_local i32 @TYPE_MODE(i32*) #1

declare dso_local i64 @TYPE_TRANSPARENT_UNION(i32*) #1

declare dso_local i32* @TYPE_FIELDS(i32*) #1

declare dso_local i64 @pass_by_reference(i32*, i32, i32*, i32) #1

declare dso_local i32* @build_pointer_type(i32*) #1

declare dso_local i32 @TYPE_UNSIGNED(i32*) #1

declare dso_local i32 @promote_mode(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
