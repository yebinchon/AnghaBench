; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_check_eliminable_occurrences.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_check_eliminable_occurrences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i64 }

@REG = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @check_eliminable_occurrences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_eliminable_occurrences(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.elim_table*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %89

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @GET_CODE(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @REG, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @REGNO(i64 %18)
  %20 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %23, %struct.elim_table** %6, align 8
  br label %24

24:                                               ; preds = %40, %22
  %25 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %26 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %27 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %28 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %26, i64 %27
  %29 = icmp ult %struct.elim_table* %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %32 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %38 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.elim_table*, %struct.elim_table** %6, align 8
  %42 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %41, i32 1
  store %struct.elim_table* %42, %struct.elim_table** %6, align 8
  br label %24

43:                                               ; preds = %24
  br label %89

44:                                               ; preds = %17, %11
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @GET_RTX_FORMAT(i32 %45)
  store i8* %46, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %84, %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @GET_RTX_LENGTH(i32 %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 101
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @XEXP(i64 %58, i32 %59)
  call void @check_eliminable_occurrences(i64 %60)
  br label %83

61:                                               ; preds = %52
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 69
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @XVECLEN(i64 %69, i32 %70)
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i64, i64* %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @XVECEXP(i64 %74, i32 %75, i32 %76)
  call void @check_eliminable_occurrences(i64 %77)
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %67

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %3, align 8
  br label %47

89:                                               ; preds = %10, %43, %47
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
