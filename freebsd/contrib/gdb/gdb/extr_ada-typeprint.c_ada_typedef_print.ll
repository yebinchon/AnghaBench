; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_ada_typedef_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_ada_typedef_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"type %.*s is \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ada_typedef_print(%struct.type* %0, %struct.symbol* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.ui_file*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %7 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %8 = load %struct.symbol*, %struct.symbol** %5, align 8
  %9 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %8)
  %10 = call i32 @ada_name_prefix_len(i32 %9)
  %11 = load %struct.symbol*, %struct.symbol** %5, align 8
  %12 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %11)
  %13 = call i32 @fprintf_filtered(%struct.ui_file* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %16 = call i32 @type_print(%struct.type* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %15, i32 1)
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32, i32) #1

declare dso_local i32 @ada_name_prefix_len(i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
