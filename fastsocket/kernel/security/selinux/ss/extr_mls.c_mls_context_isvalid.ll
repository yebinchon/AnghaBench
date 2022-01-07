; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_context_isvalid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_context_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.user_datum**, %struct.TYPE_2__ }
%struct.user_datum = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.context = type { i64, i32, i32 }

@selinux_mls_enabled = common dso_local global i32 0, align 4
@OBJECT_R_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_context_isvalid(%struct.policydb* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.user_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %7 = load i32, i32* @selinux_mls_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %60

10:                                               ; preds = %2
  %11 = load %struct.policydb*, %struct.policydb** %4, align 8
  %12 = load %struct.context*, %struct.context** %5, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 2
  %14 = call i32 @mls_range_isvalid(%struct.policydb* %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %60

17:                                               ; preds = %10
  %18 = load %struct.context*, %struct.context** %5, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJECT_R_VAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.context*, %struct.context** %5, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.context*, %struct.context** %5, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.policydb*, %struct.policydb** %4, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %60

39:                                               ; preds = %29
  %40 = load %struct.policydb*, %struct.policydb** %4, align 8
  %41 = getelementptr inbounds %struct.policydb, %struct.policydb* %40, i32 0, i32 0
  %42 = load %struct.user_datum**, %struct.user_datum*** %41, align 8
  %43 = load %struct.context*, %struct.context** %5, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.user_datum*, %struct.user_datum** %42, i64 %47
  %49 = load %struct.user_datum*, %struct.user_datum** %48, align 8
  store %struct.user_datum* %49, %struct.user_datum** %6, align 8
  %50 = load %struct.user_datum*, %struct.user_datum** %6, align 8
  %51 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.context*, %struct.context** %5, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mls_range_contains(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %38, %23, %16, %9
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mls_range_isvalid(%struct.policydb*, i32*) #1

declare dso_local i32 @mls_range_contains(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
