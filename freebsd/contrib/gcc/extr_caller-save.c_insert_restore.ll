; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_insert_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_insert_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@regno_save_mem = common dso_local global i64** null, align 8
@hard_regs_saved = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i64** null, align 8
@reg_restore_code = common dso_local global i32** null, align 8
@n_regs_saved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn_chain*, i32, i32, i32, i32*)* @insert_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_restore(%struct.insn_chain* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.insn_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  store i32 %3, i32* %9, align 4
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
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %68, %5
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %71

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
  br label %68

45:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* @hard_regs_saved, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @TEST_HARD_REG_BIT(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 0, i32* %19, align 4
  br label %62

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %18, align 4
  br label %46

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %15, align 4
  br label %71

68:                                               ; preds = %65, %44
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %30

71:                                               ; preds = %66, %30
  %72 = load i64**, i64*** @regno_save_mem, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64*, i64** %72, i64 %74
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %17, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VOIDmode, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %71
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %17, align 8
  %96 = call i64 @GET_MODE(i64 %95)
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %88
  %99 = load i32, i32* %15, align 4
  %100 = load i64**, i64*** @hard_regno_nregs, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %104, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = icmp eq i32 %99, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %98
  %116 = load i64, i64* %17, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @adjust_address(i64 %116, i32 %121, i32 0)
  store i64 %122, i64* %17, align 8
  br label %126

123:                                              ; preds = %98, %88, %71
  %124 = load i64, i64* %17, align 8
  %125 = call i64 @copy_rtx(i64 %124)
  store i64 %125, i64* %17, align 8
  br label %126

126:                                              ; preds = %123, %115
  %127 = load i32, i32* @VOIDmode, align 4
  %128 = load i64, i64* %17, align 8
  %129 = call i64 @GET_MODE(i64 %128)
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @gen_rtx_REG(i64 %129, i32 %130)
  %132 = load i64, i64* %17, align 8
  %133 = call i64 @gen_rtx_SET(i32 %127, i32 %131, i64 %132)
  store i64 %133, i64* %13, align 8
  %134 = load i32**, i32*** @reg_restore_code, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %17, align 8
  %140 = call i64 @GET_MODE(i64 %139)
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %14, align 4
  %143 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i64, i64* %13, align 8
  %147 = call %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %143, i32 %144, i32 %145, i64 %146)
  store %struct.insn_chain* %147, %struct.insn_chain** %16, align 8
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %166, %126
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i32, i32* @hard_regs_saved, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @CLEAR_HARD_REG_BIT(i32 %153, i32 %156)
  %158 = load %struct.insn_chain*, %struct.insn_chain** %16, align 8
  %159 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %158, i32 0, i32 0
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 @SET_REGNO_REG_SET(i32* %159, i32 %162)
  %164 = load i32, i32* @n_regs_saved, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* @n_regs_saved, align 4
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %148

169:                                              ; preds = %148
  %170 = load i32, i32* %15, align 4
  %171 = sub i32 %170, 1
  ret i32 %171
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i32, i64) #1

declare dso_local i32 @gen_rtx_REG(i64, i32) #1

declare dso_local %struct.insn_chain* @insert_one_insn(%struct.insn_chain*, i32, i32, i64) #1

declare dso_local i32 @CLEAR_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
