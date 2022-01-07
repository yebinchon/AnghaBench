; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { %struct.coff_sfile* }
%struct.coff_sfile = type { i8*, %struct.coff_sfile* }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*)* @wr_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wr_debug(%struct.coff_ofile* %0) #0 {
  %2 = alloca %struct.coff_ofile*, align 8
  %3 = alloca %struct.coff_sfile*, align 8
  %4 = alloca i32, align 4
  store %struct.coff_ofile* %0, %struct.coff_ofile** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %6 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %5, i32 0, i32 0
  %7 = load %struct.coff_sfile*, %struct.coff_sfile** %6, align 8
  store %struct.coff_sfile* %7, %struct.coff_sfile** %3, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %10 = icmp ne %struct.coff_sfile* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load i64, i64* @debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %16 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %21 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @wr_du(%struct.coff_ofile* %20, %struct.coff_sfile* %21, i32 %22)
  %24 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %25 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %26 = call i32 @wr_dus(%struct.coff_ofile* %24, %struct.coff_sfile* %25)
  %27 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %28 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %29 = call i32 @wr_program_structure(%struct.coff_ofile* %27, %struct.coff_sfile* %28)
  %30 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %31 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @wr_dln(%struct.coff_ofile* %30, %struct.coff_sfile* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load %struct.coff_sfile*, %struct.coff_sfile** %3, align 8
  %38 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %37, i32 0, i32 1
  %39 = load %struct.coff_sfile*, %struct.coff_sfile** %38, align 8
  store %struct.coff_sfile* %39, %struct.coff_sfile** %3, align 8
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @wr_du(%struct.coff_ofile*, %struct.coff_sfile*, i32) #1

declare dso_local i32 @wr_dus(%struct.coff_ofile*, %struct.coff_sfile*) #1

declare dso_local i32 @wr_program_structure(%struct.coff_ofile*, %struct.coff_sfile*) #1

declare dso_local i32 @wr_dln(%struct.coff_ofile*, %struct.coff_sfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
