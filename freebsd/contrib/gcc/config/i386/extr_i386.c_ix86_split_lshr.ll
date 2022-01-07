; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_lshr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_lshr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@TARGET_CMOVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_lshr(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  %8 = alloca [2 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DImode, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 32, i32 64
  store i32 %15, i32* %10, align 4
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @GET_CODE(i64 %18)
  %20 = load i64, i64* @CONST_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %117

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DImode, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 (i64*, i32, i64*, i64*)* @split_di, i32 (i64*, i32, i64*, i64*)* @split_ti
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %31 = call i32 %27(i64* %28, i32 2, i64* %29, i64* %30)
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @INTVAL(i64 %34)
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %22
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %45 = load i64, i64* %44, align 16
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @emit_move_insn(i64 %45, i64 %47)
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = call i32 @ix86_expand_clear(i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @DImode, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 (i64, i64, i64)* @gen_lshrsi3, i32 (i64, i64, i64)* @gen_lshrdi3
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %62 = load i64, i64* %61, align 16
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %64 = load i64, i64* %63, align 16
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i64 @GEN_INT(i32 %67)
  %69 = call i32 %60(i64 %62, i64 %64, i64 %68)
  %70 = call i32 @emit_insn(i32 %69)
  br label %71

71:                                               ; preds = %55, %43
  br label %116

72:                                               ; preds = %22
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @rtx_equal_p(i64 %75, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %72
  %82 = load i64*, i64** %4, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @emit_move_insn(i64 %84, i64 %87)
  br label %89

89:                                               ; preds = %81, %72
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @DImode, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 (i64, i64, i64)* @gen_x86_shrd_1, i32 (i64, i64, i64)* @gen_x86_64_shrd
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %96 = load i64, i64* %95, align 16
  %97 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %98 = load i64, i64* %97, align 16
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @GEN_INT(i32 %99)
  %101 = call i32 %94(i64 %96, i64 %98, i64 %100)
  %102 = call i32 @emit_insn(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @DImode, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 (i64, i64, i64)* @gen_lshrsi3, i32 (i64, i64, i64)* @gen_lshrdi3
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %111 = load i64, i64* %110, align 16
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @GEN_INT(i32 %112)
  %114 = call i32 %107(i64 %109, i64 %111, i64 %113)
  %115 = call i32 @emit_insn(i32 %114)
  br label %116

116:                                              ; preds = %89, %71
  br label %206

117:                                              ; preds = %3
  %118 = load i64*, i64** %4, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %4, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @rtx_equal_p(i64 %120, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %117
  %127 = load i64*, i64** %4, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %4, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @emit_move_insn(i64 %129, i64 %132)
  br label %134

134:                                              ; preds = %126, %117
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @DImode, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 (i64*, i32, i64*, i64*)* @split_di, i32 (i64*, i32, i64*, i64*)* @split_ti
  %140 = load i64*, i64** %4, align 8
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %142 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %143 = call i32 %139(i64* %140, i32 1, i64* %141, i64* %142)
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @DImode, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 (i64, i64, i64)* @gen_x86_shrd_1, i32 (i64, i64, i64)* @gen_x86_64_shrd
  %149 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %150 = load i64, i64* %149, align 16
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %152 = load i64, i64* %151, align 16
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 %148(i64 %150, i64 %152, i64 %155)
  %157 = call i32 @emit_insn(i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @DImode, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 (i64, i64, i64)* @gen_lshrsi3, i32 (i64, i64, i64)* @gen_lshrdi3
  %163 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %164 = load i64, i64* %163, align 16
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = load i64*, i64** %4, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 %162(i64 %164, i64 %166, i64 %169)
  %171 = call i32 @emit_insn(i32 %170)
  %172 = load i64, i64* @TARGET_CMOVE, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %134
  %175 = load i64, i64* %5, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %174
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @ix86_expand_clear(i64 %178)
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @DImode, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 (i64, i64, i64, i64)* @gen_x86_shift_adj_1, i32 (i64, i64, i64, i64)* @gen_x86_64_shift_adj
  %185 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %186 = load i64, i64* %185, align 16
  %187 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %188 = load i64, i64* %187, align 16
  %189 = load i64*, i64** %4, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %5, align 8
  %193 = call i32 %184(i64 %186, i64 %188, i64 %191, i64 %192)
  %194 = call i32 @emit_insn(i32 %193)
  br label %205

195:                                              ; preds = %174, %134
  %196 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %197 = load i64, i64* %196, align 16
  %198 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %199 = load i64, i64* %198, align 16
  %200 = load i64*, i64** %4, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 2
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @gen_x86_shift_adj_2(i64 %197, i64 %199, i64 %202)
  %204 = call i32 @emit_insn(i32 %203)
  br label %205

205:                                              ; preds = %195, %177
  br label %206

206:                                              ; preds = %205, %116
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @split_di(i64*, i32, i64*, i64*) #1

declare dso_local i32 @split_ti(i64*, i32, i64*, i64*) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @ix86_expand_clear(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_lshrsi3(i64, i64, i64) #1

declare dso_local i32 @gen_lshrdi3(i64, i64, i64) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @gen_x86_shrd_1(i64, i64, i64) #1

declare dso_local i32 @gen_x86_64_shrd(i64, i64, i64) #1

declare dso_local i32 @gen_x86_shift_adj_1(i64, i64, i64, i64) #1

declare dso_local i32 @gen_x86_64_shift_adj(i64, i64, i64, i64) #1

declare dso_local i32 @gen_x86_shift_adj_2(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
