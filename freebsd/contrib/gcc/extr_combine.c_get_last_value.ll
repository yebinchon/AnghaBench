; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_get_last_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_get_last_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SUBREG = common dso_local global i64 0, align 8
@reg_stat = common dso_local global %struct.TYPE_9__* null, align 8
@label_tick = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_10__* null, align 8
@subst_low_cuid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_last_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_last_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @GET_CODE(i64 %6)
  %8 = load i64, i64* @SUBREG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @subreg_lowpart_p(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @GET_MODE(i64 %15)
  %17 = call i64 @GET_MODE_SIZE(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @SUBREG_REG(i64 %18)
  %20 = call i32 @GET_MODE(i64 %19)
  %21 = call i64 @GET_MODE_SIZE(i32 %20)
  %22 = icmp sle i64 %17, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @SUBREG_REG(i64 %24)
  %26 = call i64 @get_last_value(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @GET_MODE(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @gen_lowpart(i32 %30, i64 %31)
  store i64 %32, i64* %2, align 8
  br label %127

33:                                               ; preds = %23, %14, %10, %1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @REG_P(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i64 0, i64* %2, align 8
  br label %127

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @REGNO(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @label_tick, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @REG_N_SETS(i32 %63)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ENTRY_BLOCK_PTR, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @REGNO_REG_SET_P(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66, %62, %58, %38
  store i64 0, i64* %2, align 8
  br label %127

79:                                               ; preds = %66, %49
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @INSN_CUID(i32 %85)
  %87 = load i64, i64* @subst_low_cuid, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i64 0, i64* %2, align 8
  br label %127

90:                                               ; preds = %79
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %92 = load i32, i32* %4, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @get_last_value_validate(i64* %5, i32 %96, i64 %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i64, i64* %5, align 8
  store i64 %106, i64* %2, align 8
  br label %127

107:                                              ; preds = %90
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @copy_rtx(i64 %108)
  store i64 %109, i64* %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @reg_stat, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @get_last_value_validate(i64* %5, i32 %115, i64 %121, i32 1)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i64, i64* %5, align 8
  store i64 %125, i64* %2, align 8
  br label %127

126:                                              ; preds = %107
  store i64 0, i64* %2, align 8
  br label %127

127:                                              ; preds = %126, %124, %105, %89, %78, %37, %28
  %128 = load i64, i64* %2, align 8
  ret i64 %128
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @subreg_lowpart_p(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @REG_N_SETS(i32) #1

declare dso_local i64 @REGNO_REG_SET_P(i32, i32) #1

declare dso_local i64 @INSN_CUID(i32) #1

declare dso_local i64 @get_last_value_validate(i64*, i32, i64, i32) #1

declare dso_local i64 @copy_rtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
