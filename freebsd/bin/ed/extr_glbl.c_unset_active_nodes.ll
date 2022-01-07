; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_unset_active_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_unset_active_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@active_last = common dso_local global i64 0, align 8
@active_list = common dso_local global %struct.TYPE_5__** null, align 8
@active_ndx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unset_active_nodes(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  br label %8

8:                                                ; preds = %42, %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @active_last, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @active_list, align 8
  %19 = load i64, i64* @active_ndx, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = icmp eq %struct.TYPE_5__* %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @active_list, align 8
  %26 = load i64, i64* @active_ndx, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 %26
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %27, align 8
  %28 = load i64, i64* @active_ndx, align 8
  %29 = load i64, i64* @active_last, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i64 @INC_MOD(i64 %28, i64 %30)
  store i64 %31, i64* @active_ndx, align 8
  br label %41

32:                                               ; preds = %17
  %33 = load i64, i64* @active_ndx, align 8
  %34 = load i64, i64* @active_last, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i64 @INC_MOD(i64 %33, i64 %35)
  store i64 %36, i64* @active_ndx, align 8
  br label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %13

41:                                               ; preds = %24, %13
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %5, align 8
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i64 @INC_MOD(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
