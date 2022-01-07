; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_util.c_findenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_util.c_findenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @findenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findenv(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i8**, i8*** @environ, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 61)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %18
  br label %47

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @strncmp(i8* %33, i8* %34, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %3, align 8
  br label %54

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  store i8* null, i8** %3, align 8
  br label %54

54:                                               ; preds = %50, %38
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
