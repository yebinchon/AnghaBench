; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.c_cvmx_fpa_shutdown_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-fpa.c_cvmx_fpa_shutdown_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@cvmx_fpa_pool_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Illegal address 0x%llx in pool %s(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) started at 0x%llx, ended at 0x%llx, with a step of 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cvmx_fpa_shutdown_pool(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @cvmx_ptr_to_phys(i8* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %16, %28
  store i64 %29, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %80, %1
  %31 = load i64, i64* %3, align 8
  %32 = call i8* @cvmx_fpa_alloc(i64 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @cvmx_ptr_to_phys(i8* %36)
  store i64 %37, i64* %9, align 8
  br label %39

38:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = urem i64 %53, %59
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %78

65:                                               ; preds = %50, %46, %42
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = trunc i64 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %71, i64 %74)
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %65, %62
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %30, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %4, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %3, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %94, i64 %95, i64 %96, i64 %102)
  %104 = load i64, i64* %4, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %2, align 8
  br label %107

106:                                              ; preds = %83
  store i64 0, i64* %2, align 8
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i64 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i8* @cvmx_fpa_alloc(i64) #1

declare dso_local i32 @cvmx_dprintf(i8*, i64, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
