; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kexec.c_kimage_alloc_crash_control_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kexec.c_kimage_alloc_crash_control_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.page = type { i32 }
%struct.kimage = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@crashk_res = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KEXEC_CRASH_CONTROL_MEMORY_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kimage*, i32)* @kimage_alloc_crash_control_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kimage_alloc_crash_control_pages(%struct.kimage* %0, i32 %1) #0 {
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.page* null, %struct.page** %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load %struct.kimage*, %struct.kimage** %3, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 1
  %22 = add i64 %19, %21
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = xor i64 %24, -1
  %26 = and i64 %22, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %106, %2
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @crashk_res, i32 0, i32 0), align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @KEXEC_CRASH_CONTROL_MEMORY_LIMIT, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %107

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @crashk_res, i32 0, i32 0), align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %107

45:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %91, %45
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.kimage*, %struct.kimage** %3, align 8
  %49 = getelementptr inbounds %struct.kimage, %struct.kimage* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %46
  %53 = load %struct.kimage*, %struct.kimage** %3, align 8
  %54 = getelementptr inbounds %struct.kimage, %struct.kimage* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.kimage*, %struct.kimage** %3, align 8
  %62 = getelementptr inbounds %struct.kimage, %struct.kimage* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %60, %67
  %69 = sub i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %52
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  %81 = add i64 %78, %80
  %82 = load i64, i64* %7, align 8
  %83 = sub i64 %82, 1
  %84 = xor i64 %83, -1
  %85 = and i64 %81, %84
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %86, %87
  %89 = sub i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %94

90:                                               ; preds = %73, %52
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %46

94:                                               ; preds = %77, %46
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.kimage*, %struct.kimage** %3, align 8
  %97 = getelementptr inbounds %struct.kimage, %struct.kimage* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = zext i32 %102 to i64
  %104 = lshr i64 %101, %103
  %105 = call %struct.page* @pfn_to_page(i64 %104)
  store %struct.page* %105, %struct.page** %8, align 8
  br label %107

106:                                              ; preds = %94
  br label %31

107:                                              ; preds = %100, %44, %39, %31
  %108 = load %struct.page*, %struct.page** %8, align 8
  %109 = icmp ne %struct.page* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.kimage*, %struct.kimage** %3, align 8
  %113 = getelementptr inbounds %struct.kimage, %struct.kimage* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %107
  %115 = load %struct.page*, %struct.page** %8, align 8
  ret %struct.page* %115
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
