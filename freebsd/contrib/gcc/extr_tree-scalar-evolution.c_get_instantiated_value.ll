; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_get_instantiated_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_get_instantiated_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scev_info_str = type { i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_instantiated_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_instantiated_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scev_info_str*, align 8
  %7 = alloca %struct.scev_info_str, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.scev_info_str, %struct.scev_info_str* %7, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @htab_find(i32 %10, %struct.scev_info_str* %7)
  %12 = inttoptr i64 %11 to %struct.scev_info_str*
  store %struct.scev_info_str* %12, %struct.scev_info_str** %6, align 8
  %13 = load %struct.scev_info_str*, %struct.scev_info_str** %6, align 8
  %14 = icmp ne %struct.scev_info_str* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.scev_info_str*, %struct.scev_info_str** %6, align 8
  %17 = getelementptr inbounds %struct.scev_info_str, %struct.scev_info_str* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @NULL_TREE, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @htab_find(i32, %struct.scev_info_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
