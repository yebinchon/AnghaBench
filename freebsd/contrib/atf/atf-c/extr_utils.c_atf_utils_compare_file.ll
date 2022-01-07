; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_compare_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_compare_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_utils_compare_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @ATF_REQUIRE_MSG(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %42, %2
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %25 = call i64 @read(i32 %23, i8* %24, i32 1024)
  store i64 %25, i64* %10, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp sle i64 %28, %29
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @memcmp(i8* %34, i8* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @close(i32 %40)
  store i32 0, i32* %3, align 4
  br label %60

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %7, align 8
  br label %22

49:                                               ; preds = %31
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i1 [ false, %49 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %39
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
