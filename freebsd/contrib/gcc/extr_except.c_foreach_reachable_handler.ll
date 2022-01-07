; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_foreach_reachable_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_foreach_reachable_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.eh_region = type { i64, %struct.eh_region*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.eh_region* }
%struct.TYPE_7__ = type { i32 }
%struct.reachable_info = type { void (%struct.eh_region.0*, i8*)*, i8* }
%struct.eh_region.0 = type opaque

@eh_region = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_10__* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ERT_THROW = common dso_local global i64 0, align 8
@RNL_CAUGHT = common dso_local global i64 0, align 8
@ERT_CLEANUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foreach_reachable_handler(i32 %0, i32 %1, void (%struct.eh_region*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.eh_region*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.reachable_info, align 8
  %10 = alloca %struct.eh_region*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store void (%struct.eh_region*, i8*)* %2, void (%struct.eh_region*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i32 @memset(%struct.reachable_info* %9, i32 0, i32 16)
  %13 = load void (%struct.eh_region*, i8*)*, void (%struct.eh_region*, i8*)** %7, align 8
  %14 = bitcast void (%struct.eh_region*, i8*)* %13 to void (%struct.eh_region.0*, i8*)*
  %15 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %9, i32 0, i32 0
  store void (%struct.eh_region.0*, i8*)* %14, void (%struct.eh_region.0*, i8*)** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %9, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @eh_region, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cfun, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.eh_region* @VEC_index(i32 %18, i32 %23, i32 %24)
  store %struct.eh_region* %25, %struct.eh_region** %10, align 8
  %26 = load i32, i32* @NULL_TREE, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %31 = icmp eq %struct.eh_region* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %81

33:                                               ; preds = %29
  %34 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %35 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 1
  %36 = load %struct.eh_region*, %struct.eh_region** %35, align 8
  store %struct.eh_region* %36, %struct.eh_region** %10, align 8
  br label %53

37:                                               ; preds = %4
  %38 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %39 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ERT_THROW, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %45 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %50 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 1
  %51 = load %struct.eh_region*, %struct.eh_region** %50, align 8
  store %struct.eh_region* %51, %struct.eh_region** %10, align 8
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %80, %53
  %55 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %56 = icmp ne %struct.eh_region* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @reachable_next_level(%struct.eh_region* %58, i32 %59, %struct.reachable_info* %9)
  %61 = load i64, i64* @RNL_CAUGHT, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %66 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ERT_CLEANUP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %72 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.eh_region*, %struct.eh_region** %74, align 8
  store %struct.eh_region* %75, %struct.eh_region** %10, align 8
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.eh_region*, %struct.eh_region** %10, align 8
  %78 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %77, i32 0, i32 1
  %79 = load %struct.eh_region*, %struct.eh_region** %78, align 8
  store %struct.eh_region* %79, %struct.eh_region** %10, align 8
  br label %80

80:                                               ; preds = %76, %70
  br label %54

81:                                               ; preds = %32, %63, %54
  ret void
}

declare dso_local i32 @memset(%struct.reachable_info*, i32, i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i64 @reachable_next_level(%struct.eh_region*, i32, %struct.reachable_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
