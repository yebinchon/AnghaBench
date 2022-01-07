; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_isOption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dialog.c_isOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@dialog_opts = common dso_local global i8** null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@OptionChars = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @isOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isOption(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = load i8**, i8*** @dialog_opts, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i8**, i8*** @dialog_opts, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load i8**, i8*** @dialog_opts, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %12

33:                                               ; preds = %27, %12
  br label %60

34:                                               ; preds = %8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @UCH(i8 signext %41)
  %43 = call i64 @isalpha(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* @OptionChars, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %45
  %55 = call i32 (...) @handle_leaks()
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %52
  br label %59

59:                                               ; preds = %58, %38, %34
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @UCH(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @handle_leaks(...) #1

declare dso_local i32 @dlg_exiterr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
