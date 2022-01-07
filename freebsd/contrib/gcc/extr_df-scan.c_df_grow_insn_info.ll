; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_insn_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_grow_insn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df*)* @df_grow_insn_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_grow_insn_info(%struct.df* %0) #0 {
  %2 = alloca %struct.df*, align 8
  %3 = alloca i32, align 4
  store %struct.df* %0, %struct.df** %2, align 8
  %4 = call i32 (...) @get_max_uid()
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  %6 = load %struct.df*, %struct.df** %2, align 8
  %7 = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = udiv i32 %12, 4
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.df*, %struct.df** %2, align 8
  %17 = getelementptr inbounds %struct.df, %struct.df* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @xrealloc(i32 %18, i32 %22)
  %24 = load %struct.df*, %struct.df** %2, align 8
  %25 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.df*, %struct.df** %2, align 8
  %27 = getelementptr inbounds %struct.df, %struct.df* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.df*, %struct.df** %2, align 8
  %30 = getelementptr inbounds %struct.df, %struct.df* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %28, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.df*, %struct.df** %2, align 8
  %35 = getelementptr inbounds %struct.df, %struct.df* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %33, %36
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(i32 %32, i32 0, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.df*, %struct.df** %2, align 8
  %44 = getelementptr inbounds %struct.df, %struct.df* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @get_max_uid(...) #1

declare dso_local i32 @xrealloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
