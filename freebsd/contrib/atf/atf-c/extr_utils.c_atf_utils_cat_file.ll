; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_cat_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_cat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atf_utils_cat_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @ATF_REQUIRE_MSG(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %63, %2
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %22 = call i64 @read(i32 %20, i8* %21, i32 1023)
  store i64 %22, i64* %7, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %53, %32
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 10)
  store i8* %36, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = icmp ne i8* %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %53

52:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %34

54:                                               ; preds = %34
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = icmp ult i8* %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %54
  br label %19

64:                                               ; preds = %19
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ATF_REQUIRE(i32 %67)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
