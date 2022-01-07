; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_formal_list_for_func_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_formal_list_for_func_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ansi = common dso_local global i32 0, align 4
@k_and_r_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@k_and_r_decls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @gen_formal_list_for_func_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_formal_list_for_func_def(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @DECL_ARGUMENTS(i64 %8)
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ansi, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @k_and_r_names, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %26, %22, %13
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @gen_decl(i64 %30, i32 0, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @k_and_r_decls, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %37, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i8* %39, i8** %5, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %41, i8* %42, i8* null)
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @TREE_CHAIN(i64 %45)
  store i64 %46, i64* %6, align 8
  br label %10

47:                                               ; preds = %10
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ansi, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @DECL_ARGUMENTS(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* null)
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @TREE_TYPE(i64 %59)
  %61 = call i64 @deserves_ellipsis(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ansi, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @k_and_r_names, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* null)
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i8*, i8** %5, align 8
  ret i8* %79
}

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i8* @gen_decl(i64, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @deserves_ellipsis(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
