; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_lineno_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_lineno_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_lineno = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.external_lineno = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LINESZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XXi_swap_lineno_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_lineno*, align 8
  %8 = alloca %struct.external_lineno*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.internal_lineno*
  store %struct.internal_lineno* %10, %struct.internal_lineno** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.external_lineno*
  store %struct.external_lineno* %12, %struct.external_lineno** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.internal_lineno*, %struct.internal_lineno** %7, align 8
  %15 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.external_lineno*, %struct.external_lineno** %8, align 8
  %19 = getelementptr inbounds %struct.external_lineno, %struct.external_lineno* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @H_PUT_32(i32* %13, i32 %17, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.internal_lineno*, %struct.internal_lineno** %7, align 8
  %25 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.external_lineno*, %struct.external_lineno** %8, align 8
  %28 = call i32 @PUT_LINENO_LNNO(i32* %23, i32 %26, %struct.external_lineno* %27)
  %29 = load i32, i32* @LINESZ, align 4
  ret i32 %29
}

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @PUT_LINENO_LNNO(i32*, i32, %struct.external_lineno*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
