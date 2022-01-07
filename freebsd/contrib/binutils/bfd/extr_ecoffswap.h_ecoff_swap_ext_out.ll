; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_ext_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_ext_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }
%struct.ext_ext = type { i32*, i32, i32, i64* }

@EXT_BITS1_JMPTBL_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_COBOL_MAIN_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_WEAKEXT_BIG = common dso_local global i32 0, align 4
@EXT_BITS1_JMPTBL_LITTLE = common dso_local global i32 0, align 4
@EXT_BITS1_COBOL_MAIN_LITTLE = common dso_local global i32 0, align 4
@EXT_BITS1_WEAKEXT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_ext_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_ext_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ext_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ext_ext*
  store %struct.ext_ext* %10, %struct.ext_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @bfd_header_big_endian(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EXT_BITS1_JMPTBL_BIG, align 4
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 16
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EXT_BITS1_COBOL_MAIN_BIG, align 4
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %27, %36
  %38 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EXT_BITS1_WEAKEXT_BIG, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %37, %46
  %48 = load %struct.ext_ext*, %struct.ext_ext** %7, align 8
  %49 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ext_ext*, %struct.ext_ext** %7, align 8
  %53 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 0, i64* %55, align 8
  br label %94

56:                                               ; preds = %3
  %57 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @EXT_BITS1_JMPTBL_LITTLE, align 4
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 16
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @EXT_BITS1_COBOL_MAIN_LITTLE, align 4
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %65, %74
  %76 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @EXT_BITS1_WEAKEXT_LITTLE, align 4
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %75, %84
  %86 = load %struct.ext_ext*, %struct.ext_ext** %7, align 8
  %87 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.ext_ext*, %struct.ext_ext** %7, align 8
  %91 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %83, %45
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.ext_ext*, %struct.ext_ext** %7, align 8
  %99 = getelementptr inbounds %struct.ext_ext, %struct.ext_ext* %98, i32 0, i32 1
  %100 = call i32 @ecoff_swap_sym_out(i32* %95, i32* %97, i32* %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bfd_header_big_endian(i32*) #2

declare dso_local i32 @ecoff_swap_sym_out(i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
