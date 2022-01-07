; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_push_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_push_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8* }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"base register nums are over 3 bit\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@BAD_ARGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do16_push_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do16_push_pop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @skip_whitespace(i8* %6)
  %8 = load i32, i32* @REG_TYPE_SCORE, align 4
  %9 = call i32 @reg_required_here(i8** %2, i32 8, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @FAIL, align 8
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = call i32 @skip_past_comma(i8** %2)
  %15 = load i64, i64* @FAIL, align 8
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %144

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = icmp sge i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %25 = and i32 %24, -4097
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 7
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %29 = or i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 91
  br i1 %33, label %34, label %142

34:                                               ; preds = %23
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @skip_whitespace(i8* %37)
  %39 = load i32, i32* @REG_TYPE_SCORE, align 4
  %40 = call i32 @reg_required_here(i8** %2, i32 4, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* @FAIL, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %144

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 7
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 8
  br label %53

53:                                               ; preds = %51, %48
  br label %144

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @skip_whitespace(i8* %56)
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %2, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 93
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @end_of_line(i8* %64)
  %66 = load i64, i64* @FAIL, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %55
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 8
  br label %74

74:                                               ; preds = %72, %69
  br label %144

75:                                               ; preds = %63
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %77 = and i32 %76, 15
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 15
  %86 = or i32 %85, 16
  %87 = shl i32 %86, 20
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 7
  %91 = shl i32 %90, 15
  %92 = or i32 %87, %91
  %93 = or i32 %92, 32
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %109

96:                                               ; preds = %79
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 15
  %100 = shl i32 %99, 20
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %102 = ashr i32 %101, 4
  %103 = and i32 %102, 7
  %104 = shl i32 %103, 15
  %105 = or i32 %100, %104
  %106 = or i32 %105, 32
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %109

109:                                              ; preds = %96, %82
  br label %141

110:                                              ; preds = %75
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 15
  %117 = or i32 %116, 16
  %118 = shl i32 %117, 20
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %120 = ashr i32 %119, 4
  %121 = and i32 %120, 7
  %122 = shl i32 %121, 15
  %123 = or i32 %118, %122
  %124 = or i32 %123, 32736
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %140

127:                                              ; preds = %110
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 15
  %131 = shl i32 %130, 20
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %133 = ashr i32 %132, 4
  %134 = and i32 %133, 7
  %135 = shl i32 %134, 15
  %136 = or i32 %131, %135
  %137 = or i32 %136, 32736
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %140

140:                                              ; preds = %127, %113
  br label %141

141:                                              ; preds = %140, %109
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 8
  br label %144

142:                                              ; preds = %23
  %143 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %143, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 8
  br label %144

144:                                              ; preds = %18, %44, %53, %74, %142, %141
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
