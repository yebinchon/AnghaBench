; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_class_index_in_primary_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_class_index_in_primary_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @class_index_in_primary_list(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call %struct.type* @TYPE_PRIMARY_BASE(%struct.type* %5)
  store %struct.type* %6, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = icmp ne %struct.type* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @class_index_in_primary_list(%struct.type* %10)
  %12 = add nsw i32 1, %11
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local %struct.type* @TYPE_PRIMARY_BASE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
