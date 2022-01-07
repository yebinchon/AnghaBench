; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" if \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09if \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" if\09\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09if\09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" if(\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09if( \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8**)* @set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flags(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %16, %12, %3
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = call i8* (...) @get_gdb_completer_quote_characters()
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i8* @strchr(i8* %44, i8 signext %46)
  %48 = icmp ne i8* %47, null
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i1 [ false, %38 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 40)
  %55 = load i8**, i8*** %6, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strrchr(i8* %61, i8 signext 41)
  %63 = load i8**, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %49
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  store i8 32, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %64
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @get_gdb_completer_quote_characters(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
