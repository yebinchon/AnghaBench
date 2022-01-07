; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_auto_size_preformatted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_auto_size_preformatted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SLINES = common dso_local global i32 0, align 4
@SCOLS = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @auto_size_preformatted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_size_preformatted(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @SLINES, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @SCOLS, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 4
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @justify_text(i32* null, i8* %21, i32 %22, i32 %23, i32* %7, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %25, %26
  %28 = sitofp i32 %27 to float
  store float %28, float* %9, align 4
  %29 = load float, float* %9, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sitofp i32 %30 to float
  %32 = fcmp ogt float %29, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = load float, float* %9, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  store float %37, float* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sitofp i32 %38 to float
  %40 = load float, float* %10, align 4
  %41 = fdiv float %39, %40
  %42 = fadd float %41, 4.000000e+00
  %43 = fptosi float %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @justify_text(i32* null, i8* %44, i32 %45, i32 %46, i32* %7, i32* %8)
  %48 = load i32, i32* %8, align 4
  %49 = sitofp i32 %48 to float
  %50 = load i32, i32* %7, align 4
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %49, %51
  store float %52, float* %9, align 4
  br label %53

53:                                               ; preds = %33, %3
  br label %54

54:                                               ; preds = %65, %53
  %55 = load float, float* %9, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sitofp i32 %56 to float
  %58 = fcmp olt float %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %12, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @justify_text(i32* null, i8* %68, i32 %69, i32 %70, i32* %7, i32* %8)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %72, %73
  %75 = sitofp i32 %74 to float
  store float %75, float* %9, align 4
  br label %54

76:                                               ; preds = %63
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  ret void
}

declare dso_local i32 @justify_text(i32*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
