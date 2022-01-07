; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_lookup_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_lookup_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { %struct.fscache_cookie*, %struct.TYPE_4__*, i64, i32 }
%struct.fscache_cookie = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.fscache_object*)* }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@fscache_n_cop_lookup_complete = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_UNAVAILABLE = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_LOOKING_UP = common dso_local global i32 0, align 4
@KILL_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_lookup_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_lookup_failure(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = call i32 @fscache_stat(i32* @fscache_n_cop_lookup_complete)
  %14 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %15 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.fscache_object*)*, i32 (%struct.fscache_object*)** %19, align 8
  %21 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %22 = call i32 %20(%struct.fscache_object* %21)
  %23 = call i32 @fscache_stat_d(i32* @fscache_n_cop_lookup_complete)
  %24 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %25 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %24, i32 0, i32 0
  %26 = load %struct.fscache_cookie*, %struct.fscache_cookie** %25, align 8
  store %struct.fscache_cookie* %26, %struct.fscache_cookie** %5, align 8
  %27 = load i32, i32* @FSCACHE_COOKIE_UNAVAILABLE, align 4
  %28 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %29 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %33 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %32, i32 0, i32 0
  %34 = call i64 @test_and_clear_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %38 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %37, i32 0, i32 0
  %39 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %40 = call i32 @wake_up_bit(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %43 = call i32 @fscache_done_parent_op(%struct.fscache_object* %42)
  %44 = load i32, i32* @KILL_OBJECT, align 4
  %45 = call %struct.fscache_state* @transit_to(i32 %44)
  ret %struct.fscache_state* %45
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @fscache_done_parent_op(%struct.fscache_object*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
