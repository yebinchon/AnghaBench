; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e04.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8, i32 }
%struct.TYPE_4__ = type { i32 }

@NUM_ADDRESS_REGS = common dso_local global i32 0, align 4
@i386_regtab = common dso_local global i64 0, align 8
@REGNAM_AL = common dso_local global i64 0, align 8
@i = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cur_token = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@intel_parser = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_e04 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_e04() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = call i32 (...) @intel_e05()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i32 0, i32* %1, align 4
  br label %37

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* @i386_regtab, align 8
  %16 = load i64, i64* @REGNAM_AL, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i, i32 0, i32 0), align 8
  br label %18

18:                                               ; preds = %14, %10, %7
  %19 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 4
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %31

23:                                               ; preds = %18
  %24 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 4
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %37

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_parser, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 1), align 4
  %34 = call i32 @strcat(i32 %32, i32 %33)
  %35 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cur_token, i32 0, i32 0), align 4
  %36 = call i32 @intel_match_token(i8 signext %35)
  br label %3

37:                                               ; preds = %29, %6
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @intel_e05(...) #1

declare dso_local i32 @strcat(i32, i32) #1

declare dso_local i32 @intel_match_token(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
