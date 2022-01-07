; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_arc_insert_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_arc_insert_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_operand = type { i32, i32, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 }
%struct.arc_operand_value = type { i32 }

@ARC_OPERAND_SIGNED = common dso_local global i32 0, align 4
@ARC_OPERAND_SIGNOPT = common dso_local global i32 0, align 4
@ARC_OPERAND_NEGATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8*, i32)* @arc_insert_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arc_insert_operand(i64 %0, %struct.arc_operand* %1, i32 %2, %struct.arc_operand_value* %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.arc_operand*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.arc_operand_value*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i64 %0, i64* %8, align 8
  store %struct.arc_operand* %1, %struct.arc_operand** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.arc_operand_value* %3, %struct.arc_operand_value** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %20 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %96

23:                                               ; preds = %7
  %24 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %25 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARC_OPERAND_SIGNED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %23
  %31 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %32 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ARC_OPERAND_SIGNOPT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %39 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  br label %52

44:                                               ; preds = %30
  %45 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %46 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %54 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = shl i32 1, %56
  %58 = sub nsw i32 0, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %15, align 8
  br label %67

60:                                               ; preds = %23
  %61 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %62 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %69 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ARC_OPERAND_NEGATIVE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i64, i64* %12, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %17, align 8
  br label %79

77:                                               ; preds = %67
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83, %79
  %88 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @as_warn_value_out_of_range(i32 %88, i64 %89, i64 %90, i64 %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %83
  br label %96

96:                                               ; preds = %95, %7
  %97 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %98 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %97, i32 0, i32 2
  %99 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %98, align 8
  %100 = icmp ne i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* %99, null
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  store i8* null, i8** %18, align 8
  %102 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %103 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %102, i32 0, i32 2
  %104 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.arc_operand_value*, %struct.arc_operand_value** %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i64 %104(i64 %105, %struct.arc_operand* %106, i32 %107, %struct.arc_operand_value* %108, i64 %109, i8** %18)
  store i64 %110, i64* %8, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i8*, i8** %18, align 8
  %115 = call i32 @as_warn(i8* %114)
  br label %116

116:                                              ; preds = %113, %101
  br label %132

117:                                              ; preds = %96
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %120 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = and i64 %118, %124
  %126 = load %struct.arc_operand*, %struct.arc_operand** %9, align 8
  %127 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = shl i64 %125, %128
  %130 = load i64, i64* %8, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %8, align 8
  br label %132

132:                                              ; preds = %117, %116
  %133 = load i64, i64* %8, align 8
  ret i64 %133
}

declare dso_local i32 @as_warn_value_out_of_range(i32, i64, i64, i64, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
