; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_sun_floating_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_sun_floating_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@NF_COMPLEX = common dso_local global i64 0, align 8
@NF_COMPLEX16 = common dso_local global i64 0, align 8
@NF_COMPLEX32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_stab_sun_floating_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_sun_floating_type(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = call i64 @parse_number(i8** %11, i32* null)
  store i64 %12, i64* %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 59
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @bad_stab(i8* %19)
  %21 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = call i64 @parse_number(i8** %23, i32* null)
  store i64 %24, i64* %8, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 59
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @bad_stab(i8* %31)
  %33 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %22
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @NF_COMPLEX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @NF_COMPLEX16, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @NF_COMPLEX32, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38, %34
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @debug_make_complex_type(i8* %47, i64 %48)
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @debug_make_float_type(i8* %51, i64 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %46, %30, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @parse_number(i8**, i32*) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @debug_make_complex_type(i8*, i64) #1

declare dso_local i32 @debug_make_float_type(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
