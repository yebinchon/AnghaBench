; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_find_symbol_in_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_find_symbol_in_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.pending = type { i32, %struct.pending*, %struct.symbol** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @find_symbol_in_list(%struct.pending* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.pending*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pending* %0, %struct.pending** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %60, %3
  %11 = load %struct.pending*, %struct.pending** %5, align 8
  %12 = icmp ne %struct.pending* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load %struct.pending*, %struct.pending** %5, align 8
  %15 = getelementptr inbounds %struct.pending, %struct.pending* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %59, %13
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load %struct.pending*, %struct.pending** %5, align 8
  %23 = getelementptr inbounds %struct.pending, %struct.pending* %22, i32 0, i32 2
  %24 = load %struct.symbol**, %struct.symbol*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.symbol*, %struct.symbol** %24, i64 %26
  %28 = load %struct.symbol*, %struct.symbol** %27, align 8
  %29 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %21
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @strncmp(i8* %38, i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.pending*, %struct.pending** %5, align 8
  %53 = getelementptr inbounds %struct.pending, %struct.pending* %52, i32 0, i32 2
  %54 = load %struct.symbol**, %struct.symbol*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.symbol*, %struct.symbol** %54, i64 %56
  %58 = load %struct.symbol*, %struct.symbol** %57, align 8
  store %struct.symbol* %58, %struct.symbol** %4, align 8
  br label %65

59:                                               ; preds = %43, %37, %21
  br label %17

60:                                               ; preds = %17
  %61 = load %struct.pending*, %struct.pending** %5, align 8
  %62 = getelementptr inbounds %struct.pending, %struct.pending* %61, i32 0, i32 1
  %63 = load %struct.pending*, %struct.pending** %62, align 8
  store %struct.pending* %63, %struct.pending** %5, align 8
  br label %10

64:                                               ; preds = %10
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.symbol*, %struct.symbol** %4, align 8
  ret %struct.symbol* %66
}

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
