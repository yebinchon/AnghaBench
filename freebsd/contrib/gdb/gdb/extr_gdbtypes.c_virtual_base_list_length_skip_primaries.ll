; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list_length_skip_primaries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_virtual_base_list_length_skip_primaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbase = type { i32, %struct.vbase* }
%struct.type = type { i32 }

@current_vbase_list = common dso_local global %struct.vbase* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_base_list_length_skip_primaries(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbase*, align 8
  %6 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call i64 @TYPE_RUNTIME_PTR(%struct.type* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call %struct.type* @TYPE_PRIMARY_BASE(%struct.type* %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi %struct.type* [ %12, %10 ], [ null, %13 ]
  store %struct.type* %15, %struct.type** %6, align 8
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = icmp ne %struct.type* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.type*, %struct.type** %3, align 8
  %20 = call i32 @virtual_base_list_length(%struct.type* %19)
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %14
  store %struct.vbase* null, %struct.vbase** @current_vbase_list, align 8
  %22 = load %struct.type*, %struct.type** %3, align 8
  %23 = call i32 @virtual_base_list_aux(%struct.type* %22)
  store i32 0, i32* %4, align 4
  %24 = load %struct.vbase*, %struct.vbase** @current_vbase_list, align 8
  store %struct.vbase* %24, %struct.vbase** %5, align 8
  br label %25

25:                                               ; preds = %39, %21
  %26 = load %struct.vbase*, %struct.vbase** %5, align 8
  %27 = icmp ne %struct.vbase* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.vbase*, %struct.vbase** %5, align 8
  %30 = getelementptr inbounds %struct.vbase, %struct.vbase* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.type*, %struct.type** %6, align 8
  %33 = call i64 @virtual_base_index(i32 %31, %struct.type* %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load %struct.vbase*, %struct.vbase** %5, align 8
  %41 = getelementptr inbounds %struct.vbase, %struct.vbase* %40, i32 0, i32 1
  %42 = load %struct.vbase*, %struct.vbase** %41, align 8
  store %struct.vbase* %42, %struct.vbase** %5, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @TYPE_RUNTIME_PTR(%struct.type*) #1

declare dso_local %struct.type* @TYPE_PRIMARY_BASE(%struct.type*) #1

declare dso_local i32 @virtual_base_list_length(%struct.type*) #1

declare dso_local i32 @virtual_base_list_aux(%struct.type*) #1

declare dso_local i64 @virtual_base_index(i32, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
