; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_libcall_dead_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_libcall_dead_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propagate_block_info = type { i32 }

@SUBREG = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.propagate_block_info*, i64, i64)* @libcall_dead_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libcall_dead_p(%struct.propagate_block_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.propagate_block_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.propagate_block_info* %0, %struct.propagate_block_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @single_set(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %123

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @SET_SRC(i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @REG_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @GET_CODE(i64 %24)
  %26 = load i64, i64* @SUBREG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %122

28:                                               ; preds = %23, %17
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @XEXP(i64 %29, i32 0)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %42, %28
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @CALL_P(i64 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @NEXT_INSN(i64 %43)
  store i64 %44, i64* %10, align 8
  br label %31

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %124

50:                                               ; preds = %45
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @PATTERN(i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @PARALLEL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %50
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @XVECLEN(i64 %58, i32 0)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %81, %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @XVECEXP(i64 %65, i32 0, i32 %66)
  %68 = call i64 @GET_CODE(i64 %67)
  %69 = load i64, i64* @SET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @XVECEXP(i64 %72, i32 0, i32 %73)
  %75 = call i64 @SET_SRC(i64 %74)
  %76 = call i64 @GET_CODE(i64 %75)
  %77 = load i64, i64* @CALL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %84

80:                                               ; preds = %71, %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %12, align 4
  br label %61

84:                                               ; preds = %79, %61
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %124

88:                                               ; preds = %84
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @XVECEXP(i64 %89, i32 0, i32 %90)
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %88, %50
  %93 = load %struct.propagate_block_info*, %struct.propagate_block_info** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @REG_NOTES(i64 %95)
  %97 = call i32 @insn_dead_p(%struct.propagate_block_info* %93, i64 %94, i32 1, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %124

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %120, %110, %100
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @PREV_INSN(i64 %102)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @INSN_P(i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %101

111:                                              ; preds = %106
  %112 = load %struct.propagate_block_info*, %struct.propagate_block_info** %5, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @PATTERN(i64 %113)
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @REG_NOTES(i64 %115)
  %117 = call i32 @insn_dead_p(%struct.propagate_block_info* %112, i64 %114, i32 0, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %124

120:                                              ; preds = %111
  br label %101

121:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %124

122:                                              ; preds = %23
  br label %123

123:                                              ; preds = %122, %3
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %121, %119, %99, %87, %49
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @insn_dead_p(%struct.propagate_block_info*, i64, i32, i32) #1

declare dso_local i32 @REG_NOTES(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @INSN_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
