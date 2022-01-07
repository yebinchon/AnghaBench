; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_ra_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_ra_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_ra_state = type { i32, i32, i32 }
%struct.address_space = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ra_submit(%struct.file_ra_state* %0, %struct.address_space* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.file_ra_state*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.file_ra_state* %0, %struct.file_ra_state** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %8 = load %struct.address_space*, %struct.address_space** %5, align 8
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %11 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %14 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %17 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__do_page_cache_readahead(%struct.address_space* %8, %struct.file* %9, i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  ret i64 %21
}

declare dso_local i32 @__do_page_cache_readahead(%struct.address_space*, %struct.file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
