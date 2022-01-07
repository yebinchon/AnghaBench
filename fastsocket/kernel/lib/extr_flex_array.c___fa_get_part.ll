; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c___fa_get_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c___fa_get_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array_part = type { i32 }
%struct.flex_array = type { %struct.flex_array_part** }

@__GFP_ZERO = common dso_local global i32 0, align 4
@FLEX_ARRAY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flex_array_part* (%struct.flex_array*, i32, i32)* @__fa_get_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flex_array_part* @__fa_get_part(%struct.flex_array* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flex_array_part*, align 8
  %5 = alloca %struct.flex_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.flex_array_part*, align 8
  store %struct.flex_array* %0, %struct.flex_array** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.flex_array*, %struct.flex_array** %5, align 8
  %10 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %9, i32 0, i32 0
  %11 = load %struct.flex_array_part**, %struct.flex_array_part*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %11, i64 %13
  %15 = load %struct.flex_array_part*, %struct.flex_array_part** %14, align 8
  store %struct.flex_array_part* %15, %struct.flex_array_part** %8, align 8
  %16 = load %struct.flex_array_part*, %struct.flex_array_part** %8, align 8
  %17 = icmp ne %struct.flex_array_part* %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.flex_array_part* @kmalloc(i32 4, i32 %19)
  store %struct.flex_array_part* %20, %struct.flex_array_part** %8, align 8
  %21 = load %struct.flex_array_part*, %struct.flex_array_part** %8, align 8
  %22 = icmp ne %struct.flex_array_part* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.flex_array_part* null, %struct.flex_array_part** %4, align 8
  br label %43

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.flex_array_part*, %struct.flex_array_part** %8, align 8
  %31 = load i32, i32* @FLEX_ARRAY_FREE, align 4
  %32 = call i32 @memset(%struct.flex_array_part* %30, i32 %31, i32 4)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.flex_array_part*, %struct.flex_array_part** %8, align 8
  %35 = load %struct.flex_array*, %struct.flex_array** %5, align 8
  %36 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %35, i32 0, i32 0
  %37 = load %struct.flex_array_part**, %struct.flex_array_part*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %37, i64 %39
  store %struct.flex_array_part* %34, %struct.flex_array_part** %40, align 8
  br label %41

41:                                               ; preds = %33, %3
  %42 = load %struct.flex_array_part*, %struct.flex_array_part** %8, align 8
  store %struct.flex_array_part* %42, %struct.flex_array_part** %4, align 8
  br label %43

43:                                               ; preds = %41, %23
  %44 = load %struct.flex_array_part*, %struct.flex_array_part** %4, align 8
  ret %struct.flex_array_part* %44
}

declare dso_local %struct.flex_array_part* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.flex_array_part*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
