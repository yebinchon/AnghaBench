; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.ieee_range* }
%struct.ieee_range = type { %struct.ieee_range*, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i32)* @ieee_end_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_end_range(%struct.ieee_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee_range*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %8 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %7, i32 0, i32 0
  %9 = load %struct.ieee_range*, %struct.ieee_range** %8, align 8
  %10 = icmp ne %struct.ieee_range* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load %struct.ieee_range*, %struct.ieee_range** %14, align 8
  store %struct.ieee_range* %15, %struct.ieee_range** %5, align 8
  %16 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %17 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %20 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %19, i32 0, i32 0
  %21 = load %struct.ieee_range*, %struct.ieee_range** %20, align 8
  %22 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %23 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %22, i32 0, i32 0
  store %struct.ieee_range* %21, %struct.ieee_range** %23, align 8
  %24 = load %struct.ieee_range*, %struct.ieee_range** %5, align 8
  %25 = call i32 @free(%struct.ieee_range* %24)
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ieee_add_range(%struct.ieee_handle* %26, i32 %27, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.ieee_range*) #1

declare dso_local i32 @ieee_add_range(%struct.ieee_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
