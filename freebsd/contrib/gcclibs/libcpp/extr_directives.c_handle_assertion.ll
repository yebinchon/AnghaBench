; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_handle_assertion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_handle_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @handle_assertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_assertion(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 61)
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 2
  %16 = call i64 @alloca(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8 40, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 41, i8* %35, align 1
  br label %36

36:                                               ; preds = %24, %3
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 10, i8* %39, align 1
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @run_directive(i32* %41, i32 %42, i8* %43, i64 %44)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @run_directive(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
