; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_symfile_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_symfile_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32*, i32 }
%struct.header_file = type { %struct.header_file*, %struct.header_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @dbx_symfile_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbx_symfile_finish(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.header_file*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %5 = load %struct.objfile*, %struct.objfile** %2, align 8
  %6 = getelementptr inbounds %struct.objfile, %struct.objfile* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.objfile*, %struct.objfile** %2, align 8
  %11 = call %struct.header_file* @HEADER_FILES(%struct.objfile* %10)
  %12 = icmp ne %struct.header_file* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.objfile*, %struct.objfile** %2, align 8
  %15 = call i32 @N_HEADER_FILES(%struct.objfile* %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.objfile*, %struct.objfile** %2, align 8
  %17 = call %struct.header_file* @HEADER_FILES(%struct.objfile* %16)
  store %struct.header_file* %17, %struct.header_file** %4, align 8
  br label %18

18:                                               ; preds = %22, %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.header_file*, %struct.header_file** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.header_file, %struct.header_file* %23, i64 %25
  %27 = getelementptr inbounds %struct.header_file, %struct.header_file* %26, i32 0, i32 1
  %28 = load %struct.header_file*, %struct.header_file** %27, align 8
  %29 = call i32 @xfree(%struct.header_file* %28)
  %30 = load %struct.header_file*, %struct.header_file** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.header_file, %struct.header_file* %30, i64 %32
  %34 = getelementptr inbounds %struct.header_file, %struct.header_file* %33, i32 0, i32 0
  %35 = load %struct.header_file*, %struct.header_file** %34, align 8
  %36 = call i32 @xfree(%struct.header_file* %35)
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.header_file*, %struct.header_file** %4, align 8
  %39 = call i32 @xfree(%struct.header_file* %38)
  br label %40

40:                                               ; preds = %37, %9
  %41 = load %struct.objfile*, %struct.objfile** %2, align 8
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.objfile*, %struct.objfile** %2, align 8
  %45 = getelementptr inbounds %struct.objfile, %struct.objfile* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @xmfree(i32 %43, i32* %46)
  br label %48

48:                                               ; preds = %40, %1
  %49 = call i32 (...) @free_header_files()
  ret void
}

declare dso_local %struct.header_file* @HEADER_FILES(%struct.objfile*) #1

declare dso_local i32 @N_HEADER_FILES(%struct.objfile*) #1

declare dso_local i32 @xfree(%struct.header_file*) #1

declare dso_local i32 @xmfree(i32, i32*) #1

declare dso_local i32 @free_header_files(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
