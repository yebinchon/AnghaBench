; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_prepare_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_prepare_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global %struct.timespec zeroinitializer, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timespec*)* @prepare_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prepare_timeout(%struct.timespec* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %6 = load %struct.timespec*, %struct.timespec** %3, align 8
  %7 = icmp ne %struct.timespec* %6, null
  br i1 %7, label %8, label %73

8:                                                ; preds = %1
  %9 = load %struct.timespec*, %struct.timespec** %3, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = load %struct.timespec*, %struct.timespec** %3, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.timespec*, %struct.timespec** %3, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NSEC_PER_SEC, align 8
  %23 = icmp sge i64 %21, %22
  br label %24

24:                                               ; preds = %18, %13, %8
  %25 = phi i1 [ true, %13 ], [ true, %8 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %2, align 8
  br label %77

32:                                               ; preds = %24
  %33 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.timespec* @CURRENT_TIME to i8*), i64 16, i1 false)
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.timespec*, %struct.timespec** %3, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.timespec*, %struct.timespec** %3, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %32
  %47 = load i64, i64* @NSEC_PER_SEC, align 8
  %48 = load %struct.timespec*, %struct.timespec** %3, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.timespec*, %struct.timespec** %3, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %46, %32
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.timespec*, %struct.timespec** %3, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.timespec*, %struct.timespec** %3, align 8
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i64 0, i64* %2, align 8
  br label %77

68:                                               ; preds = %56
  %69 = load %struct.timespec*, %struct.timespec** %3, align 8
  %70 = call i32 @timespec_to_jiffies(%struct.timespec* %69)
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %5, align 8
  br label %75

73:                                               ; preds = %1
  %74 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %74, i64* %2, align 8
  br label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %73, %67, %29
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_to_jiffies(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
