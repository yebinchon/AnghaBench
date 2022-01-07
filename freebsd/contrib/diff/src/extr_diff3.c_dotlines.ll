; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_dotlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_dotlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.diff3_block*, i32)* @dotlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dotlines(i32* %0, %struct.diff3_block* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.diff3_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.diff3_block* %1, %struct.diff3_block** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.diff3_block*, %struct.diff3_block** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @D_NUMLINES(%struct.diff3_block* %12, i32 %13)
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.diff3_block*, %struct.diff3_block** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i8* @D_RELNUM(%struct.diff3_block* %17, i32 %18, i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.diff3_block*, %struct.diff3_block** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @D_RELLEN(%struct.diff3_block* %31, i32 %32, i64 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fwrite(i8* %30, i32 1, i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i64 @D_NUMLINES(%struct.diff3_block*, i32) #1

declare dso_local i8* @D_RELNUM(%struct.diff3_block*, i32, i64) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @D_RELLEN(%struct.diff3_block*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
