; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_check_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_check_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.tomoyo_domain_info = type { i64 }

@tomoyo_policy_loaded = common dso_local global i64 0, align 8
@TOMOYO_MAX_CONTROL_INDEX = common dso_local global i64 0, align 8
@TOMOYO_MAX_PROFILES = common dso_local global i64 0, align 8
@tomoyo_profile_ptr = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_domain_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %4, align 8
  %8 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = call i32 (...) @in_interrupt()
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i64, i64* @tomoyo_policy_loaded, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @TOMOYO_MAX_CONTROL_INDEX, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @TOMOYO_MAX_PROFILES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @tomoyo_profile_ptr, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @tomoyo_profile_ptr, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %25, %21, %17, %14
  br label %42

42:                                               ; preds = %41, %31
  %43 = phi i32 [ %40, %31 ], [ 0, %41 ]
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
