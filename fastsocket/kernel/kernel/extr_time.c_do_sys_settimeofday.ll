; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_do_sys_settimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_time.c_do_sys_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timezone = type { i32 }
%struct.timespec = type { i32 }

@do_sys_settimeofday.firsttime = internal global i32 1, align 4
@EINVAL = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.timezone zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sys_settimeofday(%struct.timespec* %0, %struct.timezone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timezone*, align 8
  %6 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timezone* %1, %struct.timezone** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.timespec*, %struct.timespec** %4, align 8
  %8 = icmp ne %struct.timespec* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = call i32 @timespec_valid(%struct.timespec* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %9, %2
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8
  %18 = load %struct.timezone*, %struct.timezone** %5, align 8
  %19 = call i32 @security_settime(%struct.timespec* %17, %struct.timezone* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %16
  %25 = load %struct.timezone*, %struct.timezone** %5, align 8
  %26 = icmp ne %struct.timezone* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.timezone*, %struct.timezone** %5, align 8
  %29 = bitcast %struct.timezone* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timezone* @sys_tz to i8*), i8* align 4 %29, i64 4, i1 false)
  %30 = call i32 (...) @update_vsyscall_tz()
  %31 = load i32, i32* @do_sys_settimeofday.firsttime, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  store i32 0, i32* @do_sys_settimeofday.firsttime, align 4
  %34 = load %struct.timespec*, %struct.timespec** %4, align 8
  %35 = icmp ne %struct.timespec* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @warp_clock()
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.timespec*, %struct.timespec** %4, align 8
  %42 = icmp ne %struct.timespec* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.timespec*, %struct.timespec** %4, align 8
  %45 = call i32 @do_settimeofday(%struct.timespec* %44)
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43, %22, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @timespec_valid(%struct.timespec*) #1

declare dso_local i32 @security_settime(%struct.timespec*, %struct.timezone*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_vsyscall_tz(...) #1

declare dso_local i32 @warp_clock(...) #1

declare dso_local i32 @do_settimeofday(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
