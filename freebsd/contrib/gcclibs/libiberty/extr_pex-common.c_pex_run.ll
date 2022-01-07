; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pex_run(%struct.pex_obj* %0, i32 %1, i8* %2, i8** %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.pex_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.pex_obj* %0, %struct.pex_obj** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.pex_obj*, %struct.pex_obj** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i8**, i8*** %11, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i8* @pex_run_in_environment(%struct.pex_obj* %15, i32 %16, i8* %17, i8** %18, i32* null, i8* %19, i8* %20, i32* %21)
  ret i8* %22
}

declare dso_local i8* @pex_run_in_environment(%struct.pex_obj*, i32, i8*, i8**, i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
