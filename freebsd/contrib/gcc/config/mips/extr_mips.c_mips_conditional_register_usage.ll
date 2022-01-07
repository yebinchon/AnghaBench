; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_conditional_register_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_conditional_register_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_DSP = common dso_local global i32 0, align 4
@DSP_ACC_REG_FIRST = common dso_local global i32 0, align 4
@DSP_ACC_REG_LAST = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i8** null, align 8
@fixed_regs = common dso_local global i8** null, align 8
@TARGET_HARD_FLOAT = common dso_local global i32 0, align 4
@FP_REG_FIRST = common dso_local global i32 0, align 4
@FP_REG_LAST = common dso_local global i32 0, align 4
@ST_REG_FIRST = common dso_local global i32 0, align 4
@ST_REG_LAST = common dso_local global i32 0, align 4
@ISA_HAS_8CC = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@mips_abi = common dso_local global i64 0, align 8
@ABI_64 = common dso_local global i64 0, align 8
@call_really_used_regs = common dso_local global i8** null, align 8
@ABI_N32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_conditional_register_usage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TARGET_DSP, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @DSP_ACC_REG_FIRST, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %23, %8
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @DSP_ACC_REG_LAST, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i8**, i8*** @call_used_regs, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  store i8* inttoptr (i64 1 to i8*), i8** %18, align 8
  %19 = load i8**, i8*** @fixed_regs, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  store i8* inttoptr (i64 1 to i8*), i8** %22, align 8
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %10

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i32, i32* @TARGET_HARD_FLOAT, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @FP_REG_FIRST, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %45, %30
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @FP_REG_LAST, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i8**, i8*** @call_used_regs, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* inttoptr (i64 1 to i8*), i8** %40, align 8
  %41 = load i8**, i8*** @fixed_regs, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* inttoptr (i64 1 to i8*), i8** %44, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* @ST_REG_FIRST, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %63, %48
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @ST_REG_LAST, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8**, i8*** @call_used_regs, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* inttoptr (i64 1 to i8*), i8** %58, align 8
  %59 = load i8**, i8*** @fixed_regs, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* inttoptr (i64 1 to i8*), i8** %62, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %50

66:                                               ; preds = %50
  br label %90

67:                                               ; preds = %27
  %68 = load i32, i32* @ISA_HAS_8CC, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @ST_REG_FIRST, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %85, %70
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @ST_REG_LAST, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i8**, i8*** @call_used_regs, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* inttoptr (i64 1 to i8*), i8** %80, align 8
  %81 = load i8**, i8*** @fixed_regs, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* inttoptr (i64 1 to i8*), i8** %84, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %72

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i64, i64* @TARGET_MIPS16, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %90
  %94 = load i8**, i8*** @call_used_regs, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 18
  store i8* inttoptr (i64 1 to i8*), i8** %95, align 8
  %96 = load i8**, i8*** @fixed_regs, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 18
  store i8* inttoptr (i64 1 to i8*), i8** %97, align 8
  %98 = load i8**, i8*** @call_used_regs, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 19
  store i8* inttoptr (i64 1 to i8*), i8** %99, align 8
  %100 = load i8**, i8*** @fixed_regs, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 19
  store i8* inttoptr (i64 1 to i8*), i8** %101, align 8
  %102 = load i8**, i8*** @call_used_regs, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 20
  store i8* inttoptr (i64 1 to i8*), i8** %103, align 8
  %104 = load i8**, i8*** @fixed_regs, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 20
  store i8* inttoptr (i64 1 to i8*), i8** %105, align 8
  %106 = load i8**, i8*** @call_used_regs, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 21
  store i8* inttoptr (i64 1 to i8*), i8** %107, align 8
  %108 = load i8**, i8*** @fixed_regs, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 21
  store i8* inttoptr (i64 1 to i8*), i8** %109, align 8
  %110 = load i8**, i8*** @call_used_regs, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 22
  store i8* inttoptr (i64 1 to i8*), i8** %111, align 8
  %112 = load i8**, i8*** @fixed_regs, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 22
  store i8* inttoptr (i64 1 to i8*), i8** %113, align 8
  %114 = load i8**, i8*** @call_used_regs, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 23
  store i8* inttoptr (i64 1 to i8*), i8** %115, align 8
  %116 = load i8**, i8*** @fixed_regs, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 23
  store i8* inttoptr (i64 1 to i8*), i8** %117, align 8
  %118 = load i8**, i8*** @call_used_regs, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 26
  store i8* inttoptr (i64 1 to i8*), i8** %119, align 8
  %120 = load i8**, i8*** @fixed_regs, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 26
  store i8* inttoptr (i64 1 to i8*), i8** %121, align 8
  %122 = load i8**, i8*** @call_used_regs, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 27
  store i8* inttoptr (i64 1 to i8*), i8** %123, align 8
  %124 = load i8**, i8*** @fixed_regs, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 27
  store i8* inttoptr (i64 1 to i8*), i8** %125, align 8
  %126 = load i8**, i8*** @call_used_regs, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 30
  store i8* inttoptr (i64 1 to i8*), i8** %127, align 8
  %128 = load i8**, i8*** @fixed_regs, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 30
  store i8* inttoptr (i64 1 to i8*), i8** %129, align 8
  br label %130

130:                                              ; preds = %93, %90
  %131 = load i64, i64* @mips_abi, align 8
  %132 = load i64, i64* @ABI_64, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i32, i32* @FP_REG_FIRST, align 4
  %136 = add nsw i32 %135, 20
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %151, %134
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @FP_REG_FIRST, align 4
  %140 = add nsw i32 %139, 24
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load i8**, i8*** @call_used_regs, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* inttoptr (i64 1 to i8*), i8** %146, align 8
  %147 = load i8**, i8*** @call_really_used_regs, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* inttoptr (i64 1 to i8*), i8** %150, align 8
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %137

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %130
  %156 = load i64, i64* @mips_abi, align 8
  %157 = load i64, i64* @ABI_N32, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %155
  %160 = load i32, i32* @FP_REG_FIRST, align 4
  %161 = add nsw i32 %160, 21
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %176, %159
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @FP_REG_FIRST, align 4
  %165 = add nsw i32 %164, 31
  %166 = icmp sle i32 %163, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load i8**, i8*** @call_used_regs, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* inttoptr (i64 1 to i8*), i8** %171, align 8
  %172 = load i8**, i8*** @call_really_used_regs, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* inttoptr (i64 1 to i8*), i8** %175, align 8
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %5, align 4
  br label %162

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %155
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
