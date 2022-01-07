; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_ksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_ksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slob_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ZERO_SIZE_PTR = common dso_local global i8* null, align 8
@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@ARCH_SLAB_MINALIGN = common dso_local global i32 0, align 4
@SLOB_UNIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksize(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.slob_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  %14 = icmp eq i8* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %45

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call %struct.slob_page* @slob_page(i8* %20)
  store %struct.slob_page* %21, %struct.slob_page** %4, align 8
  %22 = load %struct.slob_page*, %struct.slob_page** %4, align 8
  %23 = call i64 @is_slob_page(%struct.slob_page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %27 = load i32, i32* @ARCH_SLAB_MINALIGN, align 4
  %28 = call i32 @max(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @SLOB_UNITS(i32 %36)
  %38 = load i64, i64* @SLOB_UNIT, align 8
  %39 = mul i64 %37, %38
  store i64 %39, i64* %2, align 8
  br label %45

40:                                               ; preds = %19
  %41 = load %struct.slob_page*, %struct.slob_page** %4, align 8
  %42 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %40, %25, %18
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.slob_page* @slob_page(i8*) #1

declare dso_local i64 @is_slob_page(%struct.slob_page*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @SLOB_UNITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
