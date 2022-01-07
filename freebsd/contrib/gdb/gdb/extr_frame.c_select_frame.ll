; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_select_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_select_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.symtab = type { i64 }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@language_unknown = common dso_local global i64 0, align 8
@language_mode = common dso_local global i64 0, align 8
@language_mode_auto = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @select_frame(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.symtab*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %4 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  store %struct.frame_info* %4, %struct.frame_info** @deprecated_selected_frame, align 8
  br i1 true, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %7 = call i32 @frame_relative_level(%struct.frame_info* %6)
  %8 = call i32 @selected_frame_level_changed_hook(i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %11 = icmp ne %struct.frame_info* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %14 = call i32 @get_frame_address_in_block(%struct.frame_info* %13)
  %15 = call %struct.symtab* @find_pc_symtab(i32 %14)
  store %struct.symtab* %15, %struct.symtab** %3, align 8
  %16 = load %struct.symtab*, %struct.symtab** %3, align 8
  %17 = icmp ne %struct.symtab* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.symtab*, %struct.symtab** %3, align 8
  %20 = getelementptr inbounds %struct.symtab, %struct.symtab* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.symtab*, %struct.symtab** %3, align 8
  %28 = getelementptr inbounds %struct.symtab, %struct.symtab* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @language_unknown, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64, i64* @language_mode, align 8
  %34 = load i64, i64* @language_mode_auto, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.symtab*, %struct.symtab** %3, align 8
  %38 = getelementptr inbounds %struct.symtab, %struct.symtab* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @set_language(i64 %39)
  br label %41

41:                                               ; preds = %36, %32, %26, %18, %12
  br label %42

42:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @selected_frame_level_changed_hook(i32) #1

declare dso_local i32 @frame_relative_level(%struct.frame_info*) #1

declare dso_local %struct.symtab* @find_pc_symtab(i32) #1

declare dso_local i32 @get_frame_address_in_block(%struct.frame_info*) #1

declare dso_local i32 @set_language(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
