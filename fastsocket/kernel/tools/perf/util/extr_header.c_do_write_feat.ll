; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_do_write_feat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_do_write_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.perf_header*, %struct.perf_evlist*)* }
%struct.perf_header = type { i32 }
%struct.perf_evlist = type { i32 }
%struct.perf_file_section = type { i8*, i8* }

@feat_ops = common dso_local global %struct.TYPE_2__* null, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to write feature %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.perf_header*, i32, %struct.perf_file_section**, %struct.perf_evlist*)* @do_write_feat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_feat(i32 %0, %struct.perf_header* %1, i32 %2, %struct.perf_file_section** %3, %struct.perf_evlist* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_file_section**, align 8
  %11 = alloca %struct.perf_evlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.perf_header* %1, %struct.perf_header** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.perf_file_section** %3, %struct.perf_file_section*** %10, align 8
  store %struct.perf_evlist* %4, %struct.perf_evlist** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.perf_header*, %struct.perf_header** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @perf_header__has_feat(%struct.perf_header* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feat_ops, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.perf_header*, %struct.perf_evlist*)*, i32 (i32, %struct.perf_header*, %struct.perf_evlist*)** %23, align 8
  %25 = icmp ne i32 (i32, %struct.perf_header*, %struct.perf_evlist*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %76

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i8* @lseek(i32 %28, i8* null, i32 %29)
  %31 = load %struct.perf_file_section**, %struct.perf_file_section*** %10, align 8
  %32 = load %struct.perf_file_section*, %struct.perf_file_section** %31, align 8
  %33 = getelementptr inbounds %struct.perf_file_section, %struct.perf_file_section* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @feat_ops, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.perf_header*, %struct.perf_evlist*)*, i32 (i32, %struct.perf_header*, %struct.perf_evlist*)** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.perf_header*, %struct.perf_header** %8, align 8
  %42 = load %struct.perf_evlist*, %struct.perf_evlist** %11, align 8
  %43 = call i32 %39(i32 %40, %struct.perf_header* %41, %struct.perf_evlist* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %27
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.perf_file_section**, %struct.perf_file_section*** %10, align 8
  %51 = load %struct.perf_file_section*, %struct.perf_file_section** %50, align 8
  %52 = getelementptr inbounds %struct.perf_file_section, %struct.perf_file_section* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @SEEK_SET, align 4
  %55 = call i8* @lseek(i32 %49, i8* %53, i32 %54)
  store i32 -1, i32* %6, align 4
  br label %76

56:                                               ; preds = %27
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SEEK_CUR, align 4
  %59 = call i8* @lseek(i32 %57, i8* null, i32 %58)
  %60 = load %struct.perf_file_section**, %struct.perf_file_section*** %10, align 8
  %61 = load %struct.perf_file_section*, %struct.perf_file_section** %60, align 8
  %62 = getelementptr inbounds %struct.perf_file_section, %struct.perf_file_section* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %59 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.perf_file_section**, %struct.perf_file_section*** %10, align 8
  %69 = load %struct.perf_file_section*, %struct.perf_file_section** %68, align 8
  %70 = getelementptr inbounds %struct.perf_file_section, %struct.perf_file_section* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.perf_file_section**, %struct.perf_file_section*** %10, align 8
  %72 = load %struct.perf_file_section*, %struct.perf_file_section** %71, align 8
  %73 = getelementptr inbounds %struct.perf_file_section, %struct.perf_file_section* %72, i32 1
  store %struct.perf_file_section* %73, %struct.perf_file_section** %71, align 8
  br label %74

74:                                               ; preds = %56, %5
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %46, %26
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @perf_header__has_feat(%struct.perf_header*, i32) #1

declare dso_local i8* @lseek(i32, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
