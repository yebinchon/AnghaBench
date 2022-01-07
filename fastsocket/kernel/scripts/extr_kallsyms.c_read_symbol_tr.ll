; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_symbol_tr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_symbol_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_range = type { i64, i64, i32, i32 }

@text_ranges = common dso_local global %struct.text_range* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @read_symbol_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symbol_tr(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.text_range*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.text_range*, %struct.text_range** @text_ranges, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.text_range* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.text_range*, %struct.text_range** @text_ranges, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.text_range, %struct.text_range* %14, i64 %15
  store %struct.text_range* %16, %struct.text_range** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.text_range*, %struct.text_range** %7, align 8
  %19 = getelementptr inbounds %struct.text_range, %struct.text_range* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i8* %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.text_range*, %struct.text_range** %7, align 8
  %26 = getelementptr inbounds %struct.text_range, %struct.text_range* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %44

27:                                               ; preds = %13
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.text_range*, %struct.text_range** %7, align 8
  %30 = getelementptr inbounds %struct.text_range, %struct.text_range* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strcmp(i8* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.text_range*, %struct.text_range** %7, align 8
  %37 = getelementptr inbounds %struct.text_range, %struct.text_range* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %44

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %8

43:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %34, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @ARRAY_SIZE(%struct.text_range*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
