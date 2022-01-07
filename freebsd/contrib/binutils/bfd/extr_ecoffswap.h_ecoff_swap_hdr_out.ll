; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_hdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_hdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdr_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_hdr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_hdr_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hdr_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.hdr_ext*
  store %struct.hdr_ext* %10, %struct.hdr_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 4 %14, i64 100, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 24
  %18 = load i32, i32* %17, align 16
  %19 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %20 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %19, i32 0, i32 24
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @H_PUT_S16(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 23
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %28 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %27, i32 0, i32 23
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @H_PUT_S16(i32* %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 22
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %36 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %35, i32 0, i32 22
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @H_PUT_32(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 21
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %44 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %43, i32 0, i32 21
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ECOFF_PUT_OFF(i32* %39, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 20
  %50 = load i32, i32* %49, align 16
  %51 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %52 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ECOFF_PUT_OFF(i32* %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 19
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %60 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %59, i32 0, i32 19
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @H_PUT_32(i32* %55, i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 18
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %68 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %67, i32 0, i32 18
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ECOFF_PUT_OFF(i32* %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 17
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %76 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @H_PUT_32(i32* %71, i32 %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 16
  %82 = load i32, i32* %81, align 16
  %83 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %84 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ECOFF_PUT_OFF(i32* %79, i32 %82, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 15
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %92 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @H_PUT_32(i32* %87, i32 %90, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 14
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %100 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ECOFF_PUT_OFF(i32* %95, i32 %98, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %108 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @H_PUT_32(i32* %103, i32 %106, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 16
  %115 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %116 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ECOFF_PUT_OFF(i32* %111, i32 %114, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %124 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @H_PUT_32(i32* %119, i32 %122, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %132 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ECOFF_PUT_OFF(i32* %127, i32 %130, i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %140 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @H_PUT_32(i32* %135, i32 %138, i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 16
  %147 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %148 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ECOFF_PUT_OFF(i32* %143, i32 %146, i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %156 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @H_PUT_32(i32* %151, i32 %154, i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %164 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ECOFF_PUT_OFF(i32* %159, i32 %162, i32 %165)
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %172 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @H_PUT_32(i32* %167, i32 %170, i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 16
  %179 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %180 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ECOFF_PUT_OFF(i32* %175, i32 %178, i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %188 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @H_PUT_32(i32* %183, i32 %186, i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %196 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ECOFF_PUT_OFF(i32* %191, i32 %194, i32 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %204 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @H_PUT_32(i32* %199, i32 %202, i32 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 16
  %211 = load %struct.hdr_ext*, %struct.hdr_ext** %7, align 8
  %212 = getelementptr inbounds %struct.hdr_ext, %struct.hdr_ext* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ECOFF_PUT_OFF(i32* %207, i32 %210, i32 %213)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @H_PUT_S16(i32*, i32, i32) #2

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #2

declare dso_local i32 @ECOFF_PUT_OFF(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
