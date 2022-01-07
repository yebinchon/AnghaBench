; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_sun_builtin_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_sun_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_stab_sun_builtin_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_sun_builtin_type(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %19 [
    i32 115, label %15
    i32 117, label %17
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %7, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %7, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @bad_stab(i8* %20)
  %22 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %17, %15
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 99
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @parse_number(i8** %37, i32* null)
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 59
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @bad_stab(i8* %45)
  %47 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %47, i32* %3, align 4
  br label %90

48:                                               ; preds = %36
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %49, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @parse_number(i8** %52, i32* null)
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 59
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @bad_stab(i8* %60)
  %62 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %48
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = call i32 @parse_number(i8** %67, i32* null)
  store i32 %68, i32* %8, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 59
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @debug_make_void_type(i8* %82)
  store i32 %83, i32* %3, align 4
  br label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %86, 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @debug_make_int_type(i8* %85, i32 %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %81, %59, %44, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @parse_number(i8**, i32*) #1

declare dso_local i32 @debug_make_void_type(i8*) #1

declare dso_local i32 @debug_make_int_type(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
