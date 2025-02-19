; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_lseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i64 }
%struct.seq_file = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_lseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.seq_file*
  store %struct.seq_file* %12, %struct.seq_file** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %22 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %73 [
    i32 1, label %24
    i32 0, label %30
  ]

24:                                               ; preds = %3
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %3, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %73

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %38 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %49, %41
  %43 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @traverse(%struct.seq_file* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %42

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %57 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %59 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %61 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %60, i32 0, i32 4
  store i32 0, i32* %61, align 4
  %62 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %63 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  br label %71

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %67 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 %68, i32* %8, align 4
  br label %71

71:                                               ; preds = %64, %53
  br label %72

72:                                               ; preds = %71, %34
  br label %73

73:                                               ; preds = %72, %3, %33
  %74 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %75 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %80 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @traverse(%struct.seq_file*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
