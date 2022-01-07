; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_find_lwp_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_find_lwp_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, %struct.lwp_info* }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwp_info* (i32)* @find_lwp_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwp_info* @find_lwp_pid(i32 %0) #0 {
  %2 = alloca %struct.lwp_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwp_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @is_lwp(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GET_LWP(i32 %10)
  store i32 %11, i32* %5, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GET_PID(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  store %struct.lwp_info* %16, %struct.lwp_info** %4, align 8
  br label %17

17:                                               ; preds = %30, %15
  %18 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %19 = icmp ne %struct.lwp_info* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %23 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @GET_LWP(i32 %24)
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  store %struct.lwp_info* %28, %struct.lwp_info** %2, align 8
  br label %35

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %32 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %31, i32 0, i32 1
  %33 = load %struct.lwp_info*, %struct.lwp_info** %32, align 8
  store %struct.lwp_info* %33, %struct.lwp_info** %4, align 8
  br label %17

34:                                               ; preds = %17
  store %struct.lwp_info* null, %struct.lwp_info** %2, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.lwp_info*, %struct.lwp_info** %2, align 8
  ret %struct.lwp_info* %36
}

declare dso_local i64 @is_lwp(i32) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @GET_PID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
