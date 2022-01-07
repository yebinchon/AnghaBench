; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_tab.c_Fconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_tab.c_Fconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S1 = common dso_local global i32* null, align 8
@S2 = common dso_local global i32* null, align 8
@S3 = common dso_local global i32* null, align 8
@S4 = common dso_local global i32* null, align 8
@S5 = common dso_local global i32* null, align 8
@S6 = common dso_local global i32* null, align 8
@S7 = common dso_local global i32* null, align 8
@S8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @Fconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Fconf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 16
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 16
  %12 = or i32 %9, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** @S1, align 8
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 11
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 18
  %18 = xor i32 %15, %17
  %19 = and i32 %18, 63
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %13, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @S2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 23
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 12
  %28 = xor i32 %25, %27
  %29 = and i32 %28, 63
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %23, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %22, %32
  %34 = load i32*, i32** @S3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 19
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 6
  %39 = xor i32 %36, %38
  %40 = and i32 %39, 63
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %33, %43
  %45 = load i32*, i32** @S4, align 8
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 15
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %47, %48
  %50 = and i32 %49, 63
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %44, %53
  %55 = load i32*, i32** @S5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 11
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 18
  %60 = xor i32 %57, %59
  %61 = and i32 %60, 63
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %55, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %54, %64
  %66 = load i32*, i32** @S6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 7
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 12
  %71 = xor i32 %68, %70
  %72 = and i32 %71, 63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %66, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %65, %75
  %77 = load i32*, i32** @S7, align 8
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 3
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 6
  %82 = xor i32 %79, %81
  %83 = and i32 %82, 63
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %76, %86
  %88 = load i32*, i32** @S8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 15
  %91 = load i32, i32* %6, align 4
  %92 = xor i32 %90, %91
  %93 = and i32 %92, 63
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %87, %96
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
