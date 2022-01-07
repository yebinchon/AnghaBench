; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_dump_copy_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_dump_copy_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@dump_flags = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@num_ssa_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" copy-of chain: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@copy_of = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"[UNDEFINED]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[COPY]\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"[NOT A COPY]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @dump_copy_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_copy_of(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @dump_flags, align 4
  %10 = call i32 @print_generic_expr(i32* %7, i64 %8, i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @SSA_NAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %91

16:                                               ; preds = %2
  %17 = load i32, i32* @num_ssa_names, align 4
  %18 = call i32 @sbitmap_alloc(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sbitmap_zero(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @SSA_NAME_VERSION(i64 %22)
  %24 = call i32 @SET_BIT(i32 %21, i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @print_generic_expr(i32* %28, i64 %29, i32 0)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %61, %16
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @copy_of, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @SSA_NAME_VERSION(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @copy_of, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @SSA_NAME_VERSION(i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @print_generic_expr(i32* %50, i64 %51, i32 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @SSA_NAME_VERSION(i64 %56)
  %58 = call i64 @TEST_BIT(i32 %55, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %66

61:                                               ; preds = %41
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @SSA_NAME_VERSION(i64 %63)
  %65 = call i32 @SET_BIT(i32 %62, i64 %64)
  br label %33

66:                                               ; preds = %60, %33
  %67 = load i64, i64* %4, align 8
  %68 = call %struct.TYPE_3__* @get_copy_of_val(i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @NULL_TREE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @fprintf(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %88

77:                                               ; preds = %66
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %87

84:                                               ; preds = %77
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @fprintf(i32* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @sbitmap_free(i32 %89)
  br label %91

91:                                               ; preds = %88, %15
  ret void
}

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @SET_BIT(i32, i64) #1

declare dso_local i64 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i64 @TEST_BIT(i32, i64) #1

declare dso_local %struct.TYPE_3__* @get_copy_of_val(i64) #1

declare dso_local i32 @sbitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
