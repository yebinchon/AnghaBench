; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_basicdieinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_basicdieinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i8*, i32, i64, i8* }
%struct.objfile = type { i32 }

@curdie = common dso_local global %struct.dieinfo* null, align 8
@dbroff = common dso_local global i32 0, align 4
@dbbase = common dso_local global i8* null, align 8
@SIZEOF_DIE_LENGTH = common dso_local global i64 0, align 8
@GET_UNSIGNED = common dso_local global i32 0, align 4
@dbsize = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"DIE @ 0x%x \22%s\22, malformed DIE, bad length (%ld bytes)\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@SIZEOF_DIE_TAG = common dso_local global i64 0, align 8
@TAG_padding = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, i8*, %struct.objfile*)* @basicdieinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basicdieinfo(%struct.dieinfo* %0, i8* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.dieinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objfile*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  %7 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  store %struct.dieinfo* %7, %struct.dieinfo** @curdie, align 8
  %8 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %9 = call i32 @memset(%struct.dieinfo* %8, i32 0, i32 32)
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %12 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @dbroff, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** @dbbase, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = add nsw i64 %14, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %23 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %26 = load i32, i32* @GET_UNSIGNED, align 4
  %27 = load %struct.objfile*, %struct.objfile** %6, align 8
  %28 = call i8* @target_to_host(i8* %24, i64 %25, i32 %26, %struct.objfile* %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %31 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %33 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %40 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8*, i8** @dbbase, align 8
  %44 = load i32, i32* @dbsize, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = icmp ugt i8* %42, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %37, %3
  %49 = load i32, i32* @DIE_ID, align 4
  %50 = load i32, i32* @DIE_NAME, align 4
  %51 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %52 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %54)
  %56 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %57 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %82

58:                                               ; preds = %37
  %59 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %60 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %63 = load i64, i64* @SIZEOF_DIE_TAG, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i8*, i8** @TAG_padding, align 8
  %68 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %69 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %81

70:                                               ; preds = %58
  %71 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* @SIZEOF_DIE_TAG, align 8
  %76 = load i32, i32* @GET_UNSIGNED, align 4
  %77 = load %struct.objfile*, %struct.objfile** %6, align 8
  %78 = call i8* @target_to_host(i8* %74, i64 %75, i32 %76, %struct.objfile* %77)
  %79 = load %struct.dieinfo*, %struct.dieinfo** %4, align 8
  %80 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %70, %66
  br label %82

82:                                               ; preds = %81, %48
  ret void
}

declare dso_local i32 @memset(%struct.dieinfo*, i32, i32) #1

declare dso_local i8* @target_to_host(i8*, i64, i32, %struct.objfile*) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
