; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_cat_build_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_cat_build_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qstr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfsplus_cat_build_key(%struct.super_block* %0, %struct.TYPE_6__* %1, i32 %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.qstr*, %struct.qstr** %8, align 8
  %16 = icmp ne %struct.qstr* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.qstr*, %struct.qstr** %8, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qstr*, %struct.qstr** %8, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hfsplus_asc2uni(%struct.super_block* %18, %struct.TYPE_7__* %21, i32 %24, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @be16_to_cpu(i64 %33)
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %17
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 6, %42
  %44 = call i32 @cpu_to_be16(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hfsplus_asc2uni(%struct.super_block*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
