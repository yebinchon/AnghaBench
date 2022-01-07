; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_compare_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_compare_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.operand_data = type { i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.operand_data*, %struct.operand_data*)* @compare_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_operands(%struct.operand_data* %0, %struct.operand_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.operand_data*, align 8
  %5 = alloca %struct.operand_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.operand_data* %0, %struct.operand_data** %4, align 8
  store %struct.operand_data* %1, %struct.operand_data** %5, align 8
  %8 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %9 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.operand_data*, %struct.operand_data** %5, align 8
  %16 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %21
  %28 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %29 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.operand_data*, %struct.operand_data** %5, align 8
  %36 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %75

47:                                               ; preds = %41
  %48 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %49 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.operand_data*, %struct.operand_data** %5, align 8
  %52 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %75

56:                                               ; preds = %47
  %57 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %58 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.operand_data*, %struct.operand_data** %5, align 8
  %61 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %75

65:                                               ; preds = %56
  %66 = load %struct.operand_data*, %struct.operand_data** %4, align 8
  %67 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.operand_data*, %struct.operand_data** %5, align 8
  %70 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %75

74:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73, %64, %55, %46, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
