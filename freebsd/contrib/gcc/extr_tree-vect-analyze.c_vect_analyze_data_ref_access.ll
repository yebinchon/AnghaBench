; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_analyze_data_ref_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_analyze_data_ref_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not consecutive access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*)* @vect_analyze_data_ref_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vect_analyze_data_ref_access(%struct.data_reference* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.data_reference*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.data_reference* %0, %struct.data_reference** %3, align 8
  %6 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %7 = call i32 @DR_STEP(%struct.data_reference* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %9 = call i32 @DR_REF(%struct.data_reference* %8)
  %10 = call i32 @TREE_TYPE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TYPE_SIZE_UNIT(i32 %15)
  %17 = call i64 @tree_int_cst_compare(i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @REPORT_DETAILS, align 4
  %21 = call i64 @vect_print_dump_info(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @vect_dump, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @DR_STEP(%struct.data_reference*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DR_REF(%struct.data_reference*) #1

declare dso_local i64 @tree_int_cst_compare(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
