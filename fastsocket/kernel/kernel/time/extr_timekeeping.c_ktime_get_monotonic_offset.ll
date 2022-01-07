; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_ktime_get_monotonic_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_ktime_get_monotonic_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timespec, i32 }
%struct.timespec = type { i32 }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktime_get_monotonic_offset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timespec, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = call i64 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1))
  store i64 %4, i64* %1, align 8
  %5 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_2__* @timekeeper to i8*), i64 4, i1 false)
  br label %6

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1), i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %3, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @timespec_to_ktime(i32 %12)
  ret i32 %13
}

declare dso_local i64 @read_seqbegin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_seqretry(i32*, i64) #1

declare dso_local i32 @timespec_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
