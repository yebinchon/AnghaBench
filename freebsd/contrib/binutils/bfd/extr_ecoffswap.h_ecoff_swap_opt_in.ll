; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_opt_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_opt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.opt_ext = type { i32*, i32*, i32*, i32, i32, i32* }

@OPT_BITS2_VALUE_SH_LEFT_BIG = common dso_local global i32 0, align 4
@OPT_BITS2_VALUE_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_opt_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_opt_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.opt_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.opt_ext*
  %11 = bitcast %struct.opt_ext* %8 to i8*
  %12 = bitcast %struct.opt_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %12, i64 40, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @bfd_header_big_endian(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %18 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 16
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 16
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_BIG, align 4
  %30 = shl i32 %28, %29
  %31 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_BIG, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %30, %37
  %39 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %40 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 16
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_BIG, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %38, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %82

49:                                               ; preds = %3
  %50 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %51 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 16
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 16
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_LITTLE, align 4
  %63 = shl i32 %61, %62
  %64 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %65 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_LITTLE, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %63, %70
  %72 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %73 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 16
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_LITTLE, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %71, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %49, %16
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @bfd_header_big_endian(i32* %83)
  %85 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %86 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = call i32 @_bfd_ecoff_swap_rndx_in(i64 %84, i32* %86, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds [1 x %struct.opt_ext], [1 x %struct.opt_ext]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @H_GET_32(i32* %90, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bfd_header_big_endian(i32*) #2

declare dso_local i32 @_bfd_ecoff_swap_rndx_in(i64, i32*, i32*) #2

declare dso_local i32 @H_GET_32(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
