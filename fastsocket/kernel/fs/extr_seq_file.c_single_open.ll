; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_single_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_single_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.seq_file = type { i8* }
%struct.seq_operations = type { i32 (%struct.seq_file.0*, i8*)*, i32, i32, i32 }
%struct.seq_file.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@single_start = common dso_local global i32 0, align 4
@single_next = common dso_local global i32 0, align 4
@single_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.seq_operations*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 (%struct.seq_file*, i8*)* %1, i32 (%struct.seq_file*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.seq_operations* @kmalloc(i32 24, i32 %9)
  store %struct.seq_operations* %10, %struct.seq_operations** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %14 = icmp ne %struct.seq_operations* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  %16 = load i32, i32* @single_start, align 4
  %17 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %18 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @single_next, align 4
  %20 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %21 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @single_stop, align 4
  %23 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %24 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %5, align 8
  %26 = bitcast i32 (%struct.seq_file*, i8*)* %25 to i32 (%struct.seq_file.0*, i8*)*
  %27 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %28 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %27, i32 0, i32 0
  store i32 (%struct.seq_file.0*, i8*)* %26, i32 (%struct.seq_file.0*, i8*)** %28, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %31 = call i32 @seq_open(%struct.file* %29, %struct.seq_operations* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %15
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.seq_file*
  %40 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %39, i32 0, i32 0
  store i8* %35, i8** %40, align 8
  br label %44

41:                                               ; preds = %15
  %42 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %43 = call i32 @kfree(%struct.seq_operations* %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.seq_operations* @kmalloc(i32, i32) #1

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

declare dso_local i32 @kfree(%struct.seq_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
