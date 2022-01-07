; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_get_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_get_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@DEFAULT_MEMORY_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%X%P:%S: section has both a load address and a load region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32**, i8*, i8*, i64, i64)* @lang_get_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_get_regions(i32** %0, i32** %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32* @lang_memory_region_lookup(i8* %13, i32 %14)
  %16 = load i32**, i32*** %8, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @DEFAULT_MEMORY_REGION, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  br label %36

31:                                               ; preds = %22, %19, %6
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32* @lang_memory_region_lookup(i8* %32, i32 %33)
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @einfo(i32 %43)
  br label %45

45:                                               ; preds = %42, %39, %36
  ret void
}

declare dso_local i32* @lang_memory_region_lookup(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
