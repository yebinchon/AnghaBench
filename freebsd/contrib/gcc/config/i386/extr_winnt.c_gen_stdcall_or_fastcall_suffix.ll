; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_gen_stdcall_or_fastcall_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_gen_stdcall_or_fastcall_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@FASTCALL_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%d\00", align 1
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @gen_stdcall_or_fastcall_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen_stdcall_or_fastcall_suffix(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @DECL_ASSEMBLER_NAME(i64 %12)
  %14 = call i8* @IDENTIFIER_POINTER(i64 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 42
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strchr(i8* %20, i8 signext 64)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %2
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @DECL_ASSEMBLER_NAME(i64 %24)
  store i64 %25, i64* %3, align 8
  br label %99

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @TREE_TYPE(i64 %27)
  %29 = call i64 @TYPE_ARG_TYPES(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @NULL_TREE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @tree_last(i64 %34)
  %36 = call i64 @TREE_VALUE(i64 %35)
  %37 = load i64, i64* @void_type_node, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @DECL_ASSEMBLER_NAME(i64 %40)
  store i64 %41, i64* %3, align 8
  br label %99

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @TREE_VALUE(i64 %44)
  %46 = load i64, i64* @void_type_node, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @TREE_VALUE(i64 %49)
  %51 = call i64 @COMPLETE_TYPE_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %73

55:                                               ; preds = %53
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @TREE_VALUE(i64 %56)
  %58 = call i32 @TYPE_SIZE(i64 %57)
  %59 = call i32 @TREE_INT_CST_LOW(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @PARM_BOUNDARY, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* @PARM_BOUNDARY, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32, i32* @PARM_BOUNDARY, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @TREE_CHAIN(i64 %71)
  store i64 %72, i64* %10, align 8
  br label %43

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %26
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = add nsw i64 1, %76
  %78 = add nsw i64 %77, 1
  %79 = add nsw i64 %78, 8
  %80 = add nsw i64 %79, 1
  %81 = call i8* @alloca(i64 %80)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @FASTCALL_PREFIX, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  store i8 %87, i8* %88, align 1
  br label %90

90:                                               ; preds = %85, %74
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @BITS_PER_UNIT, align 4
  %95 = sdiv i32 %93, %94
  %96 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %95)
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @get_identifier(i8* %97)
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %90, %39, %23
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @tree_last(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i64 @get_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
