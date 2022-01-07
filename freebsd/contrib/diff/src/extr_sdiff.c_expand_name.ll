; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_expand_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_expand_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot interactively merge standard input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @expand_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_name(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %4, align 8
  br label %72

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @base_name(i8* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @base_name(i8* %30)
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br label %43

43:                                               ; preds = %35, %23
  %44 = phi i1 [ false, %23 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %49, %50
  %52 = add i64 %51, 1
  %53 = call i8* @xmalloc(i64 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @memcpy(i8* %54, i8* %55, i64 %56)
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 47, i8* %60, align 1
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  %70 = call i32 @memcpy(i8* %66, i8* %67, i64 %69)
  %71 = load i8*, i8** %12, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %43, %21
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @base_name(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
