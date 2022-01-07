; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_miter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_miter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i32, i32, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sg_miter_start(%struct.sg_mapping_iter* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sg_mapping_iter*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %5, align 8
  %10 = call i32 @memset(%struct.sg_mapping_iter* %9, i32 0, i32 24)
  %11 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %12 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %5, align 8
  %13 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 3
  store %struct.scatterlist* %11, %struct.scatterlist** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %5, align 8
  %16 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %5, align 8
  %18 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SG_MITER_TO_SG, align 4
  %21 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %5, align 8
  %30 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @memset(%struct.sg_mapping_iter*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
