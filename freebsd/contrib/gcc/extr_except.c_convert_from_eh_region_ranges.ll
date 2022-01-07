; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_convert_from_eh_region_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_convert_from_eh_region_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.eh_region = type { i64, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@eh_region = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_from_eh_region_ranges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eh_region*, align 8
  %5 = call i32 (...) @get_insns()
  store i32 %5, i32* %1, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %11

11:                                               ; preds = %39, %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i32, i32* @eh_region, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.eh_region* @VEC_index(i32 %16, i32 %21, i32 %22)
  store %struct.eh_region* %23, %struct.eh_region** %4, align 8
  %24 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %25 = icmp ne %struct.eh_region* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %28 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %33 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DECL_RTL_IF_SET(i64 %34)
  %36 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %37 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %26, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @remove_unreachable_regions(i32 %43)
  ret void
}

declare dso_local i32 @get_insns(...) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @DECL_RTL_IF_SET(i64) #1

declare dso_local i32 @remove_unreachable_regions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
