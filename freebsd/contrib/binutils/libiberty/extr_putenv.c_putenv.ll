; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_putenv.c_putenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_putenv.c_putenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strchr(i8* %6, i8 signext 61)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = add nsw i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i64 @alloca(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i8* %20, i8* %21, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @setenv(i8* %36, i8* %38, i32 1)
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @unsetenv(i8* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
