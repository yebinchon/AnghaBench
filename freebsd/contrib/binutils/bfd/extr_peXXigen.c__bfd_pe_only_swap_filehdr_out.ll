; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pe_only_swap_filehdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pe_only_swap_filehdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_filehdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@FILHSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XX_only_swap_filehdr_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_filehdr*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.internal_filehdr*
  store %struct.internal_filehdr* %10, %struct.internal_filehdr** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %15 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @H_PUT_16(i32* %13, i32 %16, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %23 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @H_PUT_16(i32* %21, i32 %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %31 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @H_PUT_32(i32* %29, i32 %32, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %39 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PUT_FILEHDR_SYMPTR(i32* %37, i32 %40, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %47 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @H_PUT_32(i32* %45, i32 %48, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %55 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @H_PUT_16(i32* %53, i32 %56, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.internal_filehdr*, %struct.internal_filehdr** %7, align 8
  %63 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @H_PUT_16(i32* %61, i32 %64, i32 %67)
  %69 = load i32, i32* @FILHSZ, align 4
  ret i32 %69
}

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @PUT_FILEHDR_SYMPTR(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
