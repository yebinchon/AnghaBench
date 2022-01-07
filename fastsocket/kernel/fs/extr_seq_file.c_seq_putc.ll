; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_putc(%struct.seq_file* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %22, align 1
  store i32 0, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
