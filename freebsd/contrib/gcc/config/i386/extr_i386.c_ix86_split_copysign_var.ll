; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_copysign_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_copysign_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_copysign_var(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @GET_MODE(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @GET_MODE(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @rtx_equal_p(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @emit_move_insn(i32 %39, i32 %40)
  br label %166

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @REG_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @REGNO(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @REGNO(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @REGNO(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @REGNO(i32 %55)
  %57 = icmp eq i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @gcc_assert(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gen_rtx_AND(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @gen_rtx_SET(i32 %64, i32 %65, i32 %66)
  %68 = call i32 @emit_insn(i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @simplify_gen_subreg(i32 %70, i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @gen_rtx_NOT(i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @gen_rtx_AND(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @VOIDmode, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @gen_rtx_SET(i32 %81, i32 %82, i32 %83)
  %85 = call i32 @emit_insn(i32 %84)
  br label %156

86:                                               ; preds = %46, %42
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @REGNO(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @REGNO(i32 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @gen_rtx_AND(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  br label %113

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @REGNO(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @REGNO(i32 %100)
  %102 = icmp eq i64 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @gcc_assert(i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @simplify_gen_subreg(i32 %105, i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @gen_rtx_AND(i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %97, %92
  %114 = load i32, i32* @VOIDmode, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @gen_rtx_SET(i32 %114, i32 %115, i32 %116)
  %118 = call i32 @emit_insn(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @REGNO(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @REGNO(i32 %121)
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @simplify_gen_subreg(i32 %125, i32 %126, i32 %127, i32 0)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @gen_rtx_AND(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %150

133:                                              ; preds = %113
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @REGNO(i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @REGNO(i32 %136)
  %138 = icmp eq i64 %135, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @gcc_assert(i32 %139)
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @simplify_gen_subreg(i32 %142, i32 %143, i32 %144, i32 0)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @gen_rtx_AND(i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %133, %124
  %151 = load i32, i32* @VOIDmode, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @gen_rtx_SET(i32 %151, i32 %152, i32 %153)
  %155 = call i32 @emit_insn(i32 %154)
  br label %156

156:                                              ; preds = %150, %52
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @gen_rtx_IOR(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @VOIDmode, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @gen_rtx_SET(i32 %161, i32 %162, i32 %163)
  %165 = call i32 @emit_insn(i32 %164)
  br label %166

166:                                              ; preds = %156, %38
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtx_AND(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_NOT(i32, i32) #1

declare dso_local i32 @gen_rtx_IOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
