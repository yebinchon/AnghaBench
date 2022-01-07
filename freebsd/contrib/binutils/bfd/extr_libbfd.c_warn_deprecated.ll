; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c_warn_deprecated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_libbfd.c_warn_deprecated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_deprecated.mask = internal global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Deprecated %s called at %s line %d in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Deprecated %s called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_deprecated(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = xor i64 %10, -1
  %12 = load i64, i64* @warn_deprecated.mask, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %20, i8* %21, i8* %22, i8* %23, i32 %24, i8* %25)
  br label %32

27:                                               ; preds = %16
  %28 = load i32, i32* @stderr, align 4
  %29 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = xor i64 %34, -1
  %36 = load i64, i64* @warn_deprecated.mask, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* @warn_deprecated.mask, align 8
  br label %38

38:                                               ; preds = %32, %4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
