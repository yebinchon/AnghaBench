; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_object_header_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_object_header_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TARGET_PTR_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_java_object_header_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.type*, align 8
  %3 = call %struct.type* (...) @get_java_object_type()
  store %struct.type* %3, %struct.type** %2, align 8
  %4 = load %struct.type*, %struct.type** %2, align 8
  %5 = icmp eq %struct.type* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @TARGET_PTR_BIT, align 4
  %8 = mul nsw i32 2, %7
  %9 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %1, align 4
  br label %14

11:                                               ; preds = %0
  %12 = load %struct.type*, %struct.type** %2, align 8
  %13 = call i32 @TYPE_LENGTH(%struct.type* %12)
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local %struct.type* @get_java_object_type(...) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
