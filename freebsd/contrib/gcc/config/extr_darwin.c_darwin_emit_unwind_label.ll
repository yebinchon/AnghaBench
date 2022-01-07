; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_emit_unwind_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_emit_unwind_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*)* }

@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@user_label_prefix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c".eh\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09%s %s\0A\00", align 1
@VISIBILITY_HIDDEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c".globl\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c".private_extern\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\09.weak_definition %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s = 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @darwin_emit_unwind_label(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @DECL_ASSEMBLER_NAME_SET_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DECL_ASSEMBLER_NAME(i32 %16)
  %18 = call i8* @IDENTIFIER_POINTER(i32 %17)
  store i8* %18, i8** %9, align 8
  br label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DECL_NAME(i32 %20)
  %22 = call i8* @IDENTIFIER_POINTER(i32 %21)
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* %24(i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @name_needs_quotes(i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %82

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %37 = load i32, i32* @user_label_prefix, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %43 = call i8* @concat(i8* %36, i32 %37, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32* null)
  store i8* %43, i8** %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @TREE_PUBLIC(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @DECL_VISIBILITY(i32 %49)
  %51 = load i64, i64* @VISIBILITY_HIDDEN, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %47, %32
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @DECL_WEAK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @no_dead_strip(i32* %72, i8* %73)
  br label %79

75:                                               ; preds = %65
  %76 = load i32*, i32** %5, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %31
  ret void
}

declare dso_local i64 @DECL_ASSEMBLER_NAME_SET_P(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @name_needs_quotes(i8*) #1

declare dso_local i8* @concat(i8*, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i64 @DECL_VISIBILITY(i32) #1

declare dso_local i64 @DECL_WEAK(i32) #1

declare dso_local i32 @no_dead_strip(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
