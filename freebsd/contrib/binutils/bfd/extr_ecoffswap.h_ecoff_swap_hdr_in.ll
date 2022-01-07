; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_hdr_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_hdr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hdr_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_hdr_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_hdr_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.hdr_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hdr_ext*
  %11 = bitcast %struct.hdr_ext* %8 to i8*
  %12 = bitcast %struct.hdr_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 4 %12, i64 100, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %14, i32 0, i32 24
  %16 = load i32, i32* %15, align 16
  %17 = call i8* @H_GET_S16(i32* %13, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 24
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %21, i32 0, i32 23
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @H_GET_S16(i32* %20, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 23
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %28, i32 0, i32 22
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @H_GET_32(i32* %27, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 22
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %36 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %35, i32 0, i32 21
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @ECOFF_GET_OFF(i32* %34, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 21
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %42, i32 0, i32 20
  %44 = load i32, i32* %43, align 16
  %45 = call i8* @ECOFF_GET_OFF(i32* %41, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 20
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %50 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @H_GET_32(i32* %48, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 19
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %57 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %56, i32 0, i32 18
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @ECOFF_GET_OFF(i32* %55, i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 18
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %63, i32 0, i32 17
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @H_GET_32(i32* %62, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 17
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %71 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 16
  %73 = call i8* @ECOFF_GET_OFF(i32* %69, i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 16
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %78 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @H_GET_32(i32* %76, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %85 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @ECOFF_GET_OFF(i32* %83, i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 14
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @H_GET_32(i32* %90, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 13
  store i8* %94, i8** %96, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %99 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 16
  %101 = call i8* @ECOFF_GET_OFF(i32* %97, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 12
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %106 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @H_GET_32(i32* %104, i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 11
  store i8* %108, i8** %110, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %113 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @ECOFF_GET_OFF(i32* %111, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 10
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %120 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @H_GET_32(i32* %118, i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %127 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 16
  %129 = call i8* @ECOFF_GET_OFF(i32* %125, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 8
  store i8* %129, i8** %131, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %134 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @H_GET_32(i32* %132, i32 %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 7
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %141 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @ECOFF_GET_OFF(i32* %139, i32 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 6
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %148 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @H_GET_32(i32* %146, i32 %149)
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %155 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 16
  %157 = call i8* @ECOFF_GET_OFF(i32* %153, i32 %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %162 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @H_GET_32(i32* %160, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %169 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @ECOFF_GET_OFF(i32* %167, i32 %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %176 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @H_GET_32(i32* %174, i32 %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds [1 x %struct.hdr_ext], [1 x %struct.hdr_ext]* %7, i64 0, i64 0
  %183 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 16
  %185 = call i8* @ECOFF_GET_OFF(i32* %181, i32 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @H_GET_S16(i32*, i32) #2

declare dso_local i8* @H_GET_32(i32*, i32) #2

declare dso_local i8* @ECOFF_GET_OFF(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
