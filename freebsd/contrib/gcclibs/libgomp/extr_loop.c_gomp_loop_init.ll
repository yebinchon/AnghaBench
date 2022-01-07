; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_loop.c_gomp_loop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_work_share = type { i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gomp_work_share*, i64, i64, i64, i32, i64)* @gomp_loop_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gomp_loop_init(%struct.gomp_work_share* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.gomp_work_share*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gomp_work_share* %0, %struct.gomp_work_share** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.gomp_work_share*, %struct.gomp_work_share** %7, align 8
  %15 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.gomp_work_share*, %struct.gomp_work_share** %7, align 8
  %18 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %6
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %21
  %33 = load i64, i64* %8, align 8
  br label %36

34:                                               ; preds = %28, %25
  %35 = load i64, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.gomp_work_share*, %struct.gomp_work_share** %7, align 8
  %39 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.gomp_work_share*, %struct.gomp_work_share** %7, align 8
  %42 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.gomp_work_share*, %struct.gomp_work_share** %7, align 8
  %45 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
