; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_compute_reloc_file_positions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_compute_reloc_file_positions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@EXEC_P = common dso_local global i32 0, align 4
@D_PAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ecoff_compute_reloc_file_positions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_compute_reloc_file_positions(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call %struct.TYPE_12__* @ecoff_backend(%struct.TYPE_9__* %9)
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call i32 @ecoff_compute_section_file_positions(%struct.TYPE_9__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %17
  %24 = load i64, i64* @TRUE, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call %struct.TYPE_11__* @ecoff_data(%struct.TYPE_9__* %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %6, align 8
  br label %35

35:                                               ; preds = %62, %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %61

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %46, %43
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %6, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = call %struct.TYPE_11__* @ecoff_data(%struct.TYPE_9__* %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EXEC_P, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %66
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @D_PAGED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = call %struct.TYPE_12__* @ecoff_backend(%struct.TYPE_9__* %88)
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %87, %91
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = call %struct.TYPE_12__* @ecoff_backend(%struct.TYPE_9__* %94)
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = xor i32 %98, -1
  %100 = and i32 %93, %99
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %86, %79, %66
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = call %struct.TYPE_11__* @ecoff_data(%struct.TYPE_9__* %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_12__* @ecoff_backend(%struct.TYPE_9__*) #1

declare dso_local i32 @ecoff_compute_section_file_positions(%struct.TYPE_9__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_11__* @ecoff_data(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
