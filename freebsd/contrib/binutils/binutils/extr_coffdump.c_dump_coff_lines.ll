; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_line = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"#lines %d \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(%d 0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_line*)* @dump_coff_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_lines(%struct.coff_line* %0) #0 {
  %2 = alloca %struct.coff_line*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.coff_line* %0, %struct.coff_line** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @tab(i32 1)
  %6 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.coff_line*, %struct.coff_line** %2, align 8
  %8 = getelementptr inbounds %struct.coff_line, %struct.coff_line* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, i32, ...) @printf(i8* %6, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.coff_line*, %struct.coff_line** %2, align 8
  %14 = getelementptr inbounds %struct.coff_line, %struct.coff_line* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.coff_line*, %struct.coff_line** %2, align 8
  %19 = getelementptr inbounds %struct.coff_line, %struct.coff_line* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.coff_line*, %struct.coff_line** %2, align 8
  %26 = getelementptr inbounds %struct.coff_line, %struct.coff_line* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = call i32 (...) @nl()
  %39 = call i32 @tab(i32 0)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  %45 = call i32 (...) @nl()
  %46 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @nl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
