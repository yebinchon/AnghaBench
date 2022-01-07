; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_previous_goto_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_previous_goto_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, i64, %struct.cp_binding_level* }

@.str = private unnamed_addr constant [32 x i8] c"  exits OpenMP structured block\00", align 1
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"  crosses initialization of %q+#D\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  enters scope of non-POD %q+#D\00", align 1
@sk_try = common dso_local global i64 0, align 8
@sk_catch = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"  enters try block\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  enters catch block\00", align 1
@sk_omp = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"  enters OpenMP structured block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.cp_binding_level*, i64, i32, i32*)* @check_previous_goto_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_previous_goto_1(i64 %0, %struct.cp_binding_level* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cp_binding_level*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cp_binding_level*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.cp_binding_level* %1, %struct.cp_binding_level** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i64, i64* %6, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @identify_goto(i64 %21, i32* %22)
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %20, %5
  %26 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %26, %struct.cp_binding_level** %11, align 8
  br label %27

27:                                               ; preds = %130, %25
  %28 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %29 = icmp ne %struct.cp_binding_level* %28, null
  br i1 %29, label %30, label %134

30:                                               ; preds = %27
  %31 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %32 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %33 = icmp eq %struct.cp_binding_level* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @NULL_TREE, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  store i64 %39, i64* %16, align 8
  %40 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %41 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %70, %38
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @decl_jump_unsafe(i64 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %70

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @identify_goto(i64 %57, i32* %58)
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %17, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* %15, align 8
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %69

66:                                               ; preds = %60
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @pedwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @TREE_CHAIN(i64 %71)
  store i64 %72, i64* %15, align 8
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %75 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %76 = icmp eq %struct.cp_binding_level* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %134

78:                                               ; preds = %73
  %79 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %80 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @sk_try, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %86 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @sk_catch, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84, %78
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %6, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @identify_goto(i64 %97, i32* %98)
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %102 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @sk_try, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %110

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %90, %84
  %112 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %113 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @sk_omp, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %6, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @identify_goto(i64 %124, i32* %125)
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %127, %117, %111
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.cp_binding_level*, %struct.cp_binding_level** %11, align 8
  %132 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %131, i32 0, i32 2
  %133 = load %struct.cp_binding_level*, %struct.cp_binding_level** %132, align 8
  store %struct.cp_binding_level* %133, %struct.cp_binding_level** %11, align 8
  br label %27

134:                                              ; preds = %77, %27
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  ret i32 %138
}

declare dso_local i32 @identify_goto(i64, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @decl_jump_unsafe(i64) #1

declare dso_local i32 @pedwarn(i8*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
