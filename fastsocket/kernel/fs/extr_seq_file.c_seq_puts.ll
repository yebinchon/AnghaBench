; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_puts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_puts(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i64 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
