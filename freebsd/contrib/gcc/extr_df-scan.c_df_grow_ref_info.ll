; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_ref_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_ref_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df_ref_info*, i32)* @df_grow_ref_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_grow_ref_info(%struct.df_ref_info* %0, i32 %1) #0 {
  %3 = alloca %struct.df_ref_info*, align 8
  %4 = alloca i32, align 4
  store %struct.df_ref_info* %0, %struct.df_ref_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %6 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %12 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xrealloc(i64 %13, i32 %17)
  %19 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %20 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %22 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %25 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %31 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %29, %32
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i64 %28, i32 0, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.df_ref_info*, %struct.df_ref_info** %3, align 8
  %40 = getelementptr inbounds %struct.df_ref_info, %struct.df_ref_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @xrealloc(i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
