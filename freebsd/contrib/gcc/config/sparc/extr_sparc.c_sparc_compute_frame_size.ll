; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_compute_frame_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_compute_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@TARGET_ARCH64 = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@TARGET_V9 = common dso_local global i64 0, align 8
@num_gfregs = common dso_local global i32 0, align 4
@apparent_fsize = common dso_local global i32 0, align 4
@actual_fsize = common dso_local global i32 0, align 4
@STARTING_FRAME_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparc_compute_frame_size(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @current_function_outgoing_args_size, align 4
  %9 = load i32, i32* @current_function_decl, align 4
  %10 = call i32 @REG_PARM_STACK_SPACE(i32 %9)
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i64, i64* @TARGET_ARCH64, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i64*, i64** @regs_ever_live, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32*, i32** @call_used_regs, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %25, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %15

39:                                               ; preds = %15
  br label %82

40:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %78, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load i64*, i64** @regs_ever_live, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32*, i32** @call_used_regs, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51, %44
  %59 = load i64*, i64** @regs_ever_live, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load i32*, i32** @call_used_regs, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66, %51
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %66, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %7, align 4
  br label %41

81:                                               ; preds = %41
  br label %82

82:                                               ; preds = %81, %39
  store i32 32, i32* %7, align 4
  br label %83

83:                                               ; preds = %124, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* @TARGET_V9, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 96, i32 64
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %83
  %91 = load i64*, i64** @regs_ever_live, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32*, i32** @call_used_regs, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %97, %90
  %105 = load i64*, i64** @regs_ever_live, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i32*, i32** @call_used_regs, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %112, %97
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %112, %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %7, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* @num_gfregs, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i64, i64* %3, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @current_function_outgoing_args_size, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* @apparent_fsize, align 4
  store i32 0, i32* @actual_fsize, align 4
  br label %157

141:                                              ; preds = %137, %134, %131, %127
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* @STARTING_FRAME_OFFSET, align 8
  %144 = sub nsw i64 %142, %143
  %145 = add nsw i64 %144, 7
  %146 = and i64 %145, -8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* @apparent_fsize, align 4
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 %148, 4
  %150 = load i32, i32* @apparent_fsize, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* @apparent_fsize, align 4
  %152 = load i32, i32* @apparent_fsize, align 4
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 7
  %155 = and i32 %154, -8
  %156 = add nsw i32 %152, %155
  store i32 %156, i32* @actual_fsize, align 4
  br label %157

157:                                              ; preds = %141, %140
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* %3, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160, %157
  %164 = load i32, i32* @current_function_decl, align 4
  %165 = call i64 @FIRST_PARM_OFFSET(i32 %164)
  %166 = load i32, i32* @actual_fsize, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* @actual_fsize, align 4
  br label %170

170:                                              ; preds = %163, %160
  %171 = load i32, i32* @actual_fsize, align 4
  %172 = call i64 @SPARC_STACK_ALIGN(i32 %171)
  ret i64 %172
}

declare dso_local i32 @REG_PARM_STACK_SPACE(i32) #1

declare dso_local i64 @FIRST_PARM_OFFSET(i32) #1

declare dso_local i64 @SPARC_STACK_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
