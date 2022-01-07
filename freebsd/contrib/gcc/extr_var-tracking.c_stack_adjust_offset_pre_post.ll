; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_stack_adjust_offset_pre_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_stack_adjust_offset_pre_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_pointer_rtx = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32*)* @stack_adjust_offset_pre_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_adjust_offset_pre_post(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @SET_SRC(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @SET_DEST(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @stack_pointer_rtx, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @GET_CODE(i64 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PLUS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MINUS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %18
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @XEXP(i64 %30, i32 0)
  %32 = load i64, i64* @stack_pointer_rtx, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @XEXP(i64 %35, i32 1)
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @CONST_INT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29, %25
  br label %174

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MINUS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @XEXP(i64 %46, i32 1)
  %48 = call i64 @INTVAL(i64 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %63

54:                                               ; preds = %41
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @XEXP(i64 %55, i32 1)
  %57 = call i64 @INTVAL(i64 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %54, %45
  br label %174

64:                                               ; preds = %3
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @MEM_P(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %173

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @XEXP(i64 %69, i32 0)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %171 [
    i32 128, label %75
    i32 131, label %75
    i32 130, label %119
    i32 133, label %132
    i32 129, label %145
    i32 132, label %158
  ]

75:                                               ; preds = %68, %68
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @XEXP(i64 %76, i32 0)
  %78 = load i64, i64* @stack_pointer_rtx, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %75
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @XEXP(i64 %81, i32 1)
  %83 = call i64 @XEXP(i64 %82, i32 1)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @XEXP(i64 %84, i32 1)
  %86 = call i64 @GET_CODE(i64 %85)
  %87 = load i32, i32* @PLUS, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @GET_CODE(i64 %91)
  %93 = load i64, i64* @CONST_INT, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %90, %80
  %96 = phi i1 [ false, %80 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @gcc_assert(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @INTVAL(i64 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %103
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %117

109:                                              ; preds = %95
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @INTVAL(i64 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %111
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  br label %117

117:                                              ; preds = %109, %101
  br label %172

118:                                              ; preds = %75
  br label %174

119:                                              ; preds = %68
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @XEXP(i64 %120, i32 0)
  %122 = load i64, i64* @stack_pointer_rtx, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @GET_MODE(i64 %125)
  %127 = call i32 @GET_MODE_SIZE(i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %172

131:                                              ; preds = %119
  br label %174

132:                                              ; preds = %68
  %133 = load i64, i64* %7, align 8
  %134 = call i64 @XEXP(i64 %133, i32 0)
  %135 = load i64, i64* @stack_pointer_rtx, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @GET_MODE(i64 %138)
  %140 = call i32 @GET_MODE_SIZE(i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %172

144:                                              ; preds = %132
  br label %174

145:                                              ; preds = %68
  %146 = load i64, i64* %7, align 8
  %147 = call i64 @XEXP(i64 %146, i32 0)
  %148 = load i64, i64* @stack_pointer_rtx, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @GET_MODE(i64 %151)
  %153 = call i32 @GET_MODE_SIZE(i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %172

157:                                              ; preds = %145
  br label %174

158:                                              ; preds = %68
  %159 = load i64, i64* %7, align 8
  %160 = call i64 @XEXP(i64 %159, i32 0)
  %161 = load i64, i64* @stack_pointer_rtx, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @GET_MODE(i64 %164)
  %166 = call i32 @GET_MODE_SIZE(i32 %165)
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, %166
  store i32 %169, i32* %167, align 4
  br label %172

170:                                              ; preds = %158
  br label %174

171:                                              ; preds = %68
  br label %174

172:                                              ; preds = %163, %150, %137, %124, %117
  br label %173

173:                                              ; preds = %172, %64
  br label %174

174:                                              ; preds = %40, %118, %131, %144, %157, %170, %171, %173, %63
  ret void
}

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
