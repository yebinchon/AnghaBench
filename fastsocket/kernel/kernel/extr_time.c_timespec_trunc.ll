; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_trunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_timespec_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timespec_trunc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @jiffies_to_usecs(i32 1)
  %9 = mul nsw i32 %8, 1000
  %10 = icmp ule i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1000000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = urem i32 %19, %20
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %17, %15
  br label %26

26:                                               ; preds = %25, %11
  %27 = bitcast %struct.timespec* %3 to i8*
  %28 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @jiffies_to_usecs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
