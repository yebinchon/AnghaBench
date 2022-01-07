; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2expr.c_new_dwarf_expr_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2expr.c_new_dwarf_expr_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_expr_context = type { i32, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dwarf_expr_context* @new_dwarf_expr_context() #0 {
  %1 = alloca %struct.dwarf_expr_context*, align 8
  %2 = call %struct.dwarf_expr_context* @xcalloc(i32 1, i32 40)
  store %struct.dwarf_expr_context* %2, %struct.dwarf_expr_context** %1, align 8
  %3 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %4 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %3, i32 0, i32 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %6 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %5, i32 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %8 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32 @xmalloc(i32 %12)
  %14 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %15 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %17 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  %19 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %1, align 8
  ret %struct.dwarf_expr_context* %20
}

declare dso_local %struct.dwarf_expr_context* @xcalloc(i32, i32) #1

declare dso_local i32 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
