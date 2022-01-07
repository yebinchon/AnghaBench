; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_unop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_unop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@etree_unary = common dso_local global i32 0, align 4
@expld = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @exp_unop(i32 %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %21, align 8
  %22 = load i32, i32* @etree_unary, align 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = call i32 @exp_fold_tree_no_dot(%struct.TYPE_18__* %6)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @expld, i32 0, i32 0, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @expld, i32 0, i32 0, i32 0), align 8
  %31 = call %struct.TYPE_18__* @exp_intop(i32 %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %3, align 8
  br label %37

32:                                               ; preds = %2
  %33 = call %struct.TYPE_18__* @stat_alloc(i32 24)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %7, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = call i32 @memcpy(%struct.TYPE_18__* %34, %struct.TYPE_18__* %6, i32 24)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %3, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %38
}

declare dso_local i32 @exp_fold_tree_no_dot(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @exp_intop(i32) #1

declare dso_local %struct.TYPE_18__* @stat_alloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
