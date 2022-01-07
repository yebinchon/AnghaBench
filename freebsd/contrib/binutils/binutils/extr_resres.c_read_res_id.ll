; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_res_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_read_res_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.bin_res_id = type { %struct.bin_res_id*, %struct.bin_res_id* }

@BIN_RES_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_7__*)* @read_res_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_res_id(i32* %0, i32* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.bin_res_id, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* @BIN_RES_ID, align 8
  %17 = sub nsw i64 %16, 2
  %18 = call i32 @read_res_data(i32* %13, i32* %14, i32 %15, %struct.bin_res_id* %9, i64 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %9, i32 0, i32 1
  %21 = load %struct.bin_res_id*, %struct.bin_res_id** %20, align 8
  %22 = call i64 @windres_get_16(i32* %19, %struct.bin_res_id* %21, i32 2)
  %23 = trunc i64 %22 to i16
  store i16 %23, i16* %10, align 2
  %24 = load i16, i16* %10, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %9, i32 0, i32 0
  %32 = load %struct.bin_res_id*, %struct.bin_res_id** %31, align 8
  %33 = load i64, i64* @BIN_RES_ID, align 8
  %34 = sub nsw i64 %33, 2
  %35 = call i32 @read_res_data(i32* %28, i32* %29, i32 %30, %struct.bin_res_id* %32, i64 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %9, i32 0, i32 0
  %40 = load %struct.bin_res_id*, %struct.bin_res_id** %39, align 8
  %41 = call i64 @windres_get_16(i32* %38, %struct.bin_res_id* %40, i32 2)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  br label %66

45:                                               ; preds = %4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @read_unistring(i32* %50, i32* %51, i32 %52, i32* %12)
  store i32* %53, i32** %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32* %61, i32** %65, align 8
  br label %66

66:                                               ; preds = %45, %27
  ret void
}

declare dso_local i32 @read_res_data(i32*, i32*, i32, %struct.bin_res_id*, i64) #1

declare dso_local i64 @windres_get_16(i32*, %struct.bin_res_id*, i32) #1

declare dso_local i32* @read_unistring(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
