; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_printable_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_printable_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab_and_line = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_printable_frame(%struct.frame_info* %0, i32 %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab_and_line, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %8 = icmp ne %struct.frame_info* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = call i32 @find_frame_sal(%struct.frame_info* %10, %struct.symtab_and_line* %5)
  %12 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @is_ada_runtime_file(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  store %struct.frame_info* %23, %struct.frame_info** @deprecated_selected_frame, align 8
  br label %30

24:                                               ; preds = %15, %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %28)
  store %struct.frame_info* %29, %struct.frame_info** %3, align 8
  br label %6

30:                                               ; preds = %22, %6
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @find_frame_sal(%struct.frame_info*, %struct.symtab_and_line*) #1

declare dso_local i32 @is_ada_runtime_file(i32) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
