; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_generate_local_fixups_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_generate_local_fixups_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_local_fixups_tree(%struct.dt_info* %0, i8* %1) #0 {
  %3 = alloca %struct.dt_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.dt_info* %0, %struct.dt_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dt_info*, %struct.dt_info** %3, align 8
  %6 = load %struct.dt_info*, %struct.dt_info** %3, align 8
  %7 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @any_local_fixup_tree(%struct.dt_info* %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.dt_info*, %struct.dt_info** %3, align 8
  %14 = load %struct.dt_info*, %struct.dt_info** %3, align 8
  %15 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @build_root_node(i32 %16, i8* %17)
  %19 = load %struct.dt_info*, %struct.dt_info** %3, align 8
  %20 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @generate_local_fixups_tree_internal(%struct.dt_info* %13, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @any_local_fixup_tree(%struct.dt_info*, i32) #1

declare dso_local i32 @generate_local_fixups_tree_internal(%struct.dt_info*, i32, i32) #1

declare dso_local i32 @build_root_node(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
