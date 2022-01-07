; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_compare_version_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_compare_version_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"^([1-9][0-9]*|0)(\\.([1-9][0-9]*|0))*$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid version number `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_version_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_version_strings(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @REG_EXTENDED, align 4
  %8 = load i32, i32* @REG_NOSUB, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @regcomp(i32* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @regexec(i32* %6, i8* %15, i32 0, i32* null, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @REG_NOMATCH, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %29

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @regexec(i32* %6, i8* %30, i32 0, i32* null, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REG_NOMATCH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %44

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strverscmp(i8* %45, i8* %46)
  ret i32 %47
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @strverscmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
