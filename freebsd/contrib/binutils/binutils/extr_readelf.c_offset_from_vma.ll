; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_offset_from_vma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_offset_from_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Cannot interpret virtual addresses without program headers.\0A\00", align 1
@program_headers = common dso_local global %struct.TYPE_4__* null, align 8
@elf_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Virtual address 0x%lx not located in any PT_LOAD segment.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @offset_from_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @offset_from_vma(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_program_headers(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i32, ...) @warn(i32 %13)
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %4, align 8
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @program_headers, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  br label %18

18:                                               ; preds = %66, %16
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @program_headers, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = icmp ult %struct.TYPE_4__* %19, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PT_LOAD, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %66

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 0, %39
  %41 = and i64 %36, %40
  %42 = icmp sge i64 %33, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = icmp sle i64 %46, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  store i64 %64, i64* %4, align 8
  br label %74

65:                                               ; preds = %43, %32
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 1
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %8, align 8
  br label %18

69:                                               ; preds = %18
  %70 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i32, ...) @warn(i32 %70, i64 %71)
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %69, %55, %12
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @get_program_headers(i32*) #1

declare dso_local i32 @warn(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
