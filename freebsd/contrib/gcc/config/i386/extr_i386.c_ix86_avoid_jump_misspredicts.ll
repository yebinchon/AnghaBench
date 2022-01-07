; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_avoid_jump_misspredicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_avoid_jump_misspredicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Insn %i estimated to %i bytes\0A\00", align 1
@JUMP_INSN = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Interval %i to %i has %i bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Padding insn %i by %i bytes!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ix86_avoid_jump_misspredicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_avoid_jump_misspredicts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @get_insns()
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i64 (...) @get_insns()
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %134, %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %137

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @min_insn_size(i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @dump_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i64, i64* @dump_file, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @INSN_UID(i64 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @min_insn_size(i64 %23)
  %25 = call i32 (i64, i8*, i32, i32, ...) @fprintf(i64 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i64, i64* %1, align 8
  %28 = call i64 @GET_CODE(i64 %27)
  %29 = load i64, i64* @JUMP_INSN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i64, i64* %1, align 8
  %33 = call i64 @PATTERN(i64 %32)
  %34 = call i64 @GET_CODE(i64 %33)
  %35 = load i64, i64* @ADDR_VEC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @PATTERN(i64 %38)
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37, %31, %26
  %44 = load i64, i64* %1, align 8
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = load i64, i64* @CALL_INSN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %43
  br label %134

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %84, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 3
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load i64, i64* %2, align 8
  %58 = call i64 @NEXT_INSN(i64 %57)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = call i64 @GET_CODE(i64 %59)
  %61 = load i64, i64* @JUMP_INSN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i64, i64* %2, align 8
  %65 = call i64 @PATTERN(i64 %64)
  %66 = call i64 @GET_CODE(i64 %65)
  %67 = load i64, i64* @ADDR_VEC, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i64, i64* %2, align 8
  %71 = call i64 @PATTERN(i64 %70)
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %69, %63, %56
  %76 = load i64, i64* %2, align 8
  %77 = call i64 @GET_CODE(i64 %76)
  %78 = load i64, i64* @CALL_INSN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i64, i64* %2, align 8
  %86 = call i32 @min_insn_size(i64 %85)
  %87 = load i32, i32* %3, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %53

89:                                               ; preds = %53
  %90 = load i32, i32* %4, align 4
  %91 = icmp sge i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @gcc_assert(i32 %92)
  %94 = load i64, i64* @dump_file, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i64, i64* @dump_file, align 8
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @INSN_UID(i64 %98)
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @INSN_UID(i64 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 (i64, i8*, i32, i32, ...) @fprintf(i64 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %89
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %107
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %111, 16
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = sub nsw i32 15, %114
  %116 = load i64, i64* %1, align 8
  %117 = call i32 @min_insn_size(i64 %116)
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* %6, align 4
  %119 = load i64, i64* @dump_file, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i64, i64* @dump_file, align 8
  %123 = load i64, i64* %1, align 8
  %124 = call i32 @INSN_UID(i64 %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (i64, i8*, i32, i32, ...) @fprintf(i64 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %113
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @GEN_INT(i32 %128)
  %130 = call i32 @gen_align(i32 %129)
  %131 = load i64, i64* %1, align 8
  %132 = call i32 @emit_insn_before(i32 %130, i64 %131)
  br label %133

133:                                              ; preds = %127, %110, %107, %104
  br label %134

134:                                              ; preds = %133, %51
  %135 = load i64, i64* %1, align 8
  %136 = call i64 @NEXT_INSN(i64 %135)
  store i64 %136, i64* %1, align 8
  br label %9

137:                                              ; preds = %9
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @min_insn_size(i64) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32, ...) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn_before(i32, i64) #1

declare dso_local i32 @gen_align(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
