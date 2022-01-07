; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_string.c_argv_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_string.c_argv_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @argv_split(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @count_argc(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8** @zalloc(i32 %17)
  store i8** %18, i8*** %7, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %62

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8**, i8*** %7, align 8
  store i8** %29, i8*** %8, align 8
  br label %30

30:                                               ; preds = %59, %28
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i8* @skip_sep(i8* %35)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @skip_arg(i8* %42)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @strndup(i8* %44, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %64

55:                                               ; preds = %40
  %56 = load i8*, i8** %10, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  br label %59

59:                                               ; preds = %55, %34
  br label %30

60:                                               ; preds = %30
  %61 = load i8**, i8*** %8, align 8
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %60, %21
  %63 = load i8**, i8*** %7, align 8
  store i8** %63, i8*** %3, align 8
  br label %67

64:                                               ; preds = %54
  %65 = load i8**, i8*** %7, align 8
  %66 = call i32 @argv_free(i8** %65)
  store i8** null, i8*** %3, align 8
  br label %67

67:                                               ; preds = %64, %62
  %68 = load i8**, i8*** %3, align 8
  ret i8** %68
}

declare dso_local i32 @count_argc(i8*) #1

declare dso_local i8** @zalloc(i32) #1

declare dso_local i8* @skip_sep(i8*) #1

declare dso_local i8* @skip_arg(i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @argv_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
