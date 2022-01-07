; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e05.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@NUM_ADDRESS_REGS = common dso_local global i32 0, align 4
@cur_token = common dso_local global %struct.TYPE_6__ zeroinitializer, align 1
@intel_parser = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@i386_regtab = common dso_local global i64 0, align 8
@REGNAM_AL = common dso_local global i64 0, align 8
@i = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_e05 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_e05() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %5 = xor i32 %4, -1
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %38, %0
  %7 = call i32 (...) @intel_e06()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %52

10:                                               ; preds = %6
  %11 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 38
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 124
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 94
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
  br label %30

29:                                               ; preds = %18
  br label %39

30:                                               ; preds = %22
  %31 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 1
  %32 = call i32 @intel_match_token(i8 signext %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %30
  br label %6

39:                                               ; preds = %29
  %40 = load i32, i32* %2, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* @i386_regtab, align 8
  %48 = load i64, i64* @REGNAM_AL, align 8
  %49 = add nsw i64 %47, %48
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %46, %42, %39
  store i32 1, i32* %1, align 4
  br label %52

52:                                               ; preds = %51, %9
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @intel_e06(...) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @intel_match_token(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
