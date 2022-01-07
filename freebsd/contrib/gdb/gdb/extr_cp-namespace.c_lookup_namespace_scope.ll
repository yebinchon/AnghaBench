; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_lookup_namespace_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_lookup_namespace_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i8*, %struct.block*, i32, %struct.symtab**, i8*, i32)* @lookup_namespace_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @lookup_namespace_scope(i8* %0, i8* %1, %struct.block* %2, i32 %3, %struct.symtab** %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.symtab**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.symbol*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.block* %2, %struct.block** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.symtab** %4, %struct.symtab*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i8*, i8** %14, align 8
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 58
  %38 = zext i1 %37 to i32
  %39 = call i32 @gdb_assert(i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %30, %26
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i64 @cp_find_first_component(i8* %46)
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.block*, %struct.block** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call %struct.symbol* @lookup_namespace_scope(i8* %52, i8* %53, %struct.block* %54, i32 %55, %struct.symtab** %56, i8* %57, i32 %58)
  store %struct.symbol* %59, %struct.symbol** %17, align 8
  %60 = load %struct.symbol*, %struct.symbol** %17, align 8
  %61 = icmp ne %struct.symbol* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load %struct.symbol*, %struct.symbol** %17, align 8
  store %struct.symbol* %63, %struct.symbol** %8, align 8
  br label %84

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %7
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i8* @alloca(i32 %67)
  store i8* %68, i8** %16, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @strncpy(i8* %69, i8* %70, i32 %71)
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %16, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.block*, %struct.block** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %83 = call %struct.symbol* @cp_lookup_symbol_namespace(i8* %77, i8* %78, i8* %79, %struct.block* %80, i32 %81, %struct.symtab** %82)
  store %struct.symbol* %83, %struct.symbol** %8, align 8
  br label %84

84:                                               ; preds = %65, %62
  %85 = load %struct.symbol*, %struct.symbol** %8, align 8
  ret %struct.symbol* %85
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @cp_find_first_component(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.symbol* @cp_lookup_symbol_namespace(i8*, i8*, i8*, %struct.block*, i32, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
