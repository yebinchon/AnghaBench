; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_args_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_args_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i64, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 (i32, i8**)* }

@NORMAL_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_frame_args_address(%struct.frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i8**, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %6 = call i64 @get_frame_type(%struct.frame_info* %5)
  %7 = load i64, i64* @NORMAL_FRAME, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %12 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %17 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @frame_base_find_by_frame(i32 %18)
  %20 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %21 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %20, i32 0, i32 4
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %24 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %34 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %33, i32 0, i32 1
  store i8** %34, i8*** %4, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %37 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %36, i32 0, i32 2
  store i8** %37, i8*** %4, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %40 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (i32, i8**)*, i32 (i32, i8**)** %42, align 8
  %44 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %45 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = call i32 %43(i32 %46, i8** %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %38, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local %struct.TYPE_2__* @frame_base_find_by_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
