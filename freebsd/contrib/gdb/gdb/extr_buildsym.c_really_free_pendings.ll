; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_really_free_pendings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_really_free_pendings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { %struct.pending* }

@free_pendings = common dso_local global %struct.pending* null, align 8
@file_symbols = common dso_local global %struct.pending* null, align 8
@global_symbols = common dso_local global %struct.pending* null, align 8
@pending_macros = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @really_free_pendings(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pending*, align 8
  %4 = alloca %struct.pending*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.pending*, %struct.pending** @free_pendings, align 8
  store %struct.pending* %5, %struct.pending** %3, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.pending*, %struct.pending** %3, align 8
  %8 = icmp ne %struct.pending* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load %struct.pending*, %struct.pending** %3, align 8
  %11 = getelementptr inbounds %struct.pending, %struct.pending* %10, i32 0, i32 0
  %12 = load %struct.pending*, %struct.pending** %11, align 8
  store %struct.pending* %12, %struct.pending** %4, align 8
  %13 = load %struct.pending*, %struct.pending** %3, align 8
  %14 = bitcast %struct.pending* %13 to i8*
  %15 = call i32 @xfree(i8* %14)
  br label %16

16:                                               ; preds = %9
  %17 = load %struct.pending*, %struct.pending** %4, align 8
  store %struct.pending* %17, %struct.pending** %3, align 8
  br label %6

18:                                               ; preds = %6
  store %struct.pending* null, %struct.pending** @free_pendings, align 8
  %19 = call i32 (...) @free_pending_blocks()
  %20 = load %struct.pending*, %struct.pending** @file_symbols, align 8
  store %struct.pending* %20, %struct.pending** %3, align 8
  br label %21

21:                                               ; preds = %31, %18
  %22 = load %struct.pending*, %struct.pending** %3, align 8
  %23 = icmp ne %struct.pending* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.pending*, %struct.pending** %3, align 8
  %26 = getelementptr inbounds %struct.pending, %struct.pending* %25, i32 0, i32 0
  %27 = load %struct.pending*, %struct.pending** %26, align 8
  store %struct.pending* %27, %struct.pending** %4, align 8
  %28 = load %struct.pending*, %struct.pending** %3, align 8
  %29 = bitcast %struct.pending* %28 to i8*
  %30 = call i32 @xfree(i8* %29)
  br label %31

31:                                               ; preds = %24
  %32 = load %struct.pending*, %struct.pending** %4, align 8
  store %struct.pending* %32, %struct.pending** %3, align 8
  br label %21

33:                                               ; preds = %21
  store %struct.pending* null, %struct.pending** @file_symbols, align 8
  %34 = load %struct.pending*, %struct.pending** @global_symbols, align 8
  store %struct.pending* %34, %struct.pending** %3, align 8
  br label %35

35:                                               ; preds = %45, %33
  %36 = load %struct.pending*, %struct.pending** %3, align 8
  %37 = icmp ne %struct.pending* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.pending*, %struct.pending** %3, align 8
  %40 = getelementptr inbounds %struct.pending, %struct.pending* %39, i32 0, i32 0
  %41 = load %struct.pending*, %struct.pending** %40, align 8
  store %struct.pending* %41, %struct.pending** %4, align 8
  %42 = load %struct.pending*, %struct.pending** %3, align 8
  %43 = bitcast %struct.pending* %42 to i8*
  %44 = call i32 @xfree(i8* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.pending*, %struct.pending** %4, align 8
  store %struct.pending* %46, %struct.pending** %3, align 8
  br label %35

47:                                               ; preds = %35
  store %struct.pending* null, %struct.pending** @global_symbols, align 8
  %48 = load i64, i64* @pending_macros, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* @pending_macros, align 8
  %52 = call i32 @free_macro_table(i64 %51)
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @free_pending_blocks(...) #1

declare dso_local i32 @free_macro_table(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
