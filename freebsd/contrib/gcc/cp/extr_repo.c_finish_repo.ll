; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_repo.c_finish_repo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_repo.c_finish_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_use_repository = common dso_local global i32 0, align 4
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"M %s\0A\00", align 1
@main_input_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"D %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"COLLECT_GCC_OPTIONS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"A %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"'-frandom-seed=\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" '-frandom-seed=%s'\00", align 1
@flag_random_seed = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pending_repo = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_repo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = load i32, i32* @flag_use_repository, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %80

11:                                               ; preds = %0
  %12 = load i64, i64* @errorcount, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @sorrycount, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  br label %80

18:                                               ; preds = %14
  %19 = call i32* (...) @reopen_repo_file_for_write()
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %74

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** @main_input_filename, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i8* (...) @getpwd()
  store i8* %27, i8** %2, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strstr(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = load i8*, i8** @flag_random_seed, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %23
  %49 = load i64, i64* @pending_repo, align 8
  store i64 %49, i64* %1, align 8
  br label %50

50:                                               ; preds = %70, %48
  %51 = load i64, i64* %1, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load i64, i64* %1, align 8
  %55 = call i64 @TREE_VALUE(i64 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @DECL_ASSEMBLER_NAME(i64 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @IDENTIFIER_REPO_CHOSEN(i64 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 67, i32 79
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %7, align 1
  %64 = load i32*, i32** %4, align 8
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = load i64, i64* %6, align 8
  %68 = call i8* @IDENTIFIER_POINTER(i64 %67)
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %53
  %71 = load i64, i64* %1, align 8
  %72 = call i64 @TREE_CHAIN(i64 %71)
  store i64 %72, i64* %1, align 8
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %22
  %75 = load i32*, i32** %4, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fclose(i32* %78)
  br label %80

80:                                               ; preds = %10, %17, %77, %74
  ret void
}

declare dso_local i32* @reopen_repo_file_for_write(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @getpwd(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i64 @IDENTIFIER_REPO_CHOSEN(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
