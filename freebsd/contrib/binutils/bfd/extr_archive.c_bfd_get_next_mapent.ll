; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_get_next_mapent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_get_next_mapent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@BFD_NO_MORE_SYMBOLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfd_get_next_mapent(i32* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @bfd_has_map(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @bfd_error_invalid_operation, align 4
  %13 = call i32 @bfd_set_error(i32 %12)
  %14 = load i64, i64* @BFD_NO_MORE_SYMBOLS, align 8
  store i64 %14, i64* %4, align 8
  br label %41

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @BFD_NO_MORE_SYMBOLS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %23

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i64, i64* %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_2__* @bfd_ardata(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @BFD_NO_MORE_SYMBOLS, align 8
  store i64 %31, i64* %4, align 8
  br label %41

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_2__* @bfd_ardata(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %32, %30, %11
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @bfd_has_map(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_2__* @bfd_ardata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
