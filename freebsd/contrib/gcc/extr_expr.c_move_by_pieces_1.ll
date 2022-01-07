; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_move_by_pieces_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_move_by_pieces_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_by_pieces = type { i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64 }

@NULL_RTX = common dso_local global i32 0, align 4
@HAVE_PRE_DECREMENT = common dso_local global i64 0, align 8
@HAVE_POST_INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32, ...)*, i32, %struct.move_by_pieces*)* @move_by_pieces_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_by_pieces_1(i32 (i32, ...)* %0, i32 %1, %struct.move_by_pieces* %2) #0 {
  %4 = alloca i32 (i32, ...)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.move_by_pieces*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 (i32, ...)* %0, i32 (i32, ...)** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.move_by_pieces* %2, %struct.move_by_pieces** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @NULL_RTX, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %178, %3
  %14 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %15 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %184

19:                                               ; preds = %13
  %20 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %21 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %27 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %32 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %37 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %42 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %46 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %49 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @adjust_automodify_address(i64 %43, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %35
  %53 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %54 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %58 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @adjust_address(i64 %55, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %52, %40
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %64 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %69 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %73 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %76 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @adjust_automodify_address(i64 %70, i32 %71, i32 %74, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %88

79:                                               ; preds = %62
  %80 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %81 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %85 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @adjust_address(i64 %82, i32 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %79, %67
  %89 = load i64, i64* @HAVE_PRE_DECREMENT, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %93 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %98 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub i32 0, %100
  %102 = call i32 @GEN_INT(i32 %101)
  %103 = call i32 @gen_add2_insn(i32 %99, i32 %102)
  %104 = call i32 @emit_insn(i32 %103)
  br label %105

105:                                              ; preds = %96, %91, %88
  %106 = load i64, i64* @HAVE_PRE_DECREMENT, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %110 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %115 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub i32 0, %117
  %119 = call i32 @GEN_INT(i32 %118)
  %120 = call i32 @gen_add2_insn(i32 %116, i32 %119)
  %121 = call i32 @emit_insn(i32 %120)
  br label %122

122:                                              ; preds = %113, %108, %105
  %123 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %124 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32 (i32, ...)*, i32 (i32, ...)** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32, ...) %128(i32 %129, i32 %130)
  %132 = call i32 @emit_insn(i32 %131)
  br label %135

133:                                              ; preds = %122
  %134 = call i32 (...) @gcc_unreachable()
  br label %135

135:                                              ; preds = %133, %127
  %136 = load i64, i64* @HAVE_POST_INCREMENT, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %140 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %145 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @GEN_INT(i32 %147)
  %149 = call i32 @gen_add2_insn(i32 %146, i32 %148)
  %150 = call i32 @emit_insn(i32 %149)
  br label %151

151:                                              ; preds = %143, %138, %135
  %152 = load i64, i64* @HAVE_POST_INCREMENT, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %156 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %161 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @GEN_INT(i32 %163)
  %165 = call i32 @gen_add2_insn(i32 %162, i32 %164)
  %166 = call i32 @emit_insn(i32 %165)
  br label %167

167:                                              ; preds = %159, %154, %151
  %168 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %169 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %175 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %167
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.move_by_pieces*, %struct.move_by_pieces** %6, align 8
  %181 = getelementptr inbounds %struct.move_by_pieces, %struct.move_by_pieces* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %13

184:                                              ; preds = %13
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @adjust_automodify_address(i64, i32, i32, i32) #1

declare dso_local i32 @adjust_address(i64, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_add2_insn(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
