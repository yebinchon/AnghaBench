; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_init_constants_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_init_constants_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32, i64, i64, i64, i8*, i32 }

@MIN_INDEX_LEBS = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @init_constants_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_constants_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %4 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %5 = call i32 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %4)
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @ubifs_reported_space(%struct.ubifs_info* %8, i64 %11)
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @MIN_INDEX_LEBS, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %3, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load i64, i64* %3, align 8
  %36 = mul nsw i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i8* @ubifs_reported_space(%struct.ubifs_info* %37, i64 %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @UBIFS_BLOCK_SHIFT, align 8
  %43 = ashr i64 %41, %42
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  ret void
}

declare dso_local i32 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i8* @ubifs_reported_space(%struct.ubifs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
