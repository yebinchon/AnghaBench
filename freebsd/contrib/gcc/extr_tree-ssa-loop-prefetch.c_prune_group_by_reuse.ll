; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_group_by_reuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_group_by_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref* }
%struct.mem_ref = type { i32, i32, %struct.mem_ref* }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Reference %p:\00", align 1
@PREFETCH_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" no restrictions\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" do not prefetch\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" prefetch once\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" prefetch before \00", align 1
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c" prefetch mod \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref_group*)* @prune_group_by_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_group_by_reuse(%struct.mem_ref_group* %0) #0 {
  %2 = alloca %struct.mem_ref_group*, align 8
  %3 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %2, align 8
  %4 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %5 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %4, i32 0, i32 0
  %6 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  store %struct.mem_ref* %6, %struct.mem_ref** %3, align 8
  br label %7

7:                                                ; preds = %96, %1
  %8 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %9 = icmp ne %struct.mem_ref* %8, null
  br i1 %9, label %10, label %100

10:                                               ; preds = %7
  %11 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %12 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %12, i32 0, i32 0
  %14 = load %struct.mem_ref*, %struct.mem_ref** %13, align 8
  %15 = call i32 @prune_ref_by_reuse(%struct.mem_ref* %11, %struct.mem_ref* %14)
  %16 = load i64, i64* @dump_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %10
  %19 = load i32, i32* @dump_flags, align 4
  %20 = load i32, i32* @TDF_DETAILS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %18
  %24 = load i64, i64* @dump_file, align 8
  %25 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %26 = bitcast %struct.mem_ref* %25 to i8*
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %29 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PREFETCH_ALL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %35 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* @dump_file, align 8
  %40 = call i32 (i64, i8*, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %92

41:                                               ; preds = %33, %23
  %42 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %43 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* @dump_file, align 8
  %48 = call i32 (i64, i8*, ...) @fprintf(i64 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %91

49:                                               ; preds = %41
  %50 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %51 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %54 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @dump_file, align 8
  %59 = call i32 (i64, i8*, ...) @fprintf(i64 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %90

60:                                               ; preds = %49
  %61 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %62 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PREFETCH_ALL, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i64, i64* @dump_file, align 8
  %68 = call i32 (i64, i8*, ...) @fprintf(i64 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i64, i64* @dump_file, align 8
  %70 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %71 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %72 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i64, i8*, ...) @fprintf(i64 %69, i8* %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %60
  %76 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %77 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i64, i64* @dump_file, align 8
  %82 = call i32 (i64, i8*, ...) @fprintf(i64 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i64, i64* @dump_file, align 8
  %84 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %85 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %86 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i64, i8*, ...) @fprintf(i64 %83, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  br label %90

90:                                               ; preds = %89, %57
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %38
  %93 = load i64, i64* @dump_file, align 8
  %94 = call i32 (i64, i8*, ...) @fprintf(i64 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %18, %10
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %98 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %97, i32 0, i32 2
  %99 = load %struct.mem_ref*, %struct.mem_ref** %98, align 8
  store %struct.mem_ref* %99, %struct.mem_ref** %3, align 8
  br label %7

100:                                              ; preds = %7
  ret void
}

declare dso_local i32 @prune_ref_by_reuse(%struct.mem_ref*, %struct.mem_ref*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
