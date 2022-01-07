; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_add_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_add_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@REX_OPCODE = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@i = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REX_PREFIX = common dso_local global i64 0, align 8
@REX_W = common dso_local global i32 0, align 4
@REX_R = common dso_local global i32 0, align 4
@REX_X = common dso_local global i32 0, align 4
@REX_B = common dso_local global i32 0, align 4
@SEG_PREFIX = common dso_local global i32 0, align 4
@LOCKREP_PREFIX = common dso_local global i32 0, align 4
@WAIT_PREFIX = common dso_local global i32 0, align 4
@ADDR_PREFIX = common dso_local global i32 0, align 4
@DATA_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"same type of prefix used twice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @add_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_prefix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @REX_OPCODE, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @REX_OPCODE, align 4
  %11 = add i32 %10, 16
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = load i64, i64* @flag_code, align 8
  %15 = load i64, i64* @CODE_64BIT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %19 = load i64, i64* @REX_PREFIX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @REX_W, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %17
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %29 = load i64, i64* @REX_PREFIX, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REX_R, align 4
  %33 = load i32, i32* @REX_X, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @REX_B, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @REX_R, align 4
  %42 = load i32, i32* @REX_X, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @REX_B, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39, %17
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39, %27
  %50 = load i64, i64* @REX_PREFIX, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %13, %8, %1
  %53 = load i32, i32* %2, align 4
  switch i32 %53, label %54 [
    i32 138, label %56
    i32 136, label %56
    i32 135, label %56
    i32 134, label %56
    i32 132, label %56
    i32 128, label %56
    i32 129, label %58
    i32 130, label %58
    i32 131, label %59
    i32 133, label %61
    i32 139, label %63
    i32 137, label %65
  ]

54:                                               ; preds = %52
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %52, %52, %52, %52, %52, %52
  %57 = load i32, i32* @SEG_PREFIX, align 4
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %52, %52
  store i32 2, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %58
  %60 = load i32, i32* @LOCKREP_PREFIX, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @WAIT_PREFIX, align 4
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @ADDR_PREFIX, align 4
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %52
  %66 = load i32, i32* @DATA_PREFIX, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %63, %61, %59, %56
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 1), align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 1), align 8
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %2, align 4
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i, i32 0, i32 0), align 8
  %92 = load i32, i32* %4, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %90
  store i32 %96, i32* %94, align 4
  br label %100

97:                                               ; preds = %76
  %98 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @as_bad(i32 %98)
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @as_bad(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
