; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.ieee_range* }
%struct.ieee_range = type { %struct.ieee_range*, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i32)* @ieee_start_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_start_range(%struct.ieee_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee_range*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @xmalloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.ieee_range*
  store %struct.ieee_range* %7, %struct.ieee_range** %5, align 8
  %8 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %9 = call i32 @memset(%struct.ieee_range* %8, i32 0, i32 16)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %12 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load %struct.ieee_range*, %struct.ieee_range** %14, align 8
  %16 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %17 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %16, i32 0, i32 0
  store %struct.ieee_range* %15, %struct.ieee_range** %17, align 8
  %18 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %19 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %20 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %19, i32 0, i32 0
  store %struct.ieee_range* %18, %struct.ieee_range** %20, align 8
  %21 = load i32, i32* @TRUE, align 4
  ret i32 %21
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
