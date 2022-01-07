; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_coff_swap_reloc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_coff_swap_reloc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_reloc = type { i32, i32, i32, i32 }
%struct.external_reloc = type { i32, i32, i32, i32 }

@RELSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @coff_swap_reloc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_swap_reloc_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_reloc*, align 8
  %8 = alloca %struct.external_reloc*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.internal_reloc*
  store %struct.internal_reloc* %10, %struct.internal_reloc** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.external_reloc*
  store %struct.external_reloc* %12, %struct.external_reloc** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %15 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.external_reloc*, %struct.external_reloc** %8, align 8
  %18 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @H_PUT_32(i32* %13, i32 %16, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %23 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.external_reloc*, %struct.external_reloc** %8, align 8
  %26 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @H_PUT_32(i32* %21, i32 %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  %31 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.external_reloc*, %struct.external_reloc** %8, align 8
  %34 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @H_PUT_16(i32* %29, i32 %32, i32 %35)
  %37 = load i32, i32* @RELSZ, align 4
  ret i32 %37
}

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
