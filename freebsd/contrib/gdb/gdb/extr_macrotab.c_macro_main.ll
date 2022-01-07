; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i32 }
%struct.macro_table = type { %struct.macro_source_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_source_file* @macro_main(%struct.macro_table* %0) #0 {
  %2 = alloca %struct.macro_table*, align 8
  store %struct.macro_table* %0, %struct.macro_table** %2, align 8
  %3 = load %struct.macro_table*, %struct.macro_table** %2, align 8
  %4 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %3, i32 0, i32 0
  %5 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %6 = call i32 @gdb_assert(%struct.macro_source_file* %5)
  %7 = load %struct.macro_table*, %struct.macro_table** %2, align 8
  %8 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %7, i32 0, i32 0
  %9 = load %struct.macro_source_file*, %struct.macro_source_file** %8, align 8
  ret %struct.macro_source_file* %9
}

declare dso_local i32 @gdb_assert(%struct.macro_source_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
