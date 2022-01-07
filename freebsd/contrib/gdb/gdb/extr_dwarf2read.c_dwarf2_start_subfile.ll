; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_start_subfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_start_subfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfile = type { i32, %struct.subfile* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@subfiles = common dso_local global %struct.subfile* null, align 8
@current_subfile = common dso_local global %struct.subfile* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @dwarf2_start_subfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_start_subfile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.subfile*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @IS_ABSOLUTE_PATH(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @concat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %15, i32* null)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.subfile*, %struct.subfile** @subfiles, align 8
  store %struct.subfile* %17, %struct.subfile** %5, align 8
  br label %18

18:                                               ; preds = %33, %13
  %19 = load %struct.subfile*, %struct.subfile** %5, align 8
  %20 = icmp ne %struct.subfile* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.subfile*, %struct.subfile** %5, align 8
  %23 = getelementptr inbounds %struct.subfile, %struct.subfile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @FILENAME_CMP(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.subfile*, %struct.subfile** %5, align 8
  store %struct.subfile* %29, %struct.subfile** @current_subfile, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @xfree(i8* %30)
  br label %44

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.subfile*, %struct.subfile** %5, align 8
  %35 = getelementptr inbounds %struct.subfile, %struct.subfile* %34, i32 0, i32 1
  %36 = load %struct.subfile*, %struct.subfile** %35, align 8
  store %struct.subfile* %36, %struct.subfile** %5, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @xfree(i8* %38)
  br label %40

40:                                               ; preds = %37, %10, %2
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @start_subfile(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %28
  ret void
}

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @FILENAME_CMP(i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @start_subfile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
