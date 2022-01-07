; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_chunkify_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_chunkify_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i64, %struct.constant_pool* }

@NULL_RTX = common dso_local global i64 0, align 8
@JUMP_INSN = common dso_local global i64 0, align 8
@BARRIER = common dso_local global i64 0, align 8
@CODE_LABEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@INSN = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_RELOAD_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_pool*)* @s390_chunkify_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_chunkify_cancel(%struct.constant_pool* %0) #0 {
  %2 = alloca %struct.constant_pool*, align 8
  %3 = alloca %struct.constant_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.constant_pool*, align 8
  store %struct.constant_pool* %0, %struct.constant_pool** %2, align 8
  store %struct.constant_pool* null, %struct.constant_pool** %3, align 8
  %10 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  store %struct.constant_pool* %10, %struct.constant_pool** %3, align 8
  br label %11

11:                                               ; preds = %93, %1
  %12 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %13 = icmp ne %struct.constant_pool* %12, null
  br i1 %13, label %14, label %97

14:                                               ; preds = %11
  %15 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %16 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @PREV_INSN(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @PREV_INSN(i64 %22)
  br label %26

24:                                               ; preds = %14
  %25 = load i64, i64* @NULL_RTX, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i64 [ %23, %21 ], [ %25, %24 ]
  store i64 %27, i64* %6, align 8
  %28 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %29 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @NEXT_INSN(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @GET_CODE(i64 %35)
  %37 = load i64, i64* @JUMP_INSN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @GET_CODE(i64 %43)
  %45 = load i64, i64* @BARRIER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @CODE_LABEL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @PATTERN(i64 %56)
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @SET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @PATTERN(i64 %62)
  %64 = call i64 @SET_DEST(i64 %63)
  %65 = load i64, i64* @pc_rtx, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @PATTERN(i64 %68)
  %70 = call i64 @SET_SRC(i64 %69)
  %71 = call i64 @GET_CODE(i64 %70)
  %72 = load i64, i64* @LABEL_REF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @PATTERN(i64 %75)
  %77 = call i64 @SET_SRC(i64 %76)
  %78 = call i64 @XEXP(i64 %77, i32 0)
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @remove_insn(i64 %82)
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @remove_insn(i64 %84)
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @remove_insn(i64 %86)
  br label %88

88:                                               ; preds = %81, %74, %67, %61, %55, %50, %47, %42, %39, %34, %26
  %89 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %90 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @remove_insn(i64 %91)
  br label %93

93:                                               ; preds = %88
  %94 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %95 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %94, i32 0, i32 1
  %96 = load %struct.constant_pool*, %struct.constant_pool** %95, align 8
  store %struct.constant_pool* %96, %struct.constant_pool** %3, align 8
  br label %11

97:                                               ; preds = %11
  %98 = call i64 (...) @get_insns()
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %132, %97
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @NEXT_INSN(i64 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @GET_CODE(i64 %105)
  %107 = load i64, i64* @INSN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %132

109:                                              ; preds = %102
  %110 = load i64, i64* %4, align 8
  %111 = call i64 @PATTERN(i64 %110)
  %112 = call i64 @GET_CODE(i64 %111)
  %113 = load i64, i64* @SET, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load i64, i64* %4, align 8
  %117 = call i64 @PATTERN(i64 %116)
  %118 = call i64 @SET_SRC(i64 %117)
  %119 = call i64 @GET_CODE(i64 %118)
  %120 = load i64, i64* @UNSPEC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load i64, i64* %4, align 8
  %124 = call i64 @PATTERN(i64 %123)
  %125 = call i64 @SET_SRC(i64 %124)
  %126 = call i64 @XINT(i64 %125, i32 1)
  %127 = load i64, i64* @UNSPEC_RELOAD_BASE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @remove_insn(i64 %130)
  br label %132

132:                                              ; preds = %129, %122, %115, %109, %102
  %133 = load i64, i64* %8, align 8
  store i64 %133, i64* %4, align 8
  br label %99

134:                                              ; preds = %99
  br label %135

135:                                              ; preds = %138, %134
  %136 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %137 = icmp ne %struct.constant_pool* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %140 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %139, i32 0, i32 1
  %141 = load %struct.constant_pool*, %struct.constant_pool** %140, align 8
  store %struct.constant_pool* %141, %struct.constant_pool** %9, align 8
  %142 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %143 = call i32 @s390_free_pool(%struct.constant_pool* %142)
  %144 = load %struct.constant_pool*, %struct.constant_pool** %9, align 8
  store %struct.constant_pool* %144, %struct.constant_pool** %2, align 8
  br label %135

145:                                              ; preds = %135
  ret void
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @remove_insn(i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i32 @s390_free_pool(%struct.constant_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
