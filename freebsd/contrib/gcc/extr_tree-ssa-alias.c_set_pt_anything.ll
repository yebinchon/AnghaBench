; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_set_pt_anything.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_set_pt_anything.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_info_def = type { i32, i64, i32* }

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_pt_anything to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pt_anything(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptr_info_def*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ptr_info_def* @get_ptr_info(i32 %4)
  store %struct.ptr_info_def* %5, %struct.ptr_info_def** %3, align 8
  %6 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %7 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %9 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %11 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %16 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mark_sym_for_renaming(i64 %17)
  %19 = load i64, i64* @NULL_TREE, align 8
  %20 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %21 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.ptr_info_def* @get_ptr_info(i32) #1

declare dso_local i32 @mark_sym_for_renaming(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
