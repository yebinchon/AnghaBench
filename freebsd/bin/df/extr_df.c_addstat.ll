; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_addstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_addstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statfs*, %struct.statfs*)* @addstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addstat(%struct.statfs* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca i32, align 4
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %6 = load %struct.statfs*, %struct.statfs** %4, align 8
  %7 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.statfs*, %struct.statfs** %3, align 8
  %10 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.statfs*, %struct.statfs** %4, align 8
  %14 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.statfs*, %struct.statfs** %3, align 8
  %19 = getelementptr inbounds %struct.statfs, %struct.statfs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.statfs*, %struct.statfs** %4, align 8
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.statfs*, %struct.statfs** %3, align 8
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.statfs*, %struct.statfs** %4, align 8
  %32 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.statfs*, %struct.statfs** %3, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.statfs*, %struct.statfs** %4, align 8
  %41 = getelementptr inbounds %struct.statfs, %struct.statfs* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.statfs*, %struct.statfs** %3, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.statfs*, %struct.statfs** %4, align 8
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.statfs*, %struct.statfs** %3, align 8
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
