; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_schedule_prefetches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_schedule_prefetches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref*, %struct.mem_ref_group* }
%struct.mem_ref = type { i32, i32, %struct.mem_ref* }

@SIMULTANEOUS_PREFETCHES = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Max prefetches to issue: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ref_group*, i32, i32)* @schedule_prefetches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schedule_prefetches(%struct.mem_ref_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ref_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ref*, align 8
  %11 = alloca i32, align 4
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @SIMULTANEOUS_PREFETCHES, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SIMULTANEOUS_PREFETCHES, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @SIMULTANEOUS_PREFETCHES, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i64, i64* @dump_file, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @dump_flags, align 4
  %27 = load i32, i32* @TDF_DETAILS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @dump_file, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %25, %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %86

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %80, %38
  %40 = load %struct.mem_ref_group*, %struct.mem_ref_group** %5, align 8
  %41 = icmp ne %struct.mem_ref_group* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load %struct.mem_ref_group*, %struct.mem_ref_group** %5, align 8
  %44 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %43, i32 0, i32 0
  %45 = load %struct.mem_ref*, %struct.mem_ref** %44, align 8
  store %struct.mem_ref* %45, %struct.mem_ref** %10, align 8
  br label %46

46:                                               ; preds = %75, %42
  %47 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %48 = icmp ne %struct.mem_ref* %47, null
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %51 = call i32 @should_issue_prefetch_p(%struct.mem_ref* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %75

54:                                               ; preds = %49
  %55 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %56 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %59 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %57, %60
  %62 = sub i32 %61, 1
  %63 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %64 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = udiv i32 %62, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %86

71:                                               ; preds = %54
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %53
  %76 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %77 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %76, i32 0, i32 2
  %78 = load %struct.mem_ref*, %struct.mem_ref** %77, align 8
  store %struct.mem_ref* %78, %struct.mem_ref** %10, align 8
  br label %46

79:                                               ; preds = %46
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.mem_ref_group*, %struct.mem_ref_group** %5, align 8
  %82 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %81, i32 0, i32 1
  %83 = load %struct.mem_ref_group*, %struct.mem_ref_group** %82, align 8
  store %struct.mem_ref_group* %83, %struct.mem_ref_group** %5, align 8
  br label %39

84:                                               ; preds = %39
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %70, %37
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @should_issue_prefetch_p(%struct.mem_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
