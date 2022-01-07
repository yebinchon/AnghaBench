; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_built_source_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_built_source_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOURCE_NONE = common dso_local global i32 0, align 4
@STT_FILE = common dso_local global i32 0, align 4
@SOURCE_UNKNOWN = common dso_local global i32 0, align 4
@SOURCE_C = common dso_local global i32 0, align 4
@SOURCE_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @built_source_types(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @SOURCE_NONE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @symit_new(i32* %11, i8* %12)
  store i32* %13, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SOURCE_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %62, %38, %17
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @STT_FILE, align 4
  %21 = call i32* @symit_next(i32* %19, i32 %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @symit_name(i32* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %28, 2
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub i64 %32, 2
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 46
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %23
  %39 = load i32, i32* @SOURCE_UNKNOWN, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %30
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %58 [
    i32 99, label %49
    i32 104, label %53
    i32 115, label %54
    i32 83, label %54
  ]

49:                                               ; preds = %42
  %50 = load i32, i32* @SOURCE_C, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %42
  br label %62

54:                                               ; preds = %42, %42
  %55 = load i32, i32* @SOURCE_S, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %42
  %59 = load i32, i32* @SOURCE_UNKNOWN, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %54, %53, %49
  br label %18

63:                                               ; preds = %18
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @symit_free(i32* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32* @symit_new(i32*, i8*) #1

declare dso_local i32* @symit_next(i32*, i32) #1

declare dso_local i8* @symit_name(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @symit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
