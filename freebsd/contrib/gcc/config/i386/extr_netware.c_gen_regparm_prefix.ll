; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_netware.c_gen_regparm_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_netware.c_gen_regparm_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"_%u@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @gen_regparm_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen_regparm_prefix(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @DECL_ASSEMBLER_NAME(i64 %11)
  %13 = call i8* @IDENTIFIER_POINTER(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @TREE_TYPE(i64 %14)
  %16 = call i64 @TYPE_ARG_TYPES(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @tree_last(i64 %21)
  %23 = call i64 @TREE_VALUE(i64 %22)
  %24 = load i64, i64* @void_type_node, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @NULL_TREE, align 8
  store i64 %27, i64* %3, align 8
  br label %86

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @TREE_VALUE(i64 %30)
  %32 = load i64, i64* @void_type_node, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @TREE_VALUE(i64 %35)
  %37 = call i64 @COMPLETE_TYPE_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @TREE_VALUE(i64 %42)
  %44 = call i32 @TYPE_SIZE(i64 %43)
  %45 = call i32 @TREE_INT_CST_LOW(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PARM_BOUNDARY, align 4
  %48 = add i32 %46, %47
  %49 = sub i32 %48, 1
  %50 = load i32, i32* @PARM_BOUNDARY, align 4
  %51 = udiv i32 %49, %50
  %52 = load i32, i32* @PARM_BOUNDARY, align 4
  %53 = mul i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @TREE_CHAIN(i64 %57)
  store i64 %58, i64* %9, align 8
  br label %29

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @BITS_PER_WORD, align 4
  %64 = udiv i32 %62, %63
  %65 = icmp ugt i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BITS_PER_WORD, align 4
  %69 = udiv i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %5, align 4
  %72 = icmp ule i32 %71, 9
  %73 = zext i1 %72 to i32
  %74 = call i32 @gcc_assert(i32 %73)
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = add nsw i64 3, %76
  %78 = add nsw i64 %77, 1
  %79 = call i8* @alloca(i64 %78)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %83)
  %85 = call i64 @get_identifier_with_length(i8* %80, i32 %84)
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %70, %26
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @tree_last(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @get_identifier_with_length(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
