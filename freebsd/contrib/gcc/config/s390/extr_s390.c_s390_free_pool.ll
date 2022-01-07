; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_free_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_free_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant_pool*, %struct.constant_pool*, %struct.constant_pool** }
%struct.constant = type { i32, %struct.constant*, %struct.constant*, %struct.constant** }

@NR_C_MODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_pool*)* @s390_free_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_free_pool(%struct.constant_pool* %0) #0 {
  %2 = alloca %struct.constant_pool*, align 8
  %3 = alloca %struct.constant*, align 8
  %4 = alloca %struct.constant*, align 8
  %5 = alloca i32, align 4
  store %struct.constant_pool* %0, %struct.constant_pool** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NR_C_MODES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %12 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %11, i32 0, i32 3
  %13 = load %struct.constant_pool**, %struct.constant_pool*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.constant_pool*, %struct.constant_pool** %13, i64 %15
  %17 = load %struct.constant_pool*, %struct.constant_pool** %16, align 8
  %18 = bitcast %struct.constant_pool* %17 to %struct.constant*
  store %struct.constant* %18, %struct.constant** %3, align 8
  br label %19

19:                                               ; preds = %29, %10
  %20 = load %struct.constant*, %struct.constant** %3, align 8
  %21 = icmp ne %struct.constant* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.constant*, %struct.constant** %3, align 8
  %24 = getelementptr inbounds %struct.constant, %struct.constant* %23, i32 0, i32 1
  %25 = load %struct.constant*, %struct.constant** %24, align 8
  store %struct.constant* %25, %struct.constant** %4, align 8
  %26 = load %struct.constant*, %struct.constant** %3, align 8
  %27 = bitcast %struct.constant* %26 to %struct.constant_pool*
  %28 = call i32 @free(%struct.constant_pool* %27)
  br label %29

29:                                               ; preds = %22
  %30 = load %struct.constant*, %struct.constant** %4, align 8
  store %struct.constant* %30, %struct.constant** %3, align 8
  br label %19

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %37 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %36, i32 0, i32 2
  %38 = load %struct.constant_pool*, %struct.constant_pool** %37, align 8
  %39 = bitcast %struct.constant_pool* %38 to %struct.constant*
  store %struct.constant* %39, %struct.constant** %3, align 8
  br label %40

40:                                               ; preds = %50, %35
  %41 = load %struct.constant*, %struct.constant** %3, align 8
  %42 = icmp ne %struct.constant* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.constant*, %struct.constant** %3, align 8
  %45 = getelementptr inbounds %struct.constant, %struct.constant* %44, i32 0, i32 1
  %46 = load %struct.constant*, %struct.constant** %45, align 8
  store %struct.constant* %46, %struct.constant** %4, align 8
  %47 = load %struct.constant*, %struct.constant** %3, align 8
  %48 = bitcast %struct.constant* %47 to %struct.constant_pool*
  %49 = call i32 @free(%struct.constant_pool* %48)
  br label %50

50:                                               ; preds = %43
  %51 = load %struct.constant*, %struct.constant** %4, align 8
  store %struct.constant* %51, %struct.constant** %3, align 8
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %54 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @BITMAP_FREE(i32 %55)
  %57 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %58 = call i32 @free(%struct.constant_pool* %57)
  ret void
}

declare dso_local i32 @free(%struct.constant_pool*) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
