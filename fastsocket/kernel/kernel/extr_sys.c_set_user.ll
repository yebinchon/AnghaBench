; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_set_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.user_struct = type { i32 }
%struct.cred = type { %struct.user_struct*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RLIMIT_NPROC = common dso_local global i64 0, align 8
@INIT_USER = common dso_local global %struct.user_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*)* @set_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.user_struct*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  %5 = call i32 (...) @current_user_ns()
  %6 = load %struct.cred*, %struct.cred** %3, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.user_struct* @alloc_uid(i32 %5, i32 %8)
  store %struct.user_struct* %9, %struct.user_struct** %4, align 8
  %10 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %11 = icmp ne %struct.user_struct* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %18 = call i32 @task_can_switch_user(%struct.user_struct* %16, %struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %22 = call i32 @free_uid(%struct.user_struct* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %56

25:                                               ; preds = %15
  %26 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %27 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %26, i32 0, i32 0
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* @RLIMIT_NPROC, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %28, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %41 = load %struct.user_struct*, %struct.user_struct** @INIT_USER, align 8
  %42 = icmp ne %struct.user_struct* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %45 = call i32 @free_uid(%struct.user_struct* %44)
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %56

48:                                               ; preds = %39, %25
  %49 = load %struct.cred*, %struct.cred** %3, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load %struct.user_struct*, %struct.user_struct** %50, align 8
  %52 = call i32 @free_uid(%struct.user_struct* %51)
  %53 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %54 = load %struct.cred*, %struct.cred** %3, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 0
  store %struct.user_struct* %53, %struct.user_struct** %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %43, %20, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.user_struct* @alloc_uid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @task_can_switch_user(%struct.user_struct*, %struct.TYPE_7__*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
