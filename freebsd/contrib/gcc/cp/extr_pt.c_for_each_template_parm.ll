; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_for_each_template_parm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_for_each_template_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_set_t = type { i32 }
%struct.pair_fn_data = type { %struct.pointer_set_t*, i8*, i32 }

@for_each_template_parm_r = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, %struct.pointer_set_t*)* @for_each_template_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_template_parm(i32 %0, i32 %1, i8* %2, %struct.pointer_set_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pointer_set_t*, align 8
  %9 = alloca %struct.pair_fn_data, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.pointer_set_t* %3, %struct.pointer_set_t** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load %struct.pointer_set_t*, %struct.pointer_set_t** %8, align 8
  %16 = icmp ne %struct.pointer_set_t* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.pointer_set_t*, %struct.pointer_set_t** %8, align 8
  %19 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 0
  store %struct.pointer_set_t* %18, %struct.pointer_set_t** %19, align 8
  br label %23

20:                                               ; preds = %4
  %21 = call %struct.pointer_set_t* (...) @pointer_set_create()
  %22 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 0
  store %struct.pointer_set_t* %21, %struct.pointer_set_t** %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @for_each_template_parm_r, align 4
  %25 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 0
  %26 = load %struct.pointer_set_t*, %struct.pointer_set_t** %25, align 8
  %27 = call i64 @walk_tree(i32* %5, i32 %24, %struct.pair_fn_data* %9, %struct.pointer_set_t* %26)
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.pointer_set_t*, %struct.pointer_set_t** %8, align 8
  %32 = icmp ne %struct.pointer_set_t* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 0
  %35 = load %struct.pointer_set_t*, %struct.pointer_set_t** %34, align 8
  %36 = call i32 @pointer_set_destroy(%struct.pointer_set_t* %35)
  %37 = getelementptr inbounds %struct.pair_fn_data, %struct.pair_fn_data* %9, i32 0, i32 0
  store %struct.pointer_set_t* null, %struct.pointer_set_t** %37, align 8
  br label %38

38:                                               ; preds = %33, %23
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local %struct.pointer_set_t* @pointer_set_create(...) #1

declare dso_local i64 @walk_tree(i32*, i32, %struct.pair_fn_data*, %struct.pointer_set_t*) #1

declare dso_local i32 @pointer_set_destroy(%struct.pointer_set_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
