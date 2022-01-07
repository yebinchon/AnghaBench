; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_target_to_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_target_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"DIE @ 0x%x \22%s\22, no bfd support for %d byte data object\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.objfile*)* @target_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_to_host(i8* %0, i32 %1, i32 %2, %struct.objfile* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %39 [
    i32 8, label %11
    i32 4, label %18
    i32 2, label %25
    i32 1, label %32
  ]

11:                                               ; preds = %4
  %12 = load %struct.objfile*, %struct.objfile** %8, align 8
  %13 = getelementptr inbounds %struct.objfile, %struct.objfile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = call i32 @bfd_get_64(i32 %14, i32* %16)
  store i32 %17, i32* %9, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load %struct.objfile*, %struct.objfile** %8, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @bfd_get_32(i32 %21, i32* %23)
  store i32 %24, i32* %9, align 4
  br label %44

25:                                               ; preds = %4
  %26 = load %struct.objfile*, %struct.objfile** %8, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = call i32 @bfd_get_16(i32 %28, i32* %30)
  store i32 %31, i32* %9, align 4
  br label %44

32:                                               ; preds = %4
  %33 = load %struct.objfile*, %struct.objfile** %8, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @bfd_get_8(i32 %35, i32* %37)
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @DIE_ID, align 4
  %41 = load i32, i32* @DIE_NAME, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %32, %25, %18, %11
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @bfd_get_64(i32, i32*) #1

declare dso_local i32 @bfd_get_32(i32, i32*) #1

declare dso_local i32 @bfd_get_16(i32, i32*) #1

declare dso_local i32 @bfd_get_8(i32, i32*) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
