; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_iidesc.c_iidesc_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_iidesc.c_iidesc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"GFun: %5d SFun: %5d GVar: %5d SVar: %5d T %5d SOU: %5d\0A\00", align 1
@iidesc_count_type = common dso_local global i32 0, align 4
@II_GFUN = common dso_local global i64 0, align 8
@II_SFUN = common dso_local global i64 0, align 8
@II_GVAR = common dso_local global i64 0, align 8
@II_SVAR = common dso_local global i64 0, align 8
@II_TYPE = common dso_local global i64 0, align 8
@II_SOU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iidesc_stats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @iidesc_count_type, align 4
  %5 = load i64, i64* @II_GFUN, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @hash_iter(i32* %3, i32 %4, i8* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @iidesc_count_type, align 4
  %10 = load i64, i64* @II_SFUN, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @hash_iter(i32* %8, i32 %9, i8* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @iidesc_count_type, align 4
  %15 = load i64, i64* @II_GVAR, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @hash_iter(i32* %13, i32 %14, i8* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @iidesc_count_type, align 4
  %20 = load i64, i64* @II_SVAR, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @hash_iter(i32* %18, i32 %19, i8* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @iidesc_count_type, align 4
  %25 = load i64, i64* @II_TYPE, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @hash_iter(i32* %23, i32 %24, i8* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @iidesc_count_type, align 4
  %30 = load i64, i64* @II_SOU, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @hash_iter(i32* %28, i32 %29, i8* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %17, i32 %22, i32 %27, i32 %32)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hash_iter(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
