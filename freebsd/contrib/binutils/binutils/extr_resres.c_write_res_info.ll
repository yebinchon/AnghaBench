; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bin_res_info = type { i32, i32, i32, i32, i32 }

@BIN_RES_INFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_3__*)* @write_res_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_res_info(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.bin_res_info, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds %struct.bin_res_info, %struct.bin_res_info* %7, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @windres_put_32(i32* %11, i32 %13, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.bin_res_info, %struct.bin_res_info* %7, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @windres_put_16(i32* %18, i32 %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds %struct.bin_res_info, %struct.bin_res_info* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @windres_put_16(i32* %25, i32 %27, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds %struct.bin_res_info, %struct.bin_res_info* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @windres_put_32(i32* %32, i32 %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds %struct.bin_res_info, %struct.bin_res_info* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @windres_put_32(i32* %39, i32 %41, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @BIN_RES_INFO_SIZE, align 8
  %49 = call i32 @set_windres_bfd_content(i32* %46, %struct.bin_res_info* %7, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %10, %3
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @BIN_RES_INFO_SIZE, align 8
  %53 = add nsw i64 %51, %52
  ret i64 %53
}

declare dso_local i32 @windres_put_32(i32*, i32, i32) #1

declare dso_local i32 @windres_put_16(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_res_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
