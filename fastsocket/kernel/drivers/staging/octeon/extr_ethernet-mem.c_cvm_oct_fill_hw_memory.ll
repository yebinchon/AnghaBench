; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_fill_hw_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_fill_hw_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE_32BIT_SHARED = common dso_local global i64 0, align 8
@octeon_reserve32_memory = external dso_local global i64, align 8
@CONFIG_CAVIUM_RESERVE32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate %u bytes for FPA pool %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Memory range %p - %p reserved for hardware\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvm_oct_fill_hw_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_fill_hw_memory(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i64, i64* @USE_32BIT_SHARED, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i64, i64* @octeon_reserve32_memory, align 8
  %17 = load i64, i64* @octeon_reserve32_memory, align 8
  %18 = load i32, i32* @CONFIG_CAVIUM_RESERVE32, align 4
  %19 = shl i32 %18, 20
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = sub nsw i64 %21, 1
  %23 = call i8* @cvmx_bootmem_alloc_range(i32 %15, i32 128, i64 %16, i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %12
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = call i32 @pr_notice(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %40)
  br label %42

42:                                               ; preds = %45, %32
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cvmx_fpa_free(i8* %46, i32 %47, i32 0)
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %42

55:                                               ; preds = %42
  br label %88

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 127
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i8* @kmalloc(i32 %62, i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %87

76:                                               ; preds = %60
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = add i64 %78, 127
  %80 = and i64 %79, -128
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @cvmx_fpa_free(i8* %82, i32 %83, i32 0)
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  br label %57

87:                                               ; preds = %70, %57
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  ret i32 %91
}

declare dso_local i8* @cvmx_bootmem_alloc_range(i32, i32, i64, i64) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i8*, i8*) #1

declare dso_local i32 @cvmx_fpa_free(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
