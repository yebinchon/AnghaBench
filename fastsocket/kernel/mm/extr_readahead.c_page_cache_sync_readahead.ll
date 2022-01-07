; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_page_cache_sync_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_page_cache_sync_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.file = type { i32 }

@FMODE_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_cache_sync_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, %struct.file* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file_ra_state*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %12 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %39

16:                                               ; preds = %5
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FMODE_RANDOM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.address_space*, %struct.address_space** %6, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @force_page_cache_readahead(%struct.address_space* %27, %struct.file* %28, i32 %29, i64 %30)
  br label %39

32:                                               ; preds = %19, %16
  %33 = load %struct.address_space*, %struct.address_space** %6, align 8
  %34 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %35 = load %struct.file*, %struct.file** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @ondemand_readahead(%struct.address_space* %33, %struct.file_ra_state* %34, %struct.file* %35, i32 0, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %32, %26, %15
  ret void
}

declare dso_local i32 @force_page_cache_readahead(%struct.address_space*, %struct.file*, i32, i64) #1

declare dso_local i32 @ondemand_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
