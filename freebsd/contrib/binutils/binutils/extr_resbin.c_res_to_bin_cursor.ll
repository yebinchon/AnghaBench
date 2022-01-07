; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.bin_cursor*, i32, i32 }
%struct.bin_cursor = type { i32, i32 }

@BIN_CURSOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_3__*)* @res_to_bin_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @res_to_bin_cursor(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.bin_cursor, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds %struct.bin_cursor, %struct.bin_cursor* %7, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @windres_put_16(i32* %11, i32 %13, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.bin_cursor, %struct.bin_cursor* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @windres_put_16(i32* %18, i32 %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @BIN_CURSOR_SIZE, align 8
  %28 = call i32 @set_windres_bfd_content(i32* %25, %struct.bin_cursor* %7, i64 %26, i64 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %10
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.bin_cursor*, %struct.bin_cursor** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @BIN_CURSOR_SIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @set_windres_bfd_content(i32* %34, %struct.bin_cursor* %37, i64 %40, i64 %43)
  br label %45

45:                                               ; preds = %33, %10
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @BIN_CURSOR_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_cursor*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
