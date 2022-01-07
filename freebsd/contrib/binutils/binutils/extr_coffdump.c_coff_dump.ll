; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_coff_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_coff_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Coff dump\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"#souces %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*)* @coff_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_dump(%struct.coff_ofile* %0) #0 {
  %2 = alloca %struct.coff_ofile*, align 8
  %3 = alloca i32, align 4
  store %struct.coff_ofile* %0, %struct.coff_ofile** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @nl()
  %6 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %7 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 (...) @nl()
  %11 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %12 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dump_coff_sfile(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %18 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %23 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @dump_coff_section(i64 %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @dump_coff_sfile(i32) #1

declare dso_local i32 @dump_coff_section(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
