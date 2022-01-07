; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_pdr_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_pdr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pdr_ext = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PDR_BITS1_GP_USED_BIG = common dso_local global i32 0, align 4
@PDR_BITS1_GP_USED_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS1_PROF_BIG = common dso_local global i32 0, align 4
@PDR_BITS1_PROF_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS1_REG_FRAME_BIG = common dso_local global i32 0, align 4
@PDR_BITS1_REG_FRAME_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS1_RESERVED_BIG = common dso_local global i32 0, align 4
@PDR_BITS1_RESERVED_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS1_RESERVED_SH_LEFT_BIG = common dso_local global i32 0, align 4
@PDR_BITS1_RESERVED_SH_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS2_RESERVED_BIG = common dso_local global i32 0, align 4
@PDR_BITS2_RESERVED_LITTLE = common dso_local global i32 0, align 4
@PDR_BITS2_RESERVED_SH_BIG = common dso_local global i32 0, align 4
@PDR_BITS2_RESERVED_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_pdr_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_pdr_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.pdr_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pdr_ext*
  %11 = bitcast %struct.pdr_ext* %8 to i8*
  %12 = bitcast %struct.pdr_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %12, i64 80, i1 false)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = bitcast %struct.TYPE_3__* %13 to i8*
  %15 = call i32 @memset(i8* %14, i32 0, i32 144)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %18 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ECOFF_GET_OFF(i32* %16, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 19
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %24, i32 0, i32 16
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @H_GET_32(i32* %23, i32 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %33 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @H_GET_32(i32* %31, i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %41 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 16
  %43 = call i8* @H_GET_32(i32* %39, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 18
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %48 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @H_GET_S32(i32* %46, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 17
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %55 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @H_GET_S32(i32* %53, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 16
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %62 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @H_GET_32(i32* %60, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 15
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %69 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 16
  %71 = call i8* @H_GET_S32(i32* %67, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 14
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %76 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @H_GET_S32(i32* %74, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 13
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %83 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @H_GET_16(i32* %81, i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %90 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @H_GET_16(i32* %88, i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 11
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 16
  %99 = call i8* @H_GET_32(i32* %95, i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 10
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %104 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @H_GET_32(i32* %102, i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds [1 x %struct.pdr_ext], [1 x %struct.pdr_ext]* %7, i64 0, i64 0
  %111 = getelementptr inbounds %struct.pdr_ext, %struct.pdr_ext* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @ECOFF_GET_OFF(i32* %109, i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  store i8* %113, i8** %115, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @ECOFF_GET_OFF(i32*, i32) #2

declare dso_local i8* @H_GET_32(i32*, i32) #2

declare dso_local i8* @H_GET_S32(i32*, i32) #2

declare dso_local i8* @H_GET_16(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
