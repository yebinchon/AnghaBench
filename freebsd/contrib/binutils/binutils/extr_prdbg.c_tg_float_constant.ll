; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_float_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_float_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s\09%s\090;\22\09kind:v\09type:const double\09value:%g\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, double)* @tg_float_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_float_constant(i8* %0, i8* %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.pr_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pr_handle*
  store %struct.pr_handle* %9, %struct.pr_handle** %7, align 8
  %10 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %11 = call i32 @indent(%struct.pr_handle* %10)
  %12 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %13 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %17 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load double, double* %6, align 8
  %20 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18, double %19)
  %21 = load i32, i32* @TRUE, align 4
  ret i32 %21
}

declare dso_local i32 @indent(%struct.pr_handle*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
