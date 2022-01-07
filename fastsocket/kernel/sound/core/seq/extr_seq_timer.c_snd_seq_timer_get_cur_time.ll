; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_get_cur_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_get_cur_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { %struct.TYPE_5__, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_seq_timer_get_cur_time(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.snd_seq_timer*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %3, align 8
  %6 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %7 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %6, i32 0, i32 2
  %8 = bitcast %struct.TYPE_6__* %2 to i8*
  %9 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 8 %9, i64 8, i1 false)
  %10 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %11 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %1
  %15 = call i32 @do_gettimeofday(%struct.timeval* %4)
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %19 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %17, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 1000000, %27
  %29 = mul nsw i32 %28, 1000
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %36 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %34, %38
  %40 = sub nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %60

44:                                               ; preds = %14
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %3, align 8
  %53 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %51, %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %44, %26
  %61 = call i32 @snd_seq_sanity_real_time(%struct.TYPE_6__* %2)
  br label %62

62:                                               ; preds = %60, %1
  %63 = bitcast %struct.TYPE_6__* %2 to i64*
  %64 = load i64, i64* %63, align 4
  ret i64 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #2

declare dso_local i32 @snd_seq_sanity_real_time(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
