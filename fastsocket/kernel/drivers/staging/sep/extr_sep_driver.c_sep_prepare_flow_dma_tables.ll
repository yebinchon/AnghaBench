; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_flow_dma_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_flow_dma_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_flow_context_t = type { i32 }
%struct.sep_lli_entry_t = type { i32, i32 }

@SEP_INT_FLAG_OFFSET_IN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64, i64, %struct.sep_flow_context_t*, %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t*, i32)* @sep_prepare_flow_dma_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_prepare_flow_dma_tables(%struct.sep_device* %0, i64 %1, i64 %2, %struct.sep_flow_context_t* %3, %struct.sep_lli_entry_t* %4, %struct.sep_lli_entry_t* %5, i32 %6) #0 {
  %8 = alloca %struct.sep_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sep_flow_context_t*, align 8
  %12 = alloca %struct.sep_lli_entry_t*, align 8
  %13 = alloca %struct.sep_lli_entry_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sep_lli_entry_t, align 4
  %19 = alloca %struct.sep_lli_entry_t*, align 8
  %20 = alloca %struct.sep_lli_entry_t*, align 8
  %21 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.sep_flow_context_t* %3, %struct.sep_flow_context_t** %11, align 8
  store %struct.sep_lli_entry_t* %4, %struct.sep_lli_entry_t** %12, align 8
  store %struct.sep_lli_entry_t* %5, %struct.sep_lli_entry_t** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.sep_lli_entry_t* null, %struct.sep_lli_entry_t** %20, align 8
  %22 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %18, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %12, align 8
  %24 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %18, i32 0, i32 1
  store i32 0, i32* %25, align 4
  store i64 0, i64* %21, align 8
  br label %26

26:                                               ; preds = %74, %7
  %27 = load i64, i64* %21, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @get_user(i64 %31, i64* %10)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %81

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @get_user(i64 %39, i64* %10)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %81

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.sep_flow_context_t*, %struct.sep_flow_context_t** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @sep_prepare_one_flow_dma_table(%struct.sep_device* %47, i64 %48, i64 %49, %struct.sep_lli_entry_t* %18, %struct.sep_lli_entry_t** %19, %struct.sep_flow_context_t* %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %81

56:                                               ; preds = %44
  %57 = load i64, i64* %21, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %12, align 8
  %61 = bitcast %struct.sep_lli_entry_t* %60 to i8*
  %62 = bitcast %struct.sep_lli_entry_t* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 8, i1 false)
  %63 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %19, align 8
  store %struct.sep_lli_entry_t* %63, %struct.sep_lli_entry_t** %20, align 8
  br label %73

64:                                               ; preds = %56
  %65 = load i32, i32* @SEP_INT_FLAG_OFFSET_IN_BITS, align 4
  %66 = shl i32 1, %65
  %67 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %18, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  %70 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %20, align 8
  %71 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %19, align 8
  store %struct.sep_lli_entry_t* %72, %struct.sep_lli_entry_t** %20, align 8
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %21, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %21, align 8
  br label %26

77:                                               ; preds = %26
  %78 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %13, align 8
  %79 = bitcast %struct.sep_lli_entry_t* %78 to i8*
  %80 = bitcast %struct.sep_lli_entry_t* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 8, i1 false)
  br label %81

81:                                               ; preds = %77, %55, %43, %35
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i32 @get_user(i64, i64*) #1

declare dso_local i32 @sep_prepare_one_flow_dma_table(%struct.sep_device*, i64, i64, %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t**, %struct.sep_flow_context_t*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
