; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_packed_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_packed_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i64)* @dump_packed_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_packed_nvlist(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* @UMEM_NOFAIL, align 4
  %17 = call i8* @umem_alloc(i64 %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %23 = call i64 @dmu_read(i32* %18, i64 %19, i32 0, i64 %20, i8* %21, i32 %22)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @nvlist_unpack(i8* %27, i64 %28, i32** %9, i32 0)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @umem_free(i8* %33, i64 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @dump_nvlist(i32* %36, i32 8)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @nvlist_free(i32* %38)
  ret void
}

declare dso_local i8* @umem_alloc(i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dmu_read(i32*, i64, i32, i64, i8*, i32) #1

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i32 @umem_free(i8*, i64) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
