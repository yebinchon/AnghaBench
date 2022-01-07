; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_ref_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_ref_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { %struct.df_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.df_ref* (%struct.df_ref*, %struct.df_ref*)* @df_ref_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.df_ref* @df_ref_unlink(%struct.df_ref* %0, %struct.df_ref* %1) #0 {
  %3 = alloca %struct.df_ref*, align 8
  %4 = alloca %struct.df_ref*, align 8
  %5 = alloca %struct.df_ref*, align 8
  %6 = alloca %struct.df_ref*, align 8
  %7 = alloca %struct.df_ref*, align 8
  store %struct.df_ref* %0, %struct.df_ref** %4, align 8
  store %struct.df_ref* %1, %struct.df_ref** %5, align 8
  %8 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  store %struct.df_ref* %8, %struct.df_ref** %6, align 8
  store %struct.df_ref* null, %struct.df_ref** %7, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %11 = icmp ne %struct.df_ref* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %14 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %15 = icmp eq %struct.df_ref* %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %18 = icmp ne %struct.df_ref* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %21 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %20, i32 0, i32 0
  %22 = load %struct.df_ref*, %struct.df_ref** %21, align 8
  %23 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %24 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %23, i32 0, i32 0
  store %struct.df_ref* %22, %struct.df_ref** %24, align 8
  %25 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %26 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %25, i32 0, i32 0
  store %struct.df_ref* null, %struct.df_ref** %26, align 8
  %27 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  store %struct.df_ref* %27, %struct.df_ref** %3, align 8
  br label %42

28:                                               ; preds = %16
  %29 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %30 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %29, i32 0, i32 0
  %31 = load %struct.df_ref*, %struct.df_ref** %30, align 8
  store %struct.df_ref* %31, %struct.df_ref** %4, align 8
  %32 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %33 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %32, i32 0, i32 0
  store %struct.df_ref* null, %struct.df_ref** %33, align 8
  %34 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  store %struct.df_ref* %34, %struct.df_ref** %3, align 8
  br label %42

35:                                               ; preds = %12
  %36 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  store %struct.df_ref* %36, %struct.df_ref** %7, align 8
  %37 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %38 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %37, i32 0, i32 0
  %39 = load %struct.df_ref*, %struct.df_ref** %38, align 8
  store %struct.df_ref* %39, %struct.df_ref** %4, align 8
  br label %9

40:                                               ; preds = %9
  %41 = call i32 (...) @gcc_unreachable()
  store %struct.df_ref* null, %struct.df_ref** %3, align 8
  br label %42

42:                                               ; preds = %40, %28, %19
  %43 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  ret %struct.df_ref* %43
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
