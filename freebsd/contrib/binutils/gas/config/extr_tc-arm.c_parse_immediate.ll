; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64, i32 }

@GE_OPT_PREFIX = common dso_local global i32 0, align 4
@GE_IMM_PREFIX = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"constant expression required\00", align 1
@inst = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"immediate value out of range\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32, i64)* @parse_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_immediate(i8** %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @GE_OPT_PREFIX, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @GE_IMM_PREFIX, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @my_get_expression(%struct.TYPE_4__* %12, i8** %13, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @O_constant, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 0), align 8
  %29 = load i32, i32* @FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %48

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 0), align 8
  %42 = load i32, i32* @FAIL, align 4
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @SUCCESS, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %40, %27
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @my_get_expression(%struct.TYPE_4__*, i8**, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
