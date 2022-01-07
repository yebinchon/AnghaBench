; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_set_real_maximum_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_set_real_maximum_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@DIAGNOSTICS_SHOW_PREFIX_ONCE = common dso_local global i64 0, align 8
@DIAGNOSTICS_SHOW_PREFIX_NEVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @pp_set_real_maximum_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_set_real_maximum_length(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @pp_is_wrapping_line(%struct.TYPE_6__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = call i64 @pp_prefixing_rule(%struct.TYPE_6__* %8)
  %10 = load i64, i64* @DIAGNOSTICS_SHOW_PREFIX_ONCE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i64 @pp_prefixing_rule(%struct.TYPE_6__* %13)
  %15 = load i64, i64* @DIAGNOSTICS_SHOW_PREFIX_NEVER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %7, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @pp_line_cutoff(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %52

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strlen(i64 %30)
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32 [ %31, %27 ], [ 0, %32 ]
  store i32 %34, i32* %3, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @pp_line_cutoff(%struct.TYPE_6__* %35)
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = call i32 @pp_line_cutoff(%struct.TYPE_6__* %41)
  %43 = add nsw i32 %42, 32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %51

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = call i32 @pp_line_cutoff(%struct.TYPE_6__* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @pp_is_wrapping_line(%struct.TYPE_6__*) #1

declare dso_local i64 @pp_prefixing_rule(%struct.TYPE_6__*) #1

declare dso_local i32 @pp_line_cutoff(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
