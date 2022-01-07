; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"subprocess stdout: \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"subprocess stderr: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"save:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atf_utils_wait(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @waitpid(i32 %14, i32* %9, i32 0)
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ATF_REQUIRE(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @init_out_filename(i32* %10, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @init_out_filename(i32* %11, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %23 = call i32 @atf_dynstr_cstring(i32* %10)
  %24 = call i32 @atf_utils_cat_file(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @atf_dynstr_cstring(i32* %11)
  %26 = call i32 @atf_utils_cat_file(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @WIFEXITED(i32 %27)
  %29 = call i32 @ATF_REQUIRE(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @WEXITSTATUS(i32 %31)
  %33 = call i32 @ATF_REQUIRE_EQ(i32 %30, i32 %32)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %13, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load i64, i64* %13, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @strncmp(i8* %41, i8* %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = call i32 @atf_dynstr_cstring(i32* %10)
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = call i32 @atf_utils_copy_file(i32 %47, i8* %50)
  br label %57

52:                                               ; preds = %40, %4
  %53 = call i32 @atf_dynstr_cstring(i32* %10)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @atf_utils_compare_file(i32 %53, i8* %54)
  %56 = call i32 @ATF_REQUIRE(i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = load i64, i64* %13, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @strncmp(i8* %63, i8* %64, i64 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = call i32 @atf_dynstr_cstring(i32* %11)
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = call i32 @atf_utils_copy_file(i32 %69, i8* %72)
  br label %79

74:                                               ; preds = %62, %57
  %75 = call i32 @atf_dynstr_cstring(i32* %11)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @atf_utils_compare_file(i32 %75, i8* %76)
  %78 = call i32 @ATF_REQUIRE(i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = call i32 @atf_dynstr_cstring(i32* %10)
  %81 = call i32 @unlink(i32 %80)
  %82 = icmp ne i32 %81, -1
  %83 = zext i1 %82 to i32
  %84 = call i32 @ATF_REQUIRE(i32 %83)
  %85 = call i32 @atf_dynstr_cstring(i32* %11)
  %86 = call i32 @unlink(i32 %85)
  %87 = icmp ne i32 %86, -1
  %88 = zext i1 %87 to i32
  %89 = call i32 @ATF_REQUIRE(i32 %88)
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @init_out_filename(i32*, i32, i8*, i32) #1

declare dso_local i32 @atf_utils_cat_file(i32, i8*) #1

declare dso_local i32 @atf_dynstr_cstring(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @atf_utils_copy_file(i32, i8*) #1

declare dso_local i32 @atf_utils_compare_file(i32, i8*) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
