; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i64, i32)* @coff_set_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_set_section_contents(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = call i32 @coff_compute_section_file_positions(%struct.TYPE_10__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %6, align 4
  br label %55

30:                                               ; preds = %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i64 @bfd_seek(%struct.TYPE_10__* %31, i64 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = call i32 @bfd_bwrite(i8* %48, i32 %49, %struct.TYPE_10__* %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %45, %40, %28, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @coff_compute_section_file_positions(%struct.TYPE_10__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
