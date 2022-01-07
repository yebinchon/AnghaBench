; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hrtimer_forward(%struct.hrtimer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.hrtimer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %15 = call i32 @hrtimer_get_expires(%struct.hrtimer* %14)
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @ktime_sub(i64 %17, i32 %15)
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = bitcast %struct.TYPE_13__* %9 to i8*
  %21 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %30 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %28, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %38 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %26
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ktime_to_ns(i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ktime_divns(i64 %59, i32 %57)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @hrtimer_add_expires_ns(%struct.hrtimer* %61, i32 %64)
  %66 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %67 = call i64 @hrtimer_get_expires_tv64(%struct.hrtimer* %66)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %53
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %44
  %77 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @hrtimer_add_expires(%struct.hrtimer* %77, i64 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %71, %25
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @ktime_sub(i64, i32) #1

declare dso_local i32 @hrtimer_get_expires(%struct.hrtimer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_to_ns(i64) #1

declare dso_local i32 @ktime_divns(i64, i32) #1

declare dso_local i32 @hrtimer_add_expires_ns(%struct.hrtimer*, i32) #1

declare dso_local i64 @hrtimer_get_expires_tv64(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_add_expires(%struct.hrtimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
