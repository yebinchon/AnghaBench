; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_record_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_record_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref* }
%struct.mem_ref = type { i32, i64, i32, i32, %struct.mem_ref*, %struct.mem_ref_group*, i32, i8*, i8* }

@WRITE_CAN_USE_READ_PREFETCH = common dso_local global i32 0, align 4
@READ_CAN_USE_WRITE_PREFETCH = common dso_local global i32 0, align 4
@PREFETCH_ALL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref_group*, i8*, i8*, i64, i32)* @record_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_ref(%struct.mem_ref_group* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.mem_ref_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_ref**, align 8
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.mem_ref_group*, %struct.mem_ref_group** %6, align 8
  %13 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %12, i32 0, i32 0
  store %struct.mem_ref** %13, %struct.mem_ref*** %11, align 8
  br label %14

14:                                               ; preds = %53, %5
  %15 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %16 = load %struct.mem_ref*, %struct.mem_ref** %15, align 8
  %17 = icmp ne %struct.mem_ref* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i32, i32* @WRITE_CAN_USE_READ_PREFETCH, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %26 = load %struct.mem_ref*, %struct.mem_ref** %25, align 8
  %27 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %53

31:                                               ; preds = %24, %21, %18
  %32 = load i32, i32* @READ_CAN_USE_WRITE_PREFETCH, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %39 = load %struct.mem_ref*, %struct.mem_ref** %38, align 8
  %40 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %53

44:                                               ; preds = %37, %34, %31
  %45 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %46 = load %struct.mem_ref*, %struct.mem_ref** %45, align 8
  %47 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %105

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %43, %30
  %54 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %55 = load %struct.mem_ref*, %struct.mem_ref** %54, align 8
  %56 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %55, i32 0, i32 4
  store %struct.mem_ref** %56, %struct.mem_ref*** %11, align 8
  br label %14

57:                                               ; preds = %14
  %58 = call %struct.mem_ref* @xcalloc(i32 1, i32 64)
  %59 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  store %struct.mem_ref* %58, %struct.mem_ref** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %62 = load %struct.mem_ref*, %struct.mem_ref** %61, align 8
  %63 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %62, i32 0, i32 8
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %66 = load %struct.mem_ref*, %struct.mem_ref** %65, align 8
  %67 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %66, i32 0, i32 7
  store i8* %64, i8** %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %70 = load %struct.mem_ref*, %struct.mem_ref** %69, align 8
  %71 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %74 = load %struct.mem_ref*, %struct.mem_ref** %73, align 8
  %75 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @PREFETCH_ALL, align 4
  %77 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %78 = load %struct.mem_ref*, %struct.mem_ref** %77, align 8
  %79 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 8
  %80 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %81 = load %struct.mem_ref*, %struct.mem_ref** %80, align 8
  %82 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %84 = load %struct.mem_ref*, %struct.mem_ref** %83, align 8
  %85 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.mem_ref_group*, %struct.mem_ref_group** %6, align 8
  %87 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %88 = load %struct.mem_ref*, %struct.mem_ref** %87, align 8
  %89 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %88, i32 0, i32 5
  store %struct.mem_ref_group* %86, %struct.mem_ref_group** %89, align 8
  %90 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %91 = load %struct.mem_ref*, %struct.mem_ref** %90, align 8
  %92 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %91, i32 0, i32 4
  store %struct.mem_ref* null, %struct.mem_ref** %92, align 8
  %93 = load i64, i64* @dump_file, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %57
  %96 = load i32, i32* @dump_flags, align 4
  %97 = load i32, i32* @TDF_DETAILS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i64, i64* @dump_file, align 8
  %102 = load %struct.mem_ref**, %struct.mem_ref*** %11, align 8
  %103 = load %struct.mem_ref*, %struct.mem_ref** %102, align 8
  %104 = call i32 @dump_mem_ref(i64 %101, %struct.mem_ref* %103)
  br label %105

105:                                              ; preds = %51, %100, %95, %57
  ret void
}

declare dso_local %struct.mem_ref* @xcalloc(i32, i32) #1

declare dso_local i32 @dump_mem_ref(i64, %struct.mem_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
