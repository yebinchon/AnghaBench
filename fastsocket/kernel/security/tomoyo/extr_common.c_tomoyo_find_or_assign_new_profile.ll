; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_find_or_assign_new_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_find_or_assign_new_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_profile = type { i32* }
%struct.TYPE_2__ = type { i32 }

@tomoyo_find_or_assign_new_profile.lock = internal global i32 0, align 4
@TOMOYO_MAX_PROFILES = common dso_local global i32 0, align 4
@tomoyo_profile_ptr = common dso_local global %struct.tomoyo_profile** null, align 8
@TOMOYO_MAX_CONTROL_INDEX = common dso_local global i32 0, align 4
@tomoyo_control_array = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tomoyo_profile* (i32)* @tomoyo_find_or_assign_new_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tomoyo_profile* @tomoyo_find_or_assign_new_profile(i32 %0) #0 {
  %2 = alloca %struct.tomoyo_profile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_profile*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tomoyo_profile* null, %struct.tomoyo_profile** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TOMOYO_MAX_PROFILES, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.tomoyo_profile* null, %struct.tomoyo_profile** %2, align 8
  br label %56

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @tomoyo_find_or_assign_new_profile.lock)
  %12 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** @tomoyo_profile_ptr, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %12, i64 %14
  %16 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %15, align 8
  store %struct.tomoyo_profile* %16, %struct.tomoyo_profile** %4, align 8
  %17 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %4, align 8
  %18 = icmp ne %struct.tomoyo_profile* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %53

20:                                               ; preds = %10
  %21 = call %struct.tomoyo_profile* @tomoyo_alloc_element(i32 8)
  store %struct.tomoyo_profile* %21, %struct.tomoyo_profile** %4, align 8
  %22 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %4, align 8
  %23 = icmp ne %struct.tomoyo_profile* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %53

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TOMOYO_MAX_CONTROL_INDEX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tomoyo_control_array, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %4, align 8
  %38 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %26

46:                                               ; preds = %26
  %47 = call i32 (...) @mb()
  %48 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %4, align 8
  %49 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** @tomoyo_profile_ptr, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %49, i64 %51
  store %struct.tomoyo_profile* %48, %struct.tomoyo_profile** %52, align 8
  br label %53

53:                                               ; preds = %46, %24, %19
  %54 = call i32 @mutex_unlock(i32* @tomoyo_find_or_assign_new_profile.lock)
  %55 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %4, align 8
  store %struct.tomoyo_profile* %55, %struct.tomoyo_profile** %2, align 8
  br label %56

56:                                               ; preds = %53, %9
  %57 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %2, align 8
  ret %struct.tomoyo_profile* %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tomoyo_profile* @tomoyo_alloc_element(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
