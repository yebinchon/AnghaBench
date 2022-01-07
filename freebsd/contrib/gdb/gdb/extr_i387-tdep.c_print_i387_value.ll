; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@builtin_type_i387_ext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c" %-+27.19g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ui_file*)* @print_i387_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_i387_value(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @builtin_type_i387_ext, align 4
  %8 = call i64 @extract_typed_floating(i8* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sitofp i64 %10 to double
  %12 = call i32 @fprintf_filtered(%struct.ui_file* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %11)
  ret void
}

declare dso_local i64 @extract_typed_floating(i8*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
