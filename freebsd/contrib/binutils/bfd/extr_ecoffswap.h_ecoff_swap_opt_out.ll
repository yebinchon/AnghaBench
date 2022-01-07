; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_opt_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_opt_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.opt_ext = type { i32*, i32*, i32*, i32, i32, i32* }

@OPT_BITS2_VALUE_SH_LEFT_BIG = common dso_local global i32 0, align 4
@OPT_BITS3_VALUE_SH_LEFT_BIG = common dso_local global i32 0, align 4
@OPT_BITS4_VALUE_SH_LEFT_BIG = common dso_local global i32 0, align 4
@OPT_BITS2_VALUE_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@OPT_BITS3_VALUE_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@OPT_BITS4_VALUE_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_opt_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_opt_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.opt_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.opt_ext*
  store %struct.opt_ext* %10, %struct.opt_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @bfd_header_big_endian(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %3
  %19 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %23 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_BIG, align 4
  %30 = ashr i32 %28, %29
  %31 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %32 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OPT_BITS3_VALUE_SH_LEFT_BIG, align 4
  %39 = ashr i32 %37, %38
  %40 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %41 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OPT_BITS4_VALUE_SH_LEFT_BIG, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %50 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  br label %88

53:                                               ; preds = %3
  %54 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %58 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OPT_BITS2_VALUE_SH_LEFT_LITTLE, align 4
  %65 = ashr i32 %63, %64
  %66 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %67 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OPT_BITS3_VALUE_SH_LEFT_LITTLE, align 4
  %74 = ashr i32 %72, %73
  %75 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %76 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @OPT_BITS4_VALUE_SH_LEFT_LITTLE, align 4
  %83 = ashr i32 %81, %82
  %84 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %85 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %53, %18
  %89 = load i32*, i32** %4, align 8
  %90 = call i64 @bfd_header_big_endian(i32* %89)
  %91 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %94 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %93, i32 0, i32 4
  %95 = call i32 @_bfd_ecoff_swap_rndx_out(i64 %90, i32* %92, i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.opt_ext*, %struct.opt_ext** %7, align 8
  %101 = getelementptr inbounds %struct.opt_ext, %struct.opt_ext* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @H_PUT_32(i32* %96, i32 %99, i32 %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bfd_header_big_endian(i32*) #2

declare dso_local i32 @_bfd_ecoff_swap_rndx_out(i64, i32*, i32*) #2

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
