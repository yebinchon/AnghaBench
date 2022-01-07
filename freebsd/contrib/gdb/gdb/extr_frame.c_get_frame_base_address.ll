; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_base_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_frame_base_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 (i32, i32*)* }

@NORMAL_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_frame_base_address(%struct.frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %4 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %5 = call i64 @get_frame_type(%struct.frame_info* %4)
  %6 = load i64, i64* @NORMAL_FRAME, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %16 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @frame_base_find_by_frame(i32 %17)
  %19 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %20 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %19, i32 0, i32 3
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %28 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %33 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32*)*, i32 (i32, i32*)** %35, align 8
  %37 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %38 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %41 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %40, i32 0, i32 4
  %42 = call i32 %36(i32 %39, i32* %41)
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %21
  %44 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %45 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (i32, i32*)*, i32 (i32, i32*)** %47, align 8
  %49 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %50 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %53 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %52, i32 0, i32 1
  %54 = call i32 %48(i32 %51, i32* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %31, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local %struct.TYPE_2__* @frame_base_find_by_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
