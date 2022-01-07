; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_detect_strict_aliasing_named.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_detect_strict_aliasing_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_info_def = type { i64 }

@num_ssa_names = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detect_strict_aliasing_named to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_strict_aliasing_named() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.ptr_info_def*, align 8
  store i32 1, i32* %1, align 4
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @num_ssa_names, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @ssa_name(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %33

15:                                               ; preds = %8
  %16 = load i64, i64* %2, align 8
  %17 = call %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i64 %16)
  store %struct.ptr_info_def* %17, %struct.ptr_info_def** %3, align 8
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @SSA_NAME_IN_FREE_LIST(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %23 = icmp ne %struct.ptr_info_def* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.ptr_info_def*, %struct.ptr_info_def** %3, align 8
  %26 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @dsa_named_for(i64 %30)
  br label %32

32:                                               ; preds = %29, %24, %21, %15
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %4

36:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ssa_name(i32) #1

declare dso_local %struct.ptr_info_def* @SSA_NAME_PTR_INFO(i64) #1

declare dso_local i32 @SSA_NAME_IN_FREE_LIST(i64) #1

declare dso_local i32 @dsa_named_for(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
