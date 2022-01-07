; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_lookup_symbol_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_lookup_symbol_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@VAR_DOMAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i8*, %struct.block*, i64, %struct.symtab**, i32)* @lookup_symbol_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @lookup_symbol_file(i8* %0, i8* %1, %struct.block* %2, i64 %3, %struct.symtab** %4, i32 %5) #0 {
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.symtab**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.symbol*, align 8
  %15 = alloca %struct.block*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.block* %2, %struct.block** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.symtab** %4, %struct.symtab*** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.symbol* null, %struct.symbol** %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.block*, %struct.block** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.symtab**, %struct.symtab*** %12, align 8
  %21 = call %struct.symbol* @lookup_symbol_static(i8* %16, i8* %17, %struct.block* %18, i64 %19, %struct.symtab** %20)
  store %struct.symbol* %21, %struct.symbol** %14, align 8
  %22 = load %struct.symbol*, %struct.symbol** %14, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %25, %struct.symbol** %7, align 8
  br label %67

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.block*, %struct.block** %10, align 8
  %31 = call %struct.block* @block_global_block(%struct.block* %30)
  store %struct.block* %31, %struct.block** %15, align 8
  %32 = load %struct.block*, %struct.block** %15, align 8
  %33 = icmp ne %struct.block* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.block*, %struct.block** %15, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.symtab**, %struct.symtab*** %12, align 8
  %40 = call %struct.symbol* @lookup_symbol_aux_block(i8* %35, i8* %36, %struct.block* %37, i64 %38, %struct.symtab** %39)
  store %struct.symbol* %40, %struct.symbol** %14, align 8
  br label %41

41:                                               ; preds = %34, %29
  br label %48

42:                                               ; preds = %26
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.symtab**, %struct.symtab*** %12, align 8
  %47 = call %struct.symbol* @lookup_symbol_global(i8* %43, i8* %44, i64 %45, %struct.symtab** %46)
  store %struct.symbol* %47, %struct.symbol** %14, align 8
  br label %48

48:                                               ; preds = %42, %41
  %49 = load %struct.symbol*, %struct.symbol** %14, align 8
  %50 = icmp ne %struct.symbol* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %52, %struct.symbol** %7, align 8
  br label %67

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @VAR_DOMAIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.symtab**, %struct.symtab*** %12, align 8
  %60 = call %struct.symbol* @lookup_possible_namespace_symbol(i8* %58, %struct.symtab** %59)
  store %struct.symbol* %60, %struct.symbol** %14, align 8
  %61 = load %struct.symbol*, %struct.symbol** %14, align 8
  %62 = icmp ne %struct.symbol* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %64, %struct.symbol** %7, align 8
  br label %67

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %53
  store %struct.symbol* null, %struct.symbol** %7, align 8
  br label %67

67:                                               ; preds = %66, %63, %51, %24
  %68 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %68
}

declare dso_local %struct.symbol* @lookup_symbol_static(i8*, i8*, %struct.block*, i64, %struct.symtab**) #1

declare dso_local %struct.block* @block_global_block(%struct.block*) #1

declare dso_local %struct.symbol* @lookup_symbol_aux_block(i8*, i8*, %struct.block*, i64, %struct.symtab**) #1

declare dso_local %struct.symbol* @lookup_symbol_global(i8*, i8*, i64, %struct.symtab**) #1

declare dso_local %struct.symbol* @lookup_possible_namespace_symbol(i8*, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
