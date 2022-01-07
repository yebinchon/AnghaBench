; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_unwind_spec_ehframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_unwind_spec_ehframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }
%struct.eh_frame_hdr = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*, i64, i64*, i64*, i64*)* @unwind_spec_ehframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_spec_ehframe(%struct.dso* %0, %struct.machine* %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dso*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.eh_frame_hdr, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %8, align 8
  store %struct.machine* %1, %struct.machine** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = getelementptr inbounds %struct.eh_frame_hdr, %struct.eh_frame_hdr* %14, i32 0, i32 3
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.eh_frame_hdr, %struct.eh_frame_hdr* %14, i32 0, i32 2
  store i32* %19, i32** %16, align 8
  %20 = load %struct.dso*, %struct.dso** %8, align 8
  %21 = load %struct.machine*, %struct.machine** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = bitcast %struct.eh_frame_hdr* %14 to i32*
  %24 = call i32 @dso__data_read_offset(%struct.dso* %20, %struct.machine* %21, i64 %22, i32* %23, i32 16)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %54

31:                                               ; preds = %6
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds %struct.eh_frame_hdr, %struct.eh_frame_hdr* %14, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @dw_read_encoded_value(i32* %32, i32* %33, i32 %35)
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = getelementptr inbounds %struct.eh_frame_hdr, %struct.eh_frame_hdr* %14, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @dw_read_encoded_value(i32* %37, i32* %38, i32 %40)
  %42 = load i64*, i64** %13, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %12, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = bitcast %struct.eh_frame_hdr* %14 to i32*
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %31, %28
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @dso__data_read_offset(%struct.dso*, %struct.machine*, i64, i32*, i32) #1

declare dso_local i64 @dw_read_encoded_value(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
