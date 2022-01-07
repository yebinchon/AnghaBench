; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_sym_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_sym_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }
%struct.sym_ext = type { i32*, i32*, i32*, i32*, i32, i32 }

@SYM_BITS1_ST_SH_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_ST_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_SC_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_SC_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_SC_SH_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_SC_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_RESERVED_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_BIG = common dso_local global i32 0, align 4
@SYM_BITS3_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS4_INDEX_SH_LEFT_BIG = common dso_local global i32 0, align 4
@SYM_BITS1_ST_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_ST_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_SC_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS1_SC_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_SC_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_SC_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_RESERVED_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_SH_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS2_INDEX_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS3_INDEX_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@SYM_BITS4_INDEX_SH_LEFT_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_sym_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_sym_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sym_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sym_ext*
  store %struct.sym_ext* %10, %struct.sym_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %20 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @H_PUT_32(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %28 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ECOFF_PUT_OFF(i32* %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @bfd_header_big_endian(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %3
  %35 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = load i32, i32* @SYM_BITS1_ST_SH_BIG, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @SYM_BITS1_ST_BIG, align 4
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SYM_BITS1_SC_SH_LEFT_BIG, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @SYM_BITS1_SC_BIG, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %41, %48
  %50 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %51 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SYM_BITS2_SC_SH_BIG, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @SYM_BITS2_SC_BIG, align 4
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 16
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %34
  %66 = load i32, i32* @SYM_BITS2_RESERVED_BIG, align 4
  br label %68

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %60, %69
  %71 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SYM_BITS2_INDEX_SH_LEFT_BIG, align 4
  %75 = ashr i32 %73, %74
  %76 = load i32, i32* @SYM_BITS2_INDEX_BIG, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %70, %77
  %79 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %80 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SYM_BITS3_INDEX_SH_LEFT_BIG, align 4
  %87 = ashr i32 %85, %86
  %88 = and i32 %87, 255
  %89 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %90 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SYM_BITS4_INDEX_SH_LEFT_BIG, align 4
  %97 = ashr i32 %95, %96
  %98 = and i32 %97, 255
  %99 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %100 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  br label %172

103:                                              ; preds = %3
  %104 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 16
  %107 = load i32, i32* @SYM_BITS1_ST_SH_LITTLE, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* @SYM_BITS1_ST_LITTLE, align 4
  %110 = and i32 %108, %109
  %111 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SYM_BITS1_SC_SH_LITTLE, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* @SYM_BITS1_SC_LITTLE, align 4
  %117 = and i32 %115, %116
  %118 = or i32 %110, %117
  %119 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %120 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  %123 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SYM_BITS2_SC_SH_LEFT_LITTLE, align 4
  %127 = ashr i32 %125, %126
  %128 = load i32, i32* @SYM_BITS2_SC_LITTLE, align 4
  %129 = and i32 %127, %128
  %130 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 16
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %103
  %135 = load i32, i32* @SYM_BITS2_RESERVED_LITTLE, align 4
  br label %137

136:                                              ; preds = %103
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ]
  %139 = or i32 %129, %138
  %140 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SYM_BITS2_INDEX_SH_LITTLE, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @SYM_BITS2_INDEX_LITTLE, align 4
  %146 = and i32 %144, %145
  %147 = or i32 %139, %146
  %148 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %149 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %147, i32* %151, align 4
  %152 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SYM_BITS3_INDEX_SH_LEFT_LITTLE, align 4
  %156 = ashr i32 %154, %155
  %157 = and i32 %156, 255
  %158 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %159 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %157, i32* %161, align 4
  %162 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SYM_BITS4_INDEX_SH_LEFT_LITTLE, align 4
  %166 = ashr i32 %164, %165
  %167 = and i32 %166, 255
  %168 = load %struct.sym_ext*, %struct.sym_ext** %7, align 8
  %169 = getelementptr inbounds %struct.sym_ext, %struct.sym_ext* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %137, %68
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #2

declare dso_local i32 @ECOFF_PUT_OFF(i32*, i32, i32) #2

declare dso_local i64 @bfd_header_big_endian(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
