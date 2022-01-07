; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c__Unwind_VRS_Get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c__Unwind_VRS_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@_UVRSD_UINT32 = common dso_local global i32 0, align 4
@_UVRSR_FAILED = common dso_local global i32 0, align 4
@_UVRSR_OK = common dso_local global i32 0, align 4
@_UVRSR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Unwind_VRS_Get(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %39 [
    i32 132, label %16
    i32 130, label %37
    i32 131, label %37
    i32 128, label %37
    i32 129, label %37
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @_UVRSD_UINT32, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 15
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @_UVRSR_FAILED, align 4
  store i32 %24, i32* %6, align 4
  br label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @_UVRSR_OK, align 4
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %5, %5, %5, %5
  %38 = load i32, i32* @_UVRSR_NOT_IMPLEMENTED, align 4
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @_UVRSR_FAILED, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %37, %25, %23
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
