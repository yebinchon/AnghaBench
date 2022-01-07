; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_place_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_place_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.operand_data = type { i64, %struct.operand_data* }
%struct.data = type { i32, i64, %struct.operand_data* }

@odata = common dso_local global %struct.operand_data* null, align 8
@next_operand_number = common dso_local global i64 0, align 8
@odata_end = common dso_local global %struct.operand_data** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*)* @place_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @place_operands(%struct.data* %0) #0 {
  %2 = alloca %struct.data*, align 8
  %3 = alloca %struct.operand_data*, align 8
  %4 = alloca %struct.operand_data*, align 8
  %5 = alloca i32, align 4
  store %struct.data* %0, %struct.data** %2, align 8
  %6 = load %struct.data*, %struct.data** %2, align 8
  %7 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.data*, %struct.data** %2, align 8
  %12 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.operand_data*, %struct.operand_data** @odata, align 8
  store %struct.operand_data* %14, %struct.operand_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %60, %13
  %16 = load %struct.operand_data*, %struct.operand_data** %3, align 8
  %17 = icmp ne %struct.operand_data* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = load %struct.operand_data*, %struct.operand_data** %3, align 8
  %20 = load %struct.data*, %struct.data** %2, align 8
  %21 = getelementptr inbounds %struct.data, %struct.data* %20, i32 0, i32 2
  %22 = load %struct.operand_data*, %struct.operand_data** %21, align 8
  %23 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %22, i64 0
  %24 = call i64 @compare_operands(%struct.operand_data* %19, %struct.operand_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load %struct.operand_data*, %struct.operand_data** %3, align 8
  %28 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %27, i32 0, i32 1
  %29 = load %struct.operand_data*, %struct.operand_data** %28, align 8
  store %struct.operand_data* %29, %struct.operand_data** %4, align 8
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %52
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.data*, %struct.data** %2, align 8
  %33 = getelementptr inbounds %struct.data, %struct.data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %98

37:                                               ; preds = %30
  %38 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %39 = icmp eq %struct.operand_data* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %65

41:                                               ; preds = %37
  %42 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %43 = load %struct.data*, %struct.data** %2, align 8
  %44 = getelementptr inbounds %struct.data, %struct.data* %43, i32 0, i32 2
  %45 = load %struct.operand_data*, %struct.operand_data** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %45, i64 %47
  %49 = call i64 @compare_operands(%struct.operand_data* %42, %struct.operand_data* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %58

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %56 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %55, i32 0, i32 1
  %57 = load %struct.operand_data*, %struct.operand_data** %56, align 8
  store %struct.operand_data* %57, %struct.operand_data** %4, align 8
  br label %30

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %18
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.operand_data*, %struct.operand_data** %3, align 8
  %62 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %61, i32 0, i32 1
  %63 = load %struct.operand_data*, %struct.operand_data** %62, align 8
  store %struct.operand_data* %63, %struct.operand_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %15

64:                                               ; preds = %15
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i64, i64* @next_operand_number, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = load %struct.data*, %struct.data** %2, align 8
  %71 = getelementptr inbounds %struct.data, %struct.data* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %93, %65
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.data*, %struct.data** %2, align 8
  %75 = getelementptr inbounds %struct.data, %struct.data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.data*, %struct.data** %2, align 8
  %80 = getelementptr inbounds %struct.data, %struct.data* %79, i32 0, i32 2
  %81 = load %struct.operand_data*, %struct.operand_data** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %81, i64 %83
  store %struct.operand_data* %84, %struct.operand_data** %4, align 8
  %85 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %86 = load %struct.operand_data**, %struct.operand_data*** @odata_end, align 8
  store %struct.operand_data* %85, %struct.operand_data** %86, align 8
  %87 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %88 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %87, i32 0, i32 1
  store %struct.operand_data** %88, %struct.operand_data*** @odata_end, align 8
  %89 = load i64, i64* @next_operand_number, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* @next_operand_number, align 8
  %91 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %92 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %72

96:                                               ; preds = %72
  %97 = load %struct.operand_data**, %struct.operand_data*** @odata_end, align 8
  store %struct.operand_data* null, %struct.operand_data** %97, align 8
  br label %104

98:                                               ; preds = %36
  %99 = load %struct.operand_data*, %struct.operand_data** %3, align 8
  %100 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.data*, %struct.data** %2, align 8
  %103 = getelementptr inbounds %struct.data, %struct.data* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %96, %10
  ret void
}

declare dso_local i64 @compare_operands(%struct.operand_data*, %struct.operand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
