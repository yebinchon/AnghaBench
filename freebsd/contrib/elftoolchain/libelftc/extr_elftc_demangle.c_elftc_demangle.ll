; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_demangle.c_elftc_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_demangle.c_elftc_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elftc_demangle(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = lshr i32 %15, 16
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @is_mangled(i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @demangle(i8* %27, i32 %28, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %59

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %34
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %47, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %59

48:                                               ; preds = %37
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @strncpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @free(i8* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %44, %32, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @is_mangled(i8*, i32) #1

declare dso_local i8* @demangle(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
