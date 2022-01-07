; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_insert_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_insert_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@regno_save_mem = common dso_local global i64** null, align 8
@MOVE_MAX_WORDS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i64** null, align 8
@reg_save_code = common dso_local global i32** null, align 8
@hard_regs_saved = common dso_local global i32 0, align 4
@n_regs_saved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn_chain*, i32, i32, i32*, i32*)* @insert_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_save(%struct.insn_chain* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.insn_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.insn_chain*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.insn_chain* %0, %struct.insn_chain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i64, i64* @NULL_RTX, align 8
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %21 = load i64**, i64*** @regno_save_mem, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @gcc_assert(i64 %27)
  %29 = load i32, i32* @MOVE_MAX_WORDS, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %69, %5
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  store i32 1, i32* %19, align 4
  %34 = load i64**, i64*** @regno_save_mem, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %69

45:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @TEST_HARD_REG_BIT(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i32 0, i32* %19, align 4
  br label %63

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %15, align 4
  br label %72

69:                                               ; preds = %66, %44
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  br label %30

72:                                               ; preds = %67, %30
  %73 = load i64**, i64*** @regno_save_mem, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %17, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VOIDmode, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %72
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %17, align 8
  %97 = call i64 @GET_MODE(i64 %96)
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %89
  %100 = load i32, i32* %15, align 4
  %101 = load i64**, i64*** @hard_regno_nregs, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64*, i64** %101, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %105, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = icmp eq i32 %100, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %99
  %117 = load i64, i64* %17, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @adjust_address(i64 %117, i32 %122, i32 0)
  store i64 %123, i64* %17, align 8
  br label %127

124:                                              ; preds = %99, %89, %72
  %125 = load i64, i64* %17, align 8
  %126 = call i64 @copy_rtx(i64 %125)
  store i64 %126, i64* %17, align 8
  br label %127

127:                                              ; preds = %124, %116
  %128 = load i32, i32* @VOIDmode, align 4
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %17, align 8
  %131 = call i64 @GET_MODE(i64 %130)
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @gen_rtx_REG(i64 %131, i32 %132)
  %134 = call i64 @gen_rtx_SET(i32 %128, i64 %129, i32 %133)
  store i64 %134, i64* %13, align 8
  %135 = load i32**, i32*** @reg_save_code, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %17, align 8
  %141 = call i64 @GET_MODE(i64 %140)
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %14, align 4
  %144 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i64, i64* %13, align 8
  %148 = call %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %144, i32 %145, i32 %146, i64 %147)
  store %struct.insn_chain* %148, %struct.insn_chain** %16, align 8
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %167, %127
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32, i32* @hard_regs_saved, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add i32 %155, %156
  %158 = call i32 @SET_HARD_REG_BIT(i32 %154, i32 %157)
  %159 = load %struct.insn_chain*, %struct.insn_chain** %16, align 8
  %160 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %159, i32 0, i32 0
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %161, %162
  %164 = call i32 @SET_REGNO_REG_SET(i32* %160, i32 %163)
  %165 = load i32, i32* @n_regs_saved, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @n_regs_saved, align 4
  br label %167

167:                                              ; preds = %153
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %149

170:                                              ; preds = %149
  %171 = load i32, i32* %15, align 4
  %172 = sub i32 %171, 1
  ret i32 %172
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i32) #1

declare dso_local i32 @gen_rtx_REG(i64, i32) #1

declare dso_local %struct.insn_chain* @insert_one_insn(%struct.insn_chain*, i32, i32, i64) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
