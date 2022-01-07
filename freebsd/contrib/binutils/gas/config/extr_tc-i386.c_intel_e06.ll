; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e06.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@NUM_ADDRESS_REGS = common dso_local global i32 0, align 4
@cur_token = common dso_local global %struct.TYPE_6__ zeroinitializer, align 1
@intel_parser = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@T_SHL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@T_SHR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@i386_regtab = common dso_local global i64 0, align 8
@REGNAM_AL = common dso_local global i64 0, align 8
@i = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_e06 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_e06() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %5 = xor i32 %4, -1
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = call i32 (...) @intel_e09()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %72

10:                                               ; preds = %6
  %11 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 42
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %14, %10
  %23 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_parser, i32 0, i32 0), align 4
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %28 = call i32 @strcat(i32 %26, i8* %27)
  br label %50

29:                                               ; preds = %18
  %30 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @T_SHL, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_parser, i32 0, i32 0), align 4
  %37 = call i32 @strcat(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %49

38:                                               ; preds = %29
  %39 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @T_SHR, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_parser, i32 0, i32 0), align 4
  %46 = call i32 @strcat(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %48

47:                                               ; preds = %38
  br label %59

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %52 = call i32 @intel_match_token(i8 signext %51)
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = xor i32 %56, -1
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %50
  br label %6

59:                                               ; preds = %47
  %60 = load i32, i32* %2, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* @i386_regtab, align 8
  %68 = load i64, i64* @REGNAM_AL, align 8
  %69 = add nsw i64 %67, %68
  %70 = add nsw i64 %69, 2
  store i64 %70, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i, i32 0, i32 0), align 8
  br label %71

71:                                               ; preds = %66, %62, %59
  store i32 1, i32* %1, align 4
  br label %72

72:                                               ; preds = %71, %9
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @intel_e09(...) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @intel_match_token(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
