; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region_catch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region_catch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_region = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.eh_region*, %struct.eh_region* }
%struct.TYPE_4__ = type { %struct.eh_region*, %struct.eh_region*, i64 }

@TREE_LIST = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ERT_CATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eh_region* @gen_eh_region_catch(%struct.eh_region* %0, i64 %1) #0 {
  %3 = alloca %struct.eh_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.eh_region*, align 8
  %6 = alloca %struct.eh_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.eh_region* %0, %struct.eh_region** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @TREE_LIST, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @NULL_TREE, align 4
  %21 = call i64 @tree_cons(i32 %18, i64 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %31, %22
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @TREE_VALUE(i64 %28)
  %30 = call i32 @add_type_for_runtime(i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @TREE_CHAIN(i64 %32)
  store i64 %33, i64* %8, align 8
  br label %24

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* @ERT_CATCH, align 4
  %37 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %38 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.eh_region* @gen_eh_region(i32 %36, i32 %39)
  store %struct.eh_region* %40, %struct.eh_region** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %43 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i64 %41, i64* %45, align 8
  %46 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.eh_region*, %struct.eh_region** %49, align 8
  store %struct.eh_region* %50, %struct.eh_region** %6, align 8
  %51 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %52 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %53 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.eh_region* %51, %struct.eh_region** %55, align 8
  %56 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %57 = icmp ne %struct.eh_region* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %35
  %59 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %60 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %61 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.eh_region* %59, %struct.eh_region** %63, align 8
  br label %70

64:                                               ; preds = %35
  %65 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %66 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %67 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store %struct.eh_region* %65, %struct.eh_region** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %72 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %73 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.eh_region* %71, %struct.eh_region** %75, align 8
  %76 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  ret %struct.eh_region* %76
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @tree_cons(i32, i64, i32) #1

declare dso_local i32 @add_type_for_runtime(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.eh_region* @gen_eh_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
