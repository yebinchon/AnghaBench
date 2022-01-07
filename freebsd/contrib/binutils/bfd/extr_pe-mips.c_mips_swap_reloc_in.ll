; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_pe-mips.c_mips_swap_reloc_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_pe-mips.c_mips_swap_reloc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_reloc = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@mips_swap_reloc_in.pair_prev = internal global %struct.internal_reloc zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @mips_swap_reloc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_swap_reloc_in(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.internal_reloc*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.internal_reloc*
  store %struct.internal_reloc* %12, %struct.internal_reloc** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @H_GET_32(i32* %13, i32 %16)
  %18 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %19 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @H_GET_S32(i32* %20, i32 %23)
  %25 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %26 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @H_GET_16(i32* %27, i32 %30)
  %32 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %33 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %35 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %37 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %39 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %41 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %66 [
    i32 128, label %43
    i32 129, label %46
  ]

43:                                               ; preds = %3
  %44 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %45 = bitcast %struct.internal_reloc* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.internal_reloc* @mips_swap_reloc_in.pair_prev to i8*), i8* align 8 %45, i64 40, i1 false)
  br label %66

46:                                               ; preds = %3
  %47 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %48 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %51 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %53 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 32768
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %59 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 65536
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* getelementptr inbounds (%struct.internal_reloc, %struct.internal_reloc* @mips_swap_reloc_in.pair_prev, i32 0, i32 0), align 8
  %64 = load %struct.internal_reloc*, %struct.internal_reloc** %8, align 8
  %65 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %3, %62, %43
  ret void
}

declare dso_local i32 @H_GET_32(i32*, i32) #1

declare dso_local i32 @H_GET_S32(i32*, i32) #1

declare dso_local i32 @H_GET_16(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
