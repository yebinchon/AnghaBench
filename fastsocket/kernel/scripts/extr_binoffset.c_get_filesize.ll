; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_get_filesize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_get_filesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"filesize: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_filesize(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @fstat(i32 %6, %struct.stat* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i64 [ %13, %11 ], [ %16, %14 ]
  %19 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %2, align 8
  br label %28

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
