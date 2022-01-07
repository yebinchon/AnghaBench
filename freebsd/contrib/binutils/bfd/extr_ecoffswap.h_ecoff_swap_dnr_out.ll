; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_dnr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_dnr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.dnr_ext = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_dnr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_dnr_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dnr_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.dnr_ext*
  store %struct.dnr_ext* %10, %struct.dnr_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dnr_ext*, %struct.dnr_ext** %7, align 8
  %20 = getelementptr inbounds %struct.dnr_ext, %struct.dnr_ext* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @H_PUT_32(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dnr_ext*, %struct.dnr_ext** %7, align 8
  %28 = getelementptr inbounds %struct.dnr_ext, %struct.dnr_ext* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @H_PUT_32(i32* %23, i32 %26, i32 %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
