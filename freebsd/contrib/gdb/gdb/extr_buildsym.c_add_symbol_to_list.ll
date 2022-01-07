; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_add_symbol_to_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_add_symbol_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { i64, %struct.symbol**, %struct.pending* }
%struct.symbol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PENDINGSIZE = common dso_local global i64 0, align 8
@free_pendings = common dso_local global %struct.pending* null, align 8
@language_cplus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_symbol_to_list(%struct.symbol* %0, %struct.pending** %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.pending**, align 8
  %5 = alloca %struct.pending*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.pending** %1, %struct.pending*** %4, align 8
  %6 = load %struct.symbol*, %struct.symbol** %3, align 8
  %7 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.symbol*, %struct.symbol** %3, align 8
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %71

21:                                               ; preds = %11, %2
  %22 = load %struct.pending**, %struct.pending*** %4, align 8
  %23 = load %struct.pending*, %struct.pending** %22, align 8
  %24 = icmp eq %struct.pending* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.pending**, %struct.pending*** %4, align 8
  %27 = load %struct.pending*, %struct.pending** %26, align 8
  %28 = getelementptr inbounds %struct.pending, %struct.pending* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PENDINGSIZE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25, %21
  %33 = load %struct.pending*, %struct.pending** @free_pendings, align 8
  %34 = icmp ne %struct.pending* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.pending*, %struct.pending** @free_pendings, align 8
  store %struct.pending* %36, %struct.pending** %5, align 8
  %37 = load %struct.pending*, %struct.pending** %5, align 8
  %38 = getelementptr inbounds %struct.pending, %struct.pending* %37, i32 0, i32 2
  %39 = load %struct.pending*, %struct.pending** %38, align 8
  store %struct.pending* %39, %struct.pending** @free_pendings, align 8
  br label %43

40:                                               ; preds = %32
  %41 = call i64 @xmalloc(i32 24)
  %42 = inttoptr i64 %41 to %struct.pending*
  store %struct.pending* %42, %struct.pending** %5, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.pending**, %struct.pending*** %4, align 8
  %45 = load %struct.pending*, %struct.pending** %44, align 8
  %46 = load %struct.pending*, %struct.pending** %5, align 8
  %47 = getelementptr inbounds %struct.pending, %struct.pending* %46, i32 0, i32 2
  store %struct.pending* %45, %struct.pending** %47, align 8
  %48 = load %struct.pending*, %struct.pending** %5, align 8
  %49 = load %struct.pending**, %struct.pending*** %4, align 8
  store %struct.pending* %48, %struct.pending** %49, align 8
  %50 = load %struct.pending*, %struct.pending** %5, align 8
  %51 = getelementptr inbounds %struct.pending, %struct.pending* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %25
  %53 = load %struct.symbol*, %struct.symbol** %3, align 8
  %54 = load %struct.pending**, %struct.pending*** %4, align 8
  %55 = load %struct.pending*, %struct.pending** %54, align 8
  %56 = getelementptr inbounds %struct.pending, %struct.pending* %55, i32 0, i32 1
  %57 = load %struct.symbol**, %struct.symbol*** %56, align 8
  %58 = load %struct.pending**, %struct.pending*** %4, align 8
  %59 = load %struct.pending*, %struct.pending** %58, align 8
  %60 = getelementptr inbounds %struct.pending, %struct.pending* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds %struct.symbol*, %struct.symbol** %57, i64 %61
  store %struct.symbol* %53, %struct.symbol** %63, align 8
  %64 = load %struct.symbol*, %struct.symbol** %3, align 8
  %65 = call i64 @SYMBOL_LANGUAGE(%struct.symbol* %64)
  %66 = load i64, i64* @language_cplus, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load %struct.symbol*, %struct.symbol** %3, align 8
  %70 = call i32 @cp_scan_for_anonymous_namespaces(%struct.symbol* %69)
  br label %71

71:                                               ; preds = %20, %68, %52
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @SYMBOL_LANGUAGE(%struct.symbol*) #1

declare dso_local i32 @cp_scan_for_anonymous_namespaces(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
