; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_walk_use_def_chains_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_walk_use_def_chains_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_set_t = type { i32 }

@PHI_NODE = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (i32, i32, i8*)*, i8*, %struct.pointer_set_t*, i32)* @walk_use_def_chains_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_use_def_chains_1(i32 %0, i32 (i32, i32, i8*)* %1, i8* %2, %struct.pointer_set_t* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pointer_set_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 (i32, i32, i8*)* %1, i32 (i32, i32, i8*)** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.pointer_set_t* %3, %struct.pointer_set_t** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pointer_set_t*, %struct.pointer_set_t** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @pointer_set_insert(%struct.pointer_set_t* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %110

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @SSA_NAME_DEF_STMT(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @PHI_NODE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 %28(i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %6, align 4
  br label %110

33:                                               ; preds = %20
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @PHI_NUM_ARGS(i32 %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @PHI_ARG_DEF(i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 %43(i32 %46, i32 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %110

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %33
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @PHI_NUM_ARGS(i32 %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @PHI_ARG_DEF(i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @TREE_CODE(i32 %67)
  %69 = load i64, i64* @SSA_NAME, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  %73 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.pointer_set_t*, %struct.pointer_set_t** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @walk_use_def_chains_1(i32 %72, i32 (i32, i32, i8*)* %73, i8* %74, %struct.pointer_set_t* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %110

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @PHI_NUM_ARGS(i32 %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @PHI_ARG_DEF(i32 %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 %94(i32 %97, i32 %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 1, i32* %6, align 4
  br label %110

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %88

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %102, %79, %51, %27, %19
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @pointer_set_insert(%struct.pointer_set_t*, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @PHI_ARG_DEF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
