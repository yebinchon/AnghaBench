; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_try_context_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_try_context_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.file_ra_state*, i32, i64, i64)* @try_context_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_context_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.file_ra_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.address_space*, %struct.address_space** %7, align 8
  %14 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @count_history_pages(%struct.address_space* %13, %struct.file_ra_state* %14, i32 %15, i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %46

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %31 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @get_init_ra_size(i32 %36, i64 %37)
  %39 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %40 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %42 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %45 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %28, %20
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @count_history_pages(%struct.address_space*, %struct.file_ra_state*, i32, i64) #1

declare dso_local i32 @get_init_ra_size(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
