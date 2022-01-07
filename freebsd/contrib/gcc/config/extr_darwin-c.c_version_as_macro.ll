; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_version_as_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin-c.c_version_as_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@version_as_macro.result = internal global [5 x i8] c"1000\00", align 1
@darwin_macosx_version_min = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"10.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unknown value %qs of -mmacosx-version-min\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @version_as_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @version_as_macro() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @darwin_macosx_version_min, align 8
  %3 = call i64 @strncmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %49

6:                                                ; preds = %0
  %7 = load i8*, i8** @darwin_macosx_version_min, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 3
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @ISDIGIT(i8 signext %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %49

13:                                               ; preds = %6
  %14 = load i8*, i8** @darwin_macosx_version_min, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @version_as_macro.result, i64 0, i64 2), align 1
  %17 = load i8*, i8** @darwin_macosx_version_min, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %13
  %23 = load i8*, i8** @darwin_macosx_version_min, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 46
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %49

29:                                               ; preds = %22
  %30 = load i8*, i8** @darwin_macosx_version_min, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @ISDIGIT(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %49

36:                                               ; preds = %29
  %37 = load i8*, i8** @darwin_macosx_version_min, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %36
  %44 = load i8*, i8** @darwin_macosx_version_min, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @version_as_macro.result, i64 0, i64 3), align 1
  br label %48

47:                                               ; preds = %13
  store i8 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @version_as_macro.result, i64 0, i64 3), align 1
  br label %48

48:                                               ; preds = %47, %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @version_as_macro.result, i64 0, i64 0), i8** %1, align 8
  br label %52

49:                                               ; preds = %42, %35, %28, %12, %5
  %50 = load i8*, i8** @darwin_macosx_version_min, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i8*, i8** %1, align 8
  ret i8* %53
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
