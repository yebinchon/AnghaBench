; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_pe-mips.c_mips_swap_reloc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_pe-mips.c_mips_swap_reloc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_reloc = type { i32, i32, i32, i32 }
%struct.external_reloc = type { i32, i32, i32 }

@mips_swap_reloc_out.prev_offset = internal global i32 1, align 4
@mips_swap_reloc_out.prev_addr = internal global i32 0, align 4
@MIPS_R_PAIR = common dso_local global i32 0, align 4
@RELSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @mips_swap_reloc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_swap_reloc_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.internal_reloc*, align 8
  %9 = alloca %struct.external_reloc*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.internal_reloc*
  store %struct.internal_reloc* %11, %struct.internal_reloc** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.external_reloc*
  store %struct.external_reloc* %13, %struct.external_reloc** %9, align 8
  %14 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %15 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %55 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %3
  %18 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %19 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @mips_swap_reloc_out.prev_addr, align 4
  %21 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %22 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @mips_swap_reloc_out.prev_offset, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %26 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @mips_swap_reloc_out.prev_addr, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %33 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %36 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @H_PUT_32(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %41 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %44 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @H_PUT_32(i32* %39, i32 %42, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @MIPS_R_PAIR, align 4
  %49 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %50 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @H_PUT_16(i32* %47, i32 %48, i32 %51)
  %53 = load i32, i32* @RELSZ, align 4
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %3, %54, %17
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %58 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %61 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @H_PUT_32(i32* %56, i32 %59, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %66 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %69 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @H_PUT_32(i32* %64, i32 %67, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %74 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.external_reloc*, %struct.external_reloc** %9, align 8
  %77 = getelementptr inbounds %struct.external_reloc, %struct.external_reloc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @H_PUT_16(i32* %72, i32 %75, i32 %78)
  %80 = load i32, i32* @RELSZ, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %55, %30
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
