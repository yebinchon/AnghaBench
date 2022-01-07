; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_set_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propagate_block_info = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@REG_INC = common dso_local global i64 0, align 8
@PROP_ASM_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.propagate_block_info*, i64, i64)* @mark_set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_set_regs(%struct.propagate_block_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.propagate_block_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.propagate_block_info* %0, %struct.propagate_block_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* @NULL_RTX, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.propagate_block_info*, %struct.propagate_block_info** %4, align 8
  %15 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @REG_NOTES(i64 %20)
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %48, %19
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @REG_NOTE_KIND(i64 %26)
  %28 = load i64, i64* @REG_INC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.propagate_block_info*, %struct.propagate_block_info** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @XEXP(i64 %32, i32 0)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @GET_CODE(i64 %34)
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @COND_EXEC_TEST(i64 %38)
  br label %42

40:                                               ; preds = %30
  %41 = load i64, i64* @NULL_RTX, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i64 [ %39, %37 ], [ %41, %40 ]
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mark_set_1(%struct.propagate_block_info* %31, i32 128, i64 %33, i64 %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @XEXP(i64 %49, i32 1)
  store i64 %50, i64* %8, align 8
  br label %22

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51, %3
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @GET_CODE(i64 %54)
  store i32 %55, i32* %9, align 4
  switch i32 %55, label %143 [
    i32 128, label %56
    i32 131, label %66
    i32 130, label %75
    i32 129, label %80
  ]

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @XEXP(i64 %57, i32 1)
  %59 = call i32 @GET_CODE(i64 %58)
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @PROP_ASM_SCAN, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %53, %65
  %67 = load %struct.propagate_block_info*, %struct.propagate_block_info** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @SET_DEST(i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @mark_set_1(%struct.propagate_block_info* %67, i32 %68, i64 %70, i64 %71, i64 %72, i32 %73)
  br label %144

75:                                               ; preds = %53
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @COND_EXEC_TEST(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @COND_EXEC_CODE(i64 %78)
  store i64 %79, i64* %5, align 8
  br label %53

80:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %139, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @XVECLEN(i64 %83, i32 0)
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %142

86:                                               ; preds = %81
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @XVECEXP(i64 %87, i32 0, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @GET_CODE(i64 %90)
  store i32 %91, i32* %9, align 4
  switch i32 %91, label %137 [
    i32 130, label %92
    i32 128, label %112
    i32 131, label %123
    i32 132, label %133
  ]

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @gcc_assert(i32 %96)
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @COND_EXEC_TEST(i64 %98)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @COND_EXEC_CODE(i64 %100)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @GET_CODE(i64 %102)
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %113

106:                                              ; preds = %92
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @GET_CODE(i64 %107)
  %109 = icmp eq i32 %108, 131
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %124

111:                                              ; preds = %106
  br label %138

112:                                              ; preds = %86
  br label %113

113:                                              ; preds = %112, %105
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @XEXP(i64 %114, i32 1)
  %116 = call i32 @GET_CODE(i64 %115)
  %117 = icmp eq i32 %116, 132
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @PROP_ASM_SCAN, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %86, %122
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.propagate_block_info*, %struct.propagate_block_info** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @SET_DEST(i64 %127)
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @mark_set_1(%struct.propagate_block_info* %125, i32 %126, i64 %128, i64 %129, i64 %130, i32 %131)
  br label %138

133:                                              ; preds = %86
  %134 = load i32, i32* @PROP_ASM_SCAN, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %138

137:                                              ; preds = %86
  br label %138

138:                                              ; preds = %137, %133, %124, %111
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %81

142:                                              ; preds = %81
  br label %144

143:                                              ; preds = %53
  br label %144

144:                                              ; preds = %66, %143, %142
  ret void
}

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i32 @mark_set_1(%struct.propagate_block_info*, i32, i64, i64, i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @COND_EXEC_TEST(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @COND_EXEC_CODE(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
