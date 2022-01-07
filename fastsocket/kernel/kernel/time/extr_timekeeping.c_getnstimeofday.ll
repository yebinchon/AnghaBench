; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_getnstimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_getnstimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timespec, i32 }
%struct.timespec = type { i32 }

@timekeeping_suspended = common dso_local global i32 0, align 4
@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getnstimeofday(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %5 = load i32, i32* @timekeeping_suspended, align 4
  %6 = call i32 @WARN_ON(i32 %5)
  br label %7

7:                                                ; preds = %17, %1
  %8 = call i64 @read_seqbegin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1))
  store i64 %8, i64* %3, align 8
  %9 = load %struct.timespec*, %struct.timespec** %2, align 8
  %10 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_2__* @timekeeper to i8*), i64 4, i1 false)
  %11 = call i32 (...) @timekeeping_get_ns()
  store i32 %11, i32* %4, align 4
  %12 = call i64 (...) @arch_gettimeoffset()
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %7
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @read_seqretry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1), i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %7, label %21

21:                                               ; preds = %17
  %22 = load %struct.timespec*, %struct.timespec** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @timespec_add_ns(%struct.timespec* %22, i32 %23)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @read_seqbegin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timekeeping_get_ns(...) #1

declare dso_local i64 @arch_gettimeoffset(...) #1

declare dso_local i64 @read_seqretry(i32*, i64) #1

declare dso_local i32 @timespec_add_ns(%struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
