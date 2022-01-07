; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconfig.c_walk_insn_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconfig.c_walk_insn_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clobbers_seen_this_insn = common dso_local global i32 0, align 4
@max_recog_operands = common dso_local global i32 0, align 4
@dup_operands_seen_this_insn = common dso_local global i32 0, align 4
@have_cc0_flag = common dso_local global i32 0, align 4
@have_lo_sum_flag = common dso_local global i32 0, align 4
@have_cmove_flag = common dso_local global i32 0, align 4
@have_cond_exec_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @walk_insn_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_insn_part(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %161

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @GET_CODE(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %111 [
    i32 144, label %18
    i32 137, label %21
    i32 135, label %30
    i32 133, label %30
    i32 132, label %33
    i32 134, label %33
    i32 136, label %33
    i32 140, label %42
    i32 138, label %54
    i32 145, label %65
    i32 139, label %70
    i32 129, label %75
    i32 141, label %87
    i32 143, label %105
    i32 130, label %110
    i32 142, label %110
    i32 128, label %110
    i32 131, label %110
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @clobbers_seen_this_insn, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @clobbers_seen_this_insn, align 4
  br label %112

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @XINT(i64 %22, i32 0)
  %24 = load i32, i32* @max_recog_operands, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @XINT(i64 %27, i32 0)
  store i32 %28, i32* @max_recog_operands, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %161

30:                                               ; preds = %14, %14
  %31 = load i32, i32* @dup_operands_seen_this_insn, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @dup_operands_seen_this_insn, align 4
  br label %33

33:                                               ; preds = %14, %14, %14, %30
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @XINT(i64 %34, i32 0)
  %36 = load i32, i32* @max_recog_operands, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @XINT(i64 %39, i32 0)
  store i32 %40, i32* @max_recog_operands, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %112

42:                                               ; preds = %14
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i32 @GET_CODE(i64 %44)
  %46 = icmp eq i32 %45, 137
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  %50 = call i32 @GET_CODE(i64 %49)
  %51 = icmp eq i32 %50, 138
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42
  br label %112

53:                                               ; preds = %47
  br label %161

54:                                               ; preds = %14
  %55 = load i32, i32* @dup_operands_seen_this_insn, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @dup_operands_seen_this_insn, align 4
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @XINT(i64 %57, i32 0)
  %59 = load i32, i32* @max_recog_operands, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @XINT(i64 %62, i32 0)
  store i32 %63, i32* @max_recog_operands, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %161

65:                                               ; preds = %14
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* @have_cc0_flag, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %161

70:                                               ; preds = %14
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* @have_lo_sum_flag, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %161

75:                                               ; preds = %14
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @SET_DEST(i64 %76)
  %78 = load i32, i32* %5, align 4
  call void @walk_insn_part(i64 %77, i32 0, i32 %78)
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @SET_SRC(i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @SET_DEST(i64 %82)
  %84 = call i32 @GET_CODE(i64 %83)
  %85 = icmp ne i32 %84, 131
  %86 = zext i1 %85 to i32
  call void @walk_insn_part(i64 %80, i32 %81, i32 %86)
  br label %161

87:                                               ; preds = %14
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @XEXP(i64 %94, i32 1)
  %96 = call i32 @GET_CODE(i64 %95)
  %97 = icmp eq i32 %96, 137
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i64, i64* %4, align 8
  %100 = call i64 @XEXP(i64 %99, i32 2)
  %101 = call i32 @GET_CODE(i64 %100)
  %102 = icmp eq i32 %101, 137
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* @have_cmove_flag, align 4
  br label %104

104:                                              ; preds = %103, %98, %93, %90, %87
  br label %112

105:                                              ; preds = %14
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* @have_cond_exec_flag, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %112

110:                                              ; preds = %14, %14, %14, %14
  br label %161

111:                                              ; preds = %14
  br label %112

112:                                              ; preds = %111, %109, %104, %52, %41, %18
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @GET_CODE(i64 %113)
  %115 = call i8* @GET_RTX_FORMAT(i32 %114)
  store i8* %115, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %158, %112
  %117 = load i32, i32* %7, align 4
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @GET_CODE(i64 %118)
  %120 = call i32 @GET_RTX_LENGTH(i32 %119)
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %116
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  %125 = load i8, i8* %123, align 1
  %126 = sext i8 %125 to i32
  switch i32 %126, label %157 [
    i32 101, label %127
    i32 117, label %127
    i32 69, label %133
  ]

127:                                              ; preds = %122, %122
  %128 = load i64, i64* %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i64 @XEXP(i64 %128, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  call void @walk_insn_part(i64 %130, i32 %131, i32 %132)
  br label %157

133:                                              ; preds = %122
  %134 = load i64, i64* %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32* @XVEC(i64 %134, i32 %135)
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %152, %138
  %140 = load i32, i32* %8, align 4
  %141 = load i64, i64* %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @XVECLEN(i64 %141, i32 %142)
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load i64, i64* %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i64 @XVECEXP(i64 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  call void @walk_insn_part(i64 %149, i32 %150, i32 %151)
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %139

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %133
  br label %157

157:                                              ; preds = %122, %156, %127
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %116

161:                                              ; preds = %13, %29, %53, %64, %69, %74, %75, %110, %116
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32* @XVEC(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
