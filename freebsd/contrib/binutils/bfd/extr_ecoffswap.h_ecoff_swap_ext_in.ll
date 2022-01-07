; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_ext_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_ext_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }
%struct.ext_ext = type { i32*, i32, i32 }

@EXT_BITS1_JMPTBL_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_COBOL_MAIN_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_WEAKEXT_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_JMPTBL_LITTLE = common dso_local global i32 0, align 4
@EXT_BITS1_COBOL_MAIN_LITTLE = common dso_local global i32 0, align 4
@EXT_BITS1_WEAKEXT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_ext_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_ext_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.ext_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ext_ext*
  %11 = bitcast %struct.ext_ext* %8 to i8*
  %12 = bitcast %struct.ext_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @bfd_header_big_endian(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %18 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 16
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EXT_BITS1_JMPTBL_BIG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 0, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 16
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXT_BITS1_COBOL_MAIN_BIG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 0, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %40 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 16
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EXT_BITS1_WEAKEXT_BIG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 0, %45
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %84

50:                                               ; preds = %3
  %51 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %52 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 16
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EXT_BITS1_JMPTBL_LITTLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 0, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %63 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 16
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EXT_BITS1_COBOL_MAIN_LITTLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 0, %68
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %74 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 16
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EXT_BITS1_WEAKEXT_LITTLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 0, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %50, %16
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds [1 x %struct.ext_ext], [1 x %struct.ext_ext]* %7, i64 0, i64 0
  %89 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = call i32 @ecoff_swap_sym_in(i32* %87, i32* %89, i32* %91)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bfd_header_big_endian(i32*) #2

declare dso_local i32 @ecoff_swap_sym_in(i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
