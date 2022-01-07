; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_read_from_constant_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_read_from_constant_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDIRECT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32* null, align 8
@STRING_CST = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fold_read_from_constant_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @TREE_CODE(i32* %8)
  %10 = load i64, i64* @INDIRECT_REF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @TREE_CODE(i32* %13)
  %15 = load i64, i64* @ARRAY_REF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %107

17:                                               ; preds = %12, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @TREE_TYPE(i32* %18)
  %20 = call i64 @TREE_CODE(i32* %19)
  %21 = load i64, i64* @INTEGER_TYPE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %107

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @TREE_OPERAND(i32* %24, i32 0)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @TREE_CODE(i32* %26)
  %28 = load i64, i64* @INDIRECT_REF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @string_constant(i32* %31, i32** %5)
  store i32* %32, i32** %6, align 8
  br label %51

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @array_ref_low_bound(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** @sizetype, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* @TREE_OPERAND(i32* %37, i32 1)
  %39 = call i32* @fold_convert(i32* %36, i32* %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @integer_zerop(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** @sizetype, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @fold_convert(i32* %45, i32* %46)
  %48 = call i32* @size_diffop(i32* %44, i32* %47)
  store i32* %48, i32** %5, align 8
  br label %49

49:                                               ; preds = %43, %33
  %50 = load i32*, i32** %4, align 8
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %49, %30
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %106

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = call i32* @TREE_TYPE(i32* %55)
  %57 = call i64 @TYPE_MODE(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @TREE_TYPE(i32* %58)
  %60 = call i32* @TREE_TYPE(i32* %59)
  %61 = call i64 @TYPE_MODE(i32* %60)
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @TREE_CODE(i32* %64)
  %66 = load i64, i64* @STRING_CST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @TREE_CODE(i32* %69)
  %71 = load i64, i64* @INTEGER_CST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @TREE_STRING_LENGTH(i32* %75)
  %77 = call i64 @compare_tree_int(i32* %74, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @TREE_TYPE(i32* %80)
  %82 = call i32* @TREE_TYPE(i32* %81)
  %83 = call i64 @TYPE_MODE(i32* %82)
  %84 = call i64 @GET_MODE_CLASS(i64 %83)
  %85 = load i64, i64* @MODE_INT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = call i32* @TREE_TYPE(i32* %88)
  %90 = call i32* @TREE_TYPE(i32* %89)
  %91 = call i64 @TYPE_MODE(i32* %90)
  %92 = call i32 @GET_MODE_SIZE(i64 %91)
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load i32*, i32** %3, align 8
  %96 = call i32* @TREE_TYPE(i32* %95)
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @TREE_STRING_POINTER(i32* %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @TREE_INT_CST_LOW(i32* %100)
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @build_int_cst(i32 %97, i32 %103)
  %105 = call i32* @fold_convert(i32* %96, i32* %104)
  store i32* %105, i32** %2, align 8
  br label %108

106:                                              ; preds = %87, %79, %73, %68, %63, %54, %51
  br label %107

107:                                              ; preds = %106, %17, %12
  store i32* null, i32** %2, align 8
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i32*, i32** %2, align 8
  ret i32* %109
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @string_constant(i32*, i32**) #1

declare dso_local i32* @array_ref_low_bound(i32*) #1

declare dso_local i32* @fold_convert(i32*, i32*) #1

declare dso_local i32 @integer_zerop(i32*) #1

declare dso_local i32* @size_diffop(i32*, i32*) #1

declare dso_local i64 @TYPE_MODE(i32*) #1

declare dso_local i64 @compare_tree_int(i32*, i32) #1

declare dso_local i32 @TREE_STRING_LENGTH(i32*) #1

declare dso_local i64 @GET_MODE_CLASS(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i32* @build_int_cst(i32, i32) #1

declare dso_local i32* @TREE_STRING_POINTER(i32*) #1

declare dso_local i64 @TREE_INT_CST_LOW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
