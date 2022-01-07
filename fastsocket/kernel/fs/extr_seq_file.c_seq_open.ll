; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.seq_file* }
%struct.seq_file = type { %struct.seq_operations*, i32 }
%struct.seq_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_PWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_open(%struct.file* %0, %struct.seq_operations* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_operations*, align 8
  %6 = alloca %struct.seq_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.seq_operations* %1, %struct.seq_operations** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 2
  %9 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  store %struct.seq_file* %9, %struct.seq_file** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %11 = icmp ne %struct.seq_file* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.seq_file* @kmalloc(i32 16, i32 %13)
  store %struct.seq_file* %14, %struct.seq_file** %6, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %16 = icmp ne %struct.seq_file* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 2
  store %struct.seq_file* %21, %struct.seq_file** %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %26 = call i32 @memset(%struct.seq_file* %25, i32 0, i32 16)
  %27 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.seq_operations*, %struct.seq_operations** %5, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %32 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %31, i32 0, i32 0
  store %struct.seq_operations* %30, %struct.seq_operations** %32, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @FMODE_PWRITE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %24, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.seq_file* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
