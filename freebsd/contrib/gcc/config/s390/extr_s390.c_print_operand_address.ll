; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_operand_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_operand_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_address = type { i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"cannot decompose address\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%s,%s)\00", align 1
@reg_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_operand_address(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s390_address, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @s390_decompose_address(i32 %6, %struct.s390_address* %5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @REGNO(i64 %15)
  %17 = call i32 @REGNO_OK_FOR_BASE_P(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @REGNO(i64 %25)
  %27 = call i32 @REGNO_OK_FOR_INDEX_P(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %13, %2
  %30 = call i32 @output_operand_lossage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23, %19
  %32 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @output_addr_const(i32* %36, i64 %38)
  br label %43

40:                                               ; preds = %31
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i8**, i8*** @reg_names, align 8
  %54 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @REGNO(i64 %55)
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** @reg_names, align 8
  %60 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @REGNO(i64 %61)
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %64)
  br label %80

66:                                               ; preds = %47, %43
  %67 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32*, i32** %3, align 8
  %72 = load i8**, i8*** @reg_names, align 8
  %73 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @REGNO(i64 %74)
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %70, %66
  br label %80

80:                                               ; preds = %79, %51
  ret void
}

declare dso_local i32 @s390_decompose_address(i32, %struct.s390_address*) #1

declare dso_local i32 @REGNO_OK_FOR_BASE_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @REGNO_OK_FOR_INDEX_P(i64) #1

declare dso_local i32 @output_operand_lossage(i8*) #1

declare dso_local i32 @output_addr_const(i32*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
