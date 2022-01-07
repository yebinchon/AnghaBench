; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_demangle_info*, i8**, i32**, i32*, i32*)* @stab_demangle_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_arg(%struct.stab_demangle_info* %0, i8** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stab_demangle_info*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %12, align 8
  %16 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %7, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = icmp eq i32** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i32* [ null, %20 ], [ %13, %21 ]
  %24 = call i32 @stab_demangle_type(%struct.stab_demangle_info* %16, i8** %17, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %7, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @stab_demangle_remember_type(%struct.stab_demangle_info* %27, i8* %28, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26, %22
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %83

40:                                               ; preds = %26
  %41 = load i32**, i32*** %9, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %6, align 4
  br label %83

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 10
  store i32 %59, i32* %57, align 4
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i64 @xrealloc(i32* %61, i32 %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32**, i32*** %9, align 8
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %56, %49
  %71 = load i32, i32* %13, align 4
  %72 = load i32**, i32*** %9, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %40
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %47, %38
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @stab_demangle_type(%struct.stab_demangle_info*, i8**, i32*) #1

declare dso_local i32 @stab_demangle_remember_type(%struct.stab_demangle_info*, i8*, i32) #1

declare dso_local i64 @xrealloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
