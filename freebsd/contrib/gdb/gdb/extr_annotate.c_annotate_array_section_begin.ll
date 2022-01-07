; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_annotate.c_annotate_array_section_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_annotate.c_annotate_array_section_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@annotation_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0A\1A\1Aarray-section-begin %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @annotate_array_section_begin(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.type* %1, %struct.type** %4, align 8
  %5 = load i32, i32* @annotation_level, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @print_value_flags(%struct.type* %10)
  %12 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @print_value_flags(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
