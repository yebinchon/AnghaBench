; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32, %struct.dataflow*, %struct.dataflow*, i32 }
%struct.df_urec_bb_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*)* @df_urec_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_urec_free(%struct.dataflow* %0) #0 {
  %2 = alloca %struct.dataflow*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.df_urec_bb_info*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %2, align 8
  %5 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %6 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %5, i32 0, i32 2
  %7 = load %struct.dataflow*, %struct.dataflow** %6, align 8
  %8 = icmp ne %struct.dataflow* %7, null
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %13 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.df_urec_bb_info* @df_urec_get_bb_info(%struct.dataflow* %17, i32 %18)
  store %struct.df_urec_bb_info* %19, %struct.df_urec_bb_info** %4, align 8
  %20 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %21 = icmp ne %struct.df_urec_bb_info* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %24 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BITMAP_FREE(i32 %25)
  %27 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %28 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BITMAP_FREE(i32 %29)
  %31 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %32 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BITMAP_FREE(i32 %33)
  %35 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %36 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BITMAP_FREE(i32 %37)
  %39 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %4, align 8
  %40 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BITMAP_FREE(i32 %41)
  br label %43

43:                                               ; preds = %22, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %49 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @free_alloc_pool(i32 %50)
  %52 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %53 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %55 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %54, i32 0, i32 2
  %56 = load %struct.dataflow*, %struct.dataflow** %55, align 8
  %57 = call i32 @free(%struct.dataflow* %56)
  %58 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %59 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %58, i32 0, i32 1
  %60 = load %struct.dataflow*, %struct.dataflow** %59, align 8
  %61 = call i32 @free(%struct.dataflow* %60)
  br label %62

62:                                               ; preds = %47, %1
  %63 = load %struct.dataflow*, %struct.dataflow** %2, align 8
  %64 = call i32 @free(%struct.dataflow* %63)
  ret void
}

declare dso_local %struct.df_urec_bb_info* @df_urec_get_bb_info(%struct.dataflow*, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @free_alloc_pool(i32) #1

declare dso_local i32 @free(%struct.dataflow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
