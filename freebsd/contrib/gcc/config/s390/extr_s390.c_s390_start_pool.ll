; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_start_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_start_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { %struct.constant_pool*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.constant_pool* (%struct.constant_pool**, i32)* @s390_start_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.constant_pool* @s390_start_pool(%struct.constant_pool** %0, i32 %1) #0 {
  %3 = alloca %struct.constant_pool**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant_pool*, align 8
  %6 = alloca %struct.constant_pool**, align 8
  store %struct.constant_pool** %0, %struct.constant_pool*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.constant_pool* (...) @s390_alloc_pool()
  store %struct.constant_pool* %7, %struct.constant_pool** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  %10 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.constant_pool**, %struct.constant_pool*** %3, align 8
  store %struct.constant_pool** %11, %struct.constant_pool*** %6, align 8
  br label %12

12:                                               ; preds = %17, %2
  %13 = load %struct.constant_pool**, %struct.constant_pool*** %6, align 8
  %14 = load %struct.constant_pool*, %struct.constant_pool** %13, align 8
  %15 = icmp ne %struct.constant_pool* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.constant_pool**, %struct.constant_pool*** %6, align 8
  %19 = load %struct.constant_pool*, %struct.constant_pool** %18, align 8
  %20 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %19, i32 0, i32 0
  store %struct.constant_pool** %20, %struct.constant_pool*** %6, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  %23 = load %struct.constant_pool**, %struct.constant_pool*** %6, align 8
  store %struct.constant_pool* %22, %struct.constant_pool** %23, align 8
  %24 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  ret %struct.constant_pool* %24
}

declare dso_local %struct.constant_pool* @s390_alloc_pool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
