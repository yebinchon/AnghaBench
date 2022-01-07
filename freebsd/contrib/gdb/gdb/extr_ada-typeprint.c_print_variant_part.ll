; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_variant_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_variant_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"\0A%*scase %s is\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A%*send case;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32, %struct.type*, %struct.ui_file*, i32, i32)* @print_variant_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_variant_part(%struct.type* %0, i32 %1, %struct.type* %2, %struct.ui_file* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.type* %2, %struct.type** %9, align 8
  store %struct.ui_file* %3, %struct.ui_file** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %14 = load i32, i32* %12, align 4
  %15 = add nsw i32 %14, 4
  %16 = load %struct.type*, %struct.type** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @TYPE_FIELD_TYPE(%struct.type* %16, i32 %17)
  %19 = call i32 @ada_variant_discrim_name(i32 %18)
  %20 = call i32 (%struct.ui_file*, i8*, i32, i8*, ...) @fprintf_filtered(%struct.ui_file* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.type*, %struct.type** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.type*, %struct.type** %9, align 8
  %24 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 4
  %28 = call i32 @print_variant_clauses(%struct.type* %21, i32 %22, %struct.type* %23, %struct.ui_file* %24, i32 %25, i32 %27)
  %29 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 4
  %32 = call i32 (%struct.ui_file*, i8*, i32, i8*, ...) @fprintf_filtered(%struct.ui_file* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32, i8*, ...) #1

declare dso_local i32 @ada_variant_discrim_name(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @print_variant_clauses(%struct.type*, i32, %struct.type*, %struct.ui_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
