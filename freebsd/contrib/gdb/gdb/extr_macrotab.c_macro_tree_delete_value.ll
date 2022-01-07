; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_tree_delete_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_tree_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type { i64, i32, i64, i64*, %struct.macro_table* }
%struct.macro_table = type { i32 }

@macro_function_like = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @macro_tree_delete_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_tree_delete_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.macro_definition*, align 8
  %4 = alloca %struct.macro_table*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.macro_definition*
  store %struct.macro_definition* %7, %struct.macro_definition** %3, align 8
  %8 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %9 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %8, i32 0, i32 4
  %10 = load %struct.macro_table*, %struct.macro_table** %9, align 8
  store %struct.macro_table* %10, %struct.macro_table** %4, align 8
  %11 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %12 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @macro_function_like, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %20 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.macro_table*, %struct.macro_table** %4, align 8
  %25 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %26 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %25, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 (%struct.macro_table*, ...) @macro_bcache_free(%struct.macro_table* %24, i8* %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.macro_table*, %struct.macro_table** %4, align 8
  %39 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %40 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = bitcast i64* %41 to i8**
  %43 = call i32 (%struct.macro_table*, ...) @macro_bcache_free(%struct.macro_table* %38, i8** %42)
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.macro_table*, %struct.macro_table** %4, align 8
  %46 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %47 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (%struct.macro_table*, ...) @macro_bcache_free(%struct.macro_table* %45, i8* %49)
  %51 = load %struct.macro_definition*, %struct.macro_definition** %3, align 8
  %52 = load %struct.macro_table*, %struct.macro_table** %4, align 8
  %53 = call i32 @macro_free(%struct.macro_definition* %51, %struct.macro_table* %52)
  ret void
}

declare dso_local i32 @macro_bcache_free(%struct.macro_table*, ...) #1

declare dso_local i32 @macro_free(%struct.macro_definition*, %struct.macro_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
