; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_sym_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_sym_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.sym_ext = type { i32*, i32*, i32*, i32*, i32, i32 }

@SYM_BITS1_ST_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_ST_SH_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_SC_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_SC_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_SC_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_SC_SH_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_RESERVED_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS3_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS4_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_ST_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_ST_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_SC_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_SC_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_SC_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_SC_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_RESERVED_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS3_INDEX_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS4_INDEX_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_sym_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_sym_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.sym_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sym_ext*
  %11 = bitcast %struct.sym_ext* %8 to i8*
  %12 = bitcast %struct.sym_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %12, i64 40, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @H_GET_32(i32* %13, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 16
  %24 = call i32 @ECOFF_GET_OFF(i32* %20, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @bfd_header_big_endian(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %101

30:                                               ; preds = %3
  %31 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 16
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SYM_BITS1_ST_BIG, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SYM_BITS1_ST_SH_BIG, align 4
  %39 = ashr i32 %37, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 16
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SYM_BITS1_SC_BIG, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @SYM_BITS1_SC_SH_LEFT_BIG, align 4
  %50 = shl i32 %48, %49
  %51 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %52 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SYM_BITS2_SC_BIG, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @SYM_BITS2_SC_SH_BIG, align 4
  %59 = ashr i32 %57, %58
  %60 = or i32 %50, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SYM_BITS2_RESERVED_BIG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 0, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %75 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SYM_BITS2_INDEX_BIG, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @SYM_BITS2_INDEX_SH_LEFT_BIG, align 4
  %82 = shl i32 %80, %81
  %83 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %84 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 16
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SYM_BITS3_INDEX_SH_LEFT_BIG, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %82, %89
  %91 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SYM_BITS4_INDEX_SH_LEFT_BIG, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %90, %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  br label %172

101:                                              ; preds = %3
  %102 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %103 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 16
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SYM_BITS1_ST_LITTLE, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @SYM_BITS1_ST_SH_LITTLE, align 4
  %110 = ashr i32 %108, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %114 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 16
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SYM_BITS1_SC_LITTLE, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @SYM_BITS1_SC_SH_LITTLE, align 4
  %121 = ashr i32 %119, %120
  %122 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %123 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SYM_BITS2_SC_LITTLE, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @SYM_BITS2_SC_SH_LEFT_LITTLE, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %121, %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %135 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SYM_BITS2_RESERVED_LITTLE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 0, %140
  %142 = zext i1 %141 to i32
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %146 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SYM_BITS2_INDEX_LITTLE, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @SYM_BITS2_INDEX_SH_LITTLE, align 4
  %153 = lshr i32 %151, %152
  %154 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %155 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 16
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SYM_BITS3_INDEX_SH_LEFT_LITTLE, align 4
  %160 = shl i32 %158, %159
  %161 = or i32 %153, %160
  %162 = getelementptr inbounds [1 x %struct.sym_ext], [1 x %struct.sym_ext]* %7, i64 0, i64 0
  %163 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SYM_BITS4_INDEX_SH_LEFT_LITTLE, align 4
  %168 = shl i32 %166, %167
  %169 = or i32 %161, %168
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %101, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @H_GET_32(i32*, i32) #2

declare dso_local i32 @ECOFF_GET_OFF(i32*, i32) #2

declare dso_local i64 @bfd_header_big_endian(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
