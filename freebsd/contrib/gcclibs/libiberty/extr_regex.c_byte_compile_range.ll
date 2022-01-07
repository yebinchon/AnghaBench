; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_byte_compile_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_byte_compile_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_ERANGE = common dso_local global i32 0, align 4
@RE_NO_EMPTY_RANGES = common dso_local global i32 0, align 4
@REG_NOERROR = common dso_local global i32 0, align 4
@BYTEWIDTH = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@_NL_COLLATE_COLLSEQMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, i32, i32, i8*)* @byte_compile_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byte_compile_range(i32 %0, i8** %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @REG_ERANGE, align 4
  store i32 %24, i32* %7, align 4
  br label %66

25:                                               ; preds = %6
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @RE_NO_EMPTY_RANGES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @REG_ERANGE, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @REG_NOERROR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %8, align 4
  %40 = trunc i32 %39 to i8
  %41 = call i32 @TRANSLATE(i8 signext %40)
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @TRANSLATE(i8 signext %44)
  %46 = load i32, i32* @BYTEWIDTH, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %45, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %61, %37
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = trunc i32 %56 to i8
  %58 = call i32 @TRANSLATE(i8 signext %57)
  %59 = call i32 @SET_LIST_BIT(i32 %58)
  %60 = load i32, i32* @REG_NOERROR, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @TRANSLATE(i8 signext) #1

declare dso_local i32 @SET_LIST_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
