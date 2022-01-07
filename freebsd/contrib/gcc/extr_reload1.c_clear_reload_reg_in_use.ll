; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_clear_reload_reg_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_clear_reload_reg_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@hard_regno_nregs = common dso_local global i32** null, align 8
@reload_reg_used = common dso_local global i32 0, align 4
@reload_reg_used_in_input_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_inpaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_output_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_outaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_op_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr_reload = common dso_local global i32 0, align 4
@reload_reg_used_in_other_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_input = common dso_local global i32* null, align 8
@reload_reg_used_in_output = common dso_local global i32* null, align 8
@reload_reg_used_in_insn = common dso_local global i32 0, align 4
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @clear_reload_reg_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_reload_reg_in_use(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32**, i32*** @hard_regno_nregs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %64 [
    i32 128, label %29
    i32 136, label %30
    i32 138, label %35
    i32 129, label %40
    i32 131, label %45
    i32 133, label %50
    i32 134, label %51
    i32 132, label %52
    i32 137, label %53
    i32 130, label %58
    i32 135, label %63
  ]

29:                                               ; preds = %4
  store i32* @reload_reg_used, i32** %16, align 8
  br label %66

30:                                               ; preds = %4
  %31 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %16, align 8
  br label %66

35:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %36 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %16, align 8
  br label %66

40:                                               ; preds = %4
  %41 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %16, align 8
  br label %66

45:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %46 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %16, align 8
  br label %66

50:                                               ; preds = %4
  store i32* @reload_reg_used_in_op_addr, i32** %16, align 8
  br label %66

51:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  store i32* @reload_reg_used_in_op_addr_reload, i32** %16, align 8
  br label %66

52:                                               ; preds = %4
  store i32* @reload_reg_used_in_other_addr, i32** %16, align 8
  store i32 1, i32* %15, align 4
  br label %66

53:                                               ; preds = %4
  %54 = load i32*, i32** @reload_reg_used_in_input, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %16, align 8
  br label %66

58:                                               ; preds = %4
  %59 = load i32*, i32** @reload_reg_used_in_output, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %16, align 8
  br label %66

63:                                               ; preds = %4
  store i32* @reload_reg_used_in_insn, i32** %16, align 8
  br label %66

64:                                               ; preds = %4
  %65 = call i32 (...) @gcc_unreachable()
  br label %66

66:                                               ; preds = %64, %63, %58, %53, %52, %51, %50, %45, %40, %35, %30, %29
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %159

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @n_reloads, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %155, %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %158

82:                                               ; preds = %79
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %154

91:                                               ; preds = %82
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %154

103:                                              ; preds = %94, %91
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %154

111:                                              ; preds = %103
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @true_regnum(i64 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32**, i32*** @hard_regno_nregs, align 8
  %121 = load i32, i32* %17, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %119, %132
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ule i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %111
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %137, %111
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %151, %147, %143
  br label %154

154:                                              ; preds = %153, %103, %94, %82
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %13, align 4
  br label %79

158:                                              ; preds = %79
  br label %159

159:                                              ; preds = %158, %73
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %170, %159
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @CLEAR_HARD_REG_BIT(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %161

173:                                              ; preds = %161
  ret void
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @true_regnum(i64) #1

declare dso_local i32 @CLEAR_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
