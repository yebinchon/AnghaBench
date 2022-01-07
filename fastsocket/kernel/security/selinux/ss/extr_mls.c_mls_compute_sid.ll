; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_compute_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_compute_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.context = type { i32 }
%struct.range_trans = type { i32, i32, i32 }
%struct.mls_range = type { i32 }

@selinux_mls_enabled = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_compute_sid(%struct.context* %0, %struct.context* %1, i32 %2, i32 %3, %struct.context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.context*, align 8
  %12 = alloca %struct.range_trans, align 4
  %13 = alloca %struct.mls_range*, align 8
  store %struct.context* %0, %struct.context** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.context* %4, %struct.context** %11, align 8
  %14 = load i32, i32* @selinux_mls_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %55 [
    i32 128, label %19
    i32 130, label %39
    i32 129, label %51
  ]

19:                                               ; preds = %17
  %20 = load %struct.context*, %struct.context** %7, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %12, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.context*, %struct.context** %8, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %12, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 1), align 4
  %31 = call %struct.mls_range* @hashtab_search(i32 %30, %struct.range_trans* %12)
  store %struct.mls_range* %31, %struct.mls_range** %13, align 8
  %32 = load %struct.mls_range*, %struct.mls_range** %13, align 8
  %33 = icmp ne %struct.mls_range* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.context*, %struct.context** %11, align 8
  %36 = load %struct.mls_range*, %struct.mls_range** %13, align 8
  %37 = call i32 @mls_range_set(%struct.context* %35, %struct.mls_range* %36)
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %17, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.context*, %struct.context** %11, align 8
  %45 = load %struct.context*, %struct.context** %7, align 8
  %46 = call i32 @mls_context_cpy(%struct.context* %44, %struct.context* %45)
  store i32 %46, i32* %6, align 4
  br label %58

47:                                               ; preds = %39
  %48 = load %struct.context*, %struct.context** %11, align 8
  %49 = load %struct.context*, %struct.context** %7, align 8
  %50 = call i32 @mls_context_cpy_low(%struct.context* %48, %struct.context* %49)
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %17
  %52 = load %struct.context*, %struct.context** %11, align 8
  %53 = load %struct.context*, %struct.context** %7, align 8
  %54 = call i32 @mls_context_cpy_low(%struct.context* %52, %struct.context* %53)
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %17
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %51, %47, %43, %34, %16
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.mls_range* @hashtab_search(i32, %struct.range_trans*) #1

declare dso_local i32 @mls_range_set(%struct.context*, %struct.mls_range*) #1

declare dso_local i32 @mls_context_cpy(%struct.context*, %struct.context*) #1

declare dso_local i32 @mls_context_cpy_low(%struct.context*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
