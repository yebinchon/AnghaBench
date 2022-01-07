; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DEPRECATED_USE_GENERIC_DUMMY_FRAMES = common dso_local global i32 0, align 4
@DUMMY_FRAME = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@UNKNOWN_FRAME = common dso_local global i64 0, align 8
@NORMAL_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_frame_type(%struct.frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %4 = load i32, i32* @DEPRECATED_USE_GENERIC_DUMMY_FRAMES, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %8 = call i64 @deprecated_frame_in_dummy(%struct.frame_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @DUMMY_FRAME, align 4
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %6, %1
  %13 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %14 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* @current_gdbarch, align 4
  %19 = call i32 @legacy_frame_p(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_2__* @frame_unwind_find_by_frame(i32 %24)
  %26 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %27 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %26, i32 0, i32 1
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %27, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %34 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %21, %17, %12
  %36 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %37 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UNKNOWN_FRAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @NORMAL_FRAME, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %45 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %41, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @deprecated_frame_in_dummy(%struct.frame_info*) #1

declare dso_local i32 @legacy_frame_p(i32) #1

declare dso_local %struct.TYPE_2__* @frame_unwind_find_by_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
