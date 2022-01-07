; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ru_bb_local_compute_process_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_ru_bb_local_compute_process_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ru_bb_info = type { i32 }
%struct.df_ref = type { %struct.df_ref* }

@DF_REF_AT_TOP = common dso_local global i32 0, align 4
@seen_in_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df_ru_bb_info*, %struct.df_ref*, i32)* @df_ru_bb_local_compute_process_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_ru_bb_local_compute_process_use(%struct.df_ru_bb_info* %0, %struct.df_ref* %1, i32 %2) #0 {
  %4 = alloca %struct.df_ru_bb_info*, align 8
  %5 = alloca %struct.df_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.df_ru_bb_info* %0, %struct.df_ru_bb_info** %4, align 8
  store %struct.df_ref* %1, %struct.df_ref** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %10 = icmp ne %struct.df_ref* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %14 = call i32 @DF_REF_FLAGS(%struct.df_ref* %13)
  %15 = load i32, i32* @DF_REF_AT_TOP, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %20 = call i32 @DF_REF_REGNO(%struct.df_ref* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @seen_in_block, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bitmap_bit_p(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.df_ru_bb_info*, %struct.df_ru_bb_info** %4, align 8
  %27 = getelementptr inbounds %struct.df_ru_bb_info, %struct.df_ru_bb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %30 = call i32 @DF_REF_ID(%struct.df_ref* %29)
  %31 = call i32 @bitmap_set_bit(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %25, %18
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %35 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %34, i32 0, i32 0
  %36 = load %struct.df_ref*, %struct.df_ref** %35, align 8
  store %struct.df_ref* %36, %struct.df_ref** %5, align 8
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @DF_REF_FLAGS(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
