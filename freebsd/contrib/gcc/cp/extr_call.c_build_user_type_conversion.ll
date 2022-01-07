; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_user_type_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_user_type_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ck_ambig = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_user_type_conversion(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_candidate*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.z_candidate* @build_user_type_conversion_1(i32 %9, i32 %10, i32 %11)
  store %struct.z_candidate* %12, %struct.z_candidate** %8, align 8
  %13 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %14 = icmp ne %struct.z_candidate* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %17 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ck_ambig, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @error_mark_node, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %15
  %26 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %27 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @convert_like(%struct.TYPE_2__* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @convert_from_reference(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @NULL_TREE, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %25, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.z_candidate* @build_user_type_conversion_1(i32, i32, i32) #1

declare dso_local i32 @convert_like(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @convert_from_reference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
