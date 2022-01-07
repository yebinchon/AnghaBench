; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.eh_region* }
%struct.eh_region = type { i32, i64, %struct.eh_region*, %struct.eh_region*, %struct.eh_region* }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eh_region* (i32, %struct.eh_region*)* @gen_eh_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eh_region* @gen_eh_region(i32 %0, %struct.eh_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eh_region*, align 8
  %5 = alloca %struct.eh_region*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.eh_region* %1, %struct.eh_region** %4, align 8
  %6 = call %struct.eh_region* @ggc_alloc_cleared(i32 40)
  store %struct.eh_region* %6, %struct.eh_region** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %9 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %11, i32 0, i32 4
  store %struct.eh_region* %10, %struct.eh_region** %12, align 8
  %13 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %14 = icmp ne %struct.eh_region* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %17 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %16, i32 0, i32 3
  %18 = load %struct.eh_region*, %struct.eh_region** %17, align 8
  %19 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %20 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 2
  store %struct.eh_region* %18, %struct.eh_region** %20, align 8
  %21 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %22 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %23 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 3
  store %struct.eh_region* %21, %struct.eh_region** %23, align 8
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.eh_region*, %struct.eh_region** %28, align 8
  %30 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %31 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 2
  store %struct.eh_region* %29, %struct.eh_region** %31, align 8
  %32 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.eh_region* %32, %struct.eh_region** %36, align 8
  br label %37

37:                                               ; preds = %24, %15
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %45 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  ret %struct.eh_region* %46
}

declare dso_local %struct.eh_region* @ggc_alloc_cleared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
