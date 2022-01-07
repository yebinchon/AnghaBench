; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_sfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_sfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_sfile = type { i8*, %struct.coff_sfile*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"List of source files\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Source file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_sfile*)* @dump_coff_sfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_sfile(%struct.coff_sfile* %0) #0 {
  %2 = alloca %struct.coff_sfile*, align 8
  store %struct.coff_sfile* %0, %struct.coff_sfile** %2, align 8
  %3 = call i32 @tab(i32 1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @nl()
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.coff_sfile*, %struct.coff_sfile** %2, align 8
  %8 = icmp ne %struct.coff_sfile* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = call i32 @tab(i32 0)
  %11 = load %struct.coff_sfile*, %struct.coff_sfile** %2, align 8
  %12 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = call i32 (...) @nl()
  %16 = load %struct.coff_sfile*, %struct.coff_sfile** %2, align 8
  %17 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dump_coff_scope(i32 %18)
  %20 = load %struct.coff_sfile*, %struct.coff_sfile** %2, align 8
  %21 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %20, i32 0, i32 1
  %22 = load %struct.coff_sfile*, %struct.coff_sfile** %21, align 8
  store %struct.coff_sfile* %22, %struct.coff_sfile** %2, align 8
  br label %6

23:                                               ; preds = %6
  %24 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @dump_coff_scope(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
