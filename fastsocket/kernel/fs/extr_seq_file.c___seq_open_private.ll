; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c___seq_open_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c___seq_open_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i8* }
%struct.seq_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__seq_open_private(%struct.file* %0, %struct.seq_operations* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_operations*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.seq_file*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.seq_operations* %1, %struct.seq_operations** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load %struct.seq_operations*, %struct.seq_operations** %6, align 8
  %20 = call i32 @seq_open(%struct.file* %18, %struct.seq_operations* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.seq_file*, %struct.seq_file** %26, align 8
  store %struct.seq_file* %27, %struct.seq_file** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %30 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %4, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kfree(i8* %33)
  br label %35

35:                                               ; preds = %32, %16
  store i8* null, i8** %4, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
