; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-fpa.c___cvmx_helper_initialize_fpa_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-fpa.c___cvmx_helper_initialize_fpa_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Fpa pool %d(%s) already has %llu buffers. Skipping setup.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Out of memory initializing fpa pool %d(%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @__cvmx_helper_initialize_fpa_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_initialize_fpa_pool(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @CVMX_CACHE_LINE_SIZE, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %18, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %12, align 4
  br label %14

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %56

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CVMX_FPA_QUEX_AVAILABLE(i32 %26)
  %28 = call i32 @cvmx_read_csr(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 (i8*, i32, i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33, i64 %35)
  store i32 0, i32* %5, align 4
  br label %56

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = call i8* @cvmx_bootmem_alloc(i32 %40, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 (i8*, i32, i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  store i32 -1, i32* %5, align 4
  br label %56

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @cvmx_fpa_setup_pool(i32 %50, i8* %51, i8* %52, i32 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %45, %31, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_FPA_QUEX_AVAILABLE(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @cvmx_bootmem_alloc(i32, i32) #1

declare dso_local i32 @cvmx_fpa_setup_pool(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
