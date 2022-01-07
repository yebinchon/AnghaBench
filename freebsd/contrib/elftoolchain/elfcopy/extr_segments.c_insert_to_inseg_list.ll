; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_segments.c_insert_to_inseg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_segments.c_insert_to_inseg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment = type { i32, %struct.section** }
%struct.section = type { i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.segment*, %struct.section*)* @insert_to_inseg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_to_inseg_list(%struct.segment* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.segment*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i32, align 4
  store %struct.segment* %0, %struct.segment** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %7 = load %struct.segment*, %struct.segment** %3, align 8
  %8 = getelementptr inbounds %struct.segment, %struct.segment* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.segment*, %struct.segment** %3, align 8
  %12 = getelementptr inbounds %struct.segment, %struct.segment* %11, i32 0, i32 1
  %13 = load %struct.section**, %struct.section*** %12, align 8
  %14 = load %struct.segment*, %struct.segment** %3, align 8
  %15 = getelementptr inbounds %struct.segment, %struct.segment* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call %struct.section** @realloc(%struct.section** %13, i32 %19)
  %21 = load %struct.segment*, %struct.segment** %3, align 8
  %22 = getelementptr inbounds %struct.segment, %struct.segment* %21, i32 0, i32 1
  store %struct.section** %20, %struct.section*** %22, align 8
  %23 = load %struct.segment*, %struct.segment** %3, align 8
  %24 = getelementptr inbounds %struct.segment, %struct.segment* %23, i32 0, i32 1
  %25 = load %struct.section**, %struct.section*** %24, align 8
  %26 = icmp eq %struct.section** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.segment*, %struct.segment** %3, align 8
  %32 = getelementptr inbounds %struct.segment, %struct.segment* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %71, %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load %struct.segment*, %struct.segment** %3, align 8
  %40 = getelementptr inbounds %struct.segment, %struct.segment* %39, i32 0, i32 1
  %41 = load %struct.section**, %struct.section*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.section*, %struct.section** %41, i64 %44
  %46 = load %struct.section*, %struct.section** %45, align 8
  store %struct.section* %46, %struct.section** %5, align 8
  %47 = load %struct.section*, %struct.section** %4, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.section*, %struct.section** %5, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = load %struct.section*, %struct.section** %4, align 8
  %56 = load %struct.segment*, %struct.segment** %3, align 8
  %57 = getelementptr inbounds %struct.segment, %struct.segment* %56, i32 0, i32 1
  %58 = load %struct.section**, %struct.section*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.section*, %struct.section** %58, i64 %60
  store %struct.section* %55, %struct.section** %61, align 8
  br label %74

62:                                               ; preds = %38
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = load %struct.segment*, %struct.segment** %3, align 8
  %65 = getelementptr inbounds %struct.segment, %struct.segment* %64, i32 0, i32 1
  %66 = load %struct.section**, %struct.section*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.section*, %struct.section** %66, i64 %68
  store %struct.section* %63, %struct.section** %69, align 8
  br label %70

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %35

74:                                               ; preds = %54, %35
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.section*, %struct.section** %4, align 8
  %79 = load %struct.segment*, %struct.segment** %3, align 8
  %80 = getelementptr inbounds %struct.segment, %struct.segment* %79, i32 0, i32 1
  %81 = load %struct.section**, %struct.section*** %80, align 8
  %82 = getelementptr inbounds %struct.section*, %struct.section** %81, i64 0
  store %struct.section* %78, %struct.section** %82, align 8
  br label %83

83:                                               ; preds = %77, %74
  ret void
}

declare dso_local %struct.section** @realloc(%struct.section**, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
