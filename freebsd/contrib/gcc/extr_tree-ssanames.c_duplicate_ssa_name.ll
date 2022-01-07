; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssanames.c_duplicate_ssa_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssanames.c_duplicate_ssa_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_info_def = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @duplicate_ssa_name(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptr_info_def*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @SSA_NAME_VAR(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @make_ssa_name(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i32 %11)
  store %struct.ptr_info_def* %12, %struct.ptr_info_def** %6, align 8
  %13 = load %struct.ptr_info_def*, %struct.ptr_info_def** %6, align 8
  %14 = icmp ne %struct.ptr_info_def* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ptr_info_def*, %struct.ptr_info_def** %6, align 8
  %18 = call i32 @duplicate_ssa_name_ptr_info(i32 %16, %struct.ptr_info_def* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @make_ssa_name(i32, i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i32) #1

declare dso_local i32 @duplicate_ssa_name_ptr_info(i32, %struct.ptr_info_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
