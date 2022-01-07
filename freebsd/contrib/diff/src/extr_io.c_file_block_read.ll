; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_file_block_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_file_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i32, i64, i32, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_block_read(%struct.file_data* %0, i64 %1) #0 {
  %3 = alloca %struct.file_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.file_data* %0, %struct.file_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = load %struct.file_data*, %struct.file_data** %3, align 8
  %10 = getelementptr inbounds %struct.file_data, %struct.file_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %8
  %14 = load %struct.file_data*, %struct.file_data** %3, align 8
  %15 = getelementptr inbounds %struct.file_data, %struct.file_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.file_data*, %struct.file_data** %3, align 8
  %18 = call i64 @FILE_BUFFER(%struct.file_data* %17)
  %19 = load %struct.file_data*, %struct.file_data** %3, align 8
  %20 = getelementptr inbounds %struct.file_data, %struct.file_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @block_read(i32 %16, i64 %22, i64 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.file_data*, %struct.file_data** %3, align 8
  %30 = getelementptr inbounds %struct.file_data, %struct.file_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pfatal_with_name(i32 %31)
  br label %33

33:                                               ; preds = %28, %13
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.file_data*, %struct.file_data** %3, align 8
  %36 = getelementptr inbounds %struct.file_data, %struct.file_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.file_data*, %struct.file_data** %3, align 8
  %44 = getelementptr inbounds %struct.file_data, %struct.file_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %33, %8, %2
  ret void
}

declare dso_local i64 @block_read(i32, i64, i64) #1

declare dso_local i64 @FILE_BUFFER(%struct.file_data*) #1

declare dso_local i32 @pfatal_with_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
