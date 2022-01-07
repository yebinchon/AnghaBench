; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_get_default_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_get_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64, i32, i32, i32 }

@UNINITIALIZED = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@do_store_ccp = common dso_local global i64 0, align 8
@VARYING = common dso_local global i8* null, align 8
@CONSTANT = common dso_local global i8* null, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@UNDEFINED = common dso_local global i8* null, align 8
@UNKNOWN_VAL = common dso_local global i8* null, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@PHI_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @get_default_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_default_value(%struct.TYPE_3__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @SSA_NAME_VAR(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %9 = load i32, i32* @UNINITIALIZED, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %15 = load i32, i32* @NULL_TREE, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 0, i32* %19, align 8
  %20 = load i64, i64* @do_store_ccp, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @is_gimple_reg(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** @VARYING, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %130

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @SSA_NAME_VALUE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @SSA_NAME_VALUE(i32 %34)
  %36 = call i64 @is_gimple_min_invariant(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** @CONSTANT, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @SSA_NAME_VALUE(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  br label %129

44:                                               ; preds = %33, %29
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @TREE_STATIC(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @TREE_READONLY(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @MTAG_P(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @DECL_INITIAL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @DECL_INITIAL(i32 %61)
  %63 = call i64 @ccp_decl_initial_min_invariant(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i8*, i8** @CONSTANT, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @DECL_INITIAL(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  br label %128

73:                                               ; preds = %60, %56, %52, %48, %44
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @SSA_NAME_DEF_STMT(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @IS_EMPTY_STMT(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @is_gimple_reg(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @TREE_CODE(i32 %84)
  %86 = load i64, i64* @PARM_DECL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** @UNDEFINED, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  br label %101

91:                                               ; preds = %83, %79
  %92 = load i64, i64* @do_store_ccp, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** @UNKNOWN_VAL, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  br label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** @VARYING, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %88
  br label %127

102:                                              ; preds = %73
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @TREE_CODE(i32 %103)
  %105 = load i64, i64* @MODIFY_EXPR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @TREE_CODE(i32 %108)
  %110 = load i64, i64* @PHI_NODE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @is_gimple_reg(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i8*, i8** @UNDEFINED, align 8
  br label %120

118:                                              ; preds = %112
  %119 = load i8*, i8** @UNKNOWN_VAL, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i8* [ %117, %116 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  br label %126

123:                                              ; preds = %107
  %124 = load i8*, i8** @VARYING, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127, %65
  br label %129

129:                                              ; preds = %128, %38
  br label %130

130:                                              ; preds = %129, %26
  ret void
}

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i64 @is_gimple_reg(i32) #1

declare dso_local i64 @SSA_NAME_VALUE(i32) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i64 @TREE_READONLY(i32) #1

declare dso_local i32 @MTAG_P(i32) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i64 @ccp_decl_initial_min_invariant(i64) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @IS_EMPTY_STMT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
