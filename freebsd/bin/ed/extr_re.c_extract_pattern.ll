; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_re.c_extract_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_re.c_extract_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extract_pattern.lhbuf = internal global i8* null, align 8
@extract_pattern.lhbufsz = internal global i32 0, align 4
@ibufp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"unbalanced brackets ([])\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"trailing backslash (\\)\00", align 1
@isbinary = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extract_pattern(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i8*, i8** @ibufp, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ false, %7 ], [ %17, %13 ]
  br i1 %19, label %20, label %44

20:                                               ; preds = %18
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %24 [
    i32 91, label %25
    i32 92, label %32
  ]

24:                                               ; preds = %20
  br label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @parse_char_class(i8* %27)
  store i8* %28, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %2, align 8
  br label %75

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %20
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %2, align 8
  br label %75

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %7

44:                                               ; preds = %18
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** @ibufp, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i8*, i8** @extract_pattern.lhbuf, align 8
  %52 = load i32, i32* @extract_pattern.lhbufsz, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @REALLOC(i8* %51, i32 %52, i32 %54, i32* null)
  %56 = load i8*, i8** @extract_pattern.lhbuf, align 8
  %57 = load i8*, i8** @ibufp, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load i8*, i8** @extract_pattern.lhbuf, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** @ibufp, align 8
  %65 = load i64, i64* @isbinary, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = load i8*, i8** @extract_pattern.lhbuf, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @NUL_TO_NEWLINE(i8* %68, i32 %69)
  br label %73

71:                                               ; preds = %44
  %72 = load i8*, i8** @extract_pattern.lhbuf, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i8* [ %70, %67 ], [ %72, %71 ]
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %73, %38, %30
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i8* @parse_char_class(i8*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @NUL_TO_NEWLINE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
