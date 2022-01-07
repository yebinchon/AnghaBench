; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_ktime_sub_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_ktime_sub_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ktime_sub_ns(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @NSEC_PER_SEC, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @NSEC_PER_SEC, align 8
  %22 = call i64 @do_div(i64 %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @ktime_set(i64 %23, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = bitcast %struct.TYPE_8__* %6 to i8*
  %28 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  br label %29

29:                                               ; preds = %19, %16
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ktime_sub(i64 %31, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  ret i64 %37
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i64 @ktime_set(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ktime_sub(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
