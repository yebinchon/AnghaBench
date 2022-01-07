; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_symbol_nonlocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_symbol_nonlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @cp_lookup_symbol_nonlocal(i8* %0, i8* %1, %struct.block* %2, i32 %3, %struct.symtab** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtab**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.block* %2, %struct.block** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.symtab** %4, %struct.symtab*** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.block*, %struct.block** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.symtab**, %struct.symtab*** %10, align 8
  %16 = load %struct.block*, %struct.block** %8, align 8
  %17 = call i32 @block_scope(%struct.block* %16)
  %18 = call %struct.symbol* @lookup_namespace_scope(i8* %11, i8* %12, %struct.block* %13, i32 %14, %struct.symtab** %15, i32 %17, i32 0)
  ret %struct.symbol* %18
}

declare dso_local %struct.symbol* @lookup_namespace_scope(i8*, i8*, %struct.block*, i32, %struct.symtab**, i32, i32) #1

declare dso_local i32 @block_scope(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
