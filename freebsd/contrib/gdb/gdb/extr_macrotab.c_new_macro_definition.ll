; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type { i32, i32, i32, i8*, %struct.macro_table* }
%struct.macro_table = type { i32 }

@macro_function_like = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_definition* (%struct.macro_table*, i32, i32, i8**, i8*)* @new_macro_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_definition* @new_macro_definition(%struct.macro_table* %0, i32 %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca %struct.macro_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.macro_definition*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store %struct.macro_table* %0, %struct.macro_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.macro_table*, %struct.macro_table** %6, align 8
  %16 = call %struct.macro_definition* @macro_alloc(i32 32, %struct.macro_table* %15)
  store %struct.macro_definition* %16, %struct.macro_definition** %11, align 8
  %17 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %18 = call i32 @memset(%struct.macro_definition* %17, i32 0, i32 32)
  %19 = load %struct.macro_table*, %struct.macro_table** %6, align 8
  %20 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %21 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %20, i32 0, i32 4
  store %struct.macro_table* %19, %struct.macro_table** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %24 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.macro_table*, %struct.macro_table** %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @macro_bcache_str(%struct.macro_table* %25, i8* %26)
  %28 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %29 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @macro_function_like, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i8** @alloca(i32 %38)
  store i8** %39, i8*** %13, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %56, %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.macro_table*, %struct.macro_table** %6, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @macro_bcache_str(%struct.macro_table* %45, i8* %50)
  %52 = load i8**, i8*** %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.macro_table*, %struct.macro_table** %6, align 8
  %61 = load i8**, i8*** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @macro_bcache(%struct.macro_table* %60, i8** %61, i32 %62)
  %64 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %65 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %68 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %5
  %70 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  ret %struct.macro_definition* %70
}

declare dso_local %struct.macro_definition* @macro_alloc(i32, %struct.macro_table*) #1

declare dso_local i32 @memset(%struct.macro_definition*, i32, i32) #1

declare dso_local i8* @macro_bcache_str(%struct.macro_table*, i8*) #1

declare dso_local i8** @alloca(i32) #1

declare dso_local i32 @macro_bcache(%struct.macro_table*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
