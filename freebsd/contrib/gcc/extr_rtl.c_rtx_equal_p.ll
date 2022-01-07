; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl.c_rtx_equal_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl.c_rtx_equal_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_equal_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %181

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  br label %181

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @GET_CODE(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @GET_CODE(i64 %25)
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %181

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @GET_MODE(i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @GET_MODE(i64 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %181

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %60 [
    i32 130, label %38
    i32 131, label %45
    i32 128, label %52
    i32 129, label %59
    i32 133, label %59
    i32 132, label %59
  ]

38:                                               ; preds = %36
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @REGNO(i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @REGNO(i64 %41)
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %181

45:                                               ; preds = %36
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @XEXP(i64 %46, i32 0)
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  %50 = icmp eq i64 %47, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %181

52:                                               ; preds = %36
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @XSTR(i64 %53, i32 0)
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @XSTR(i64 %55, i32 0)
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %181

59:                                               ; preds = %36, %36, %36
  store i32 0, i32* %3, align 4
  br label %181

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @GET_RTX_FORMAT(i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @GET_RTX_LENGTH(i32 %64)
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %177, %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %180

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %174 [
    i32 119, label %77
    i32 110, label %87
    i32 105, label %87
    i32 86, label %97
    i32 69, label %97
    i32 101, label %130
    i32 83, label %141
    i32 115, label %141
    i32 117, label %172
    i32 48, label %173
    i32 116, label %173
  ]

77:                                               ; preds = %70
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @XWINT(i64 %78, i32 %79)
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @XWINT(i64 %81, i32 %82)
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %181

86:                                               ; preds = %77
  br label %176

87:                                               ; preds = %70, %70
  %88 = load i64, i64* %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @XINT(i64 %88, i32 %89)
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @XINT(i64 %91, i32 %92)
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %181

96:                                               ; preds = %87
  br label %176

97:                                               ; preds = %70, %70
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @XVECLEN(i64 %98, i32 %99)
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @XVECLEN(i64 %101, i32 %102)
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %181

106:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @XVECLEN(i64 %109, i32 %110)
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load i64, i64* %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @XVECEXP(i64 %114, i32 %115, i32 %116)
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @XVECEXP(i64 %118, i32 %119, i32 %120)
  %122 = call i32 @rtx_equal_p(i64 %117, i64 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %181

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %107

129:                                              ; preds = %107
  br label %176

130:                                              ; preds = %70
  %131 = load i64, i64* %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i64 @XEXP(i64 %131, i32 %132)
  %134 = load i64, i64* %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i64 @XEXP(i64 %134, i32 %135)
  %137 = call i32 @rtx_equal_p(i64 %133, i64 %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %181

140:                                              ; preds = %130
  br label %176

141:                                              ; preds = %70, %70
  %142 = load i64, i64* %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @XSTR(i64 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i64, i64* %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @XSTR(i64 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %146, %141
  %152 = load i64, i64* %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @XSTR(i64 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load i64, i64* %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @XSTR(i64 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load i64, i64* %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @XSTR(i64 %162, i32 %163)
  %165 = load i64, i64* %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @XSTR(i64 %165, i32 %166)
  %168 = call i32 @strcmp(i32 %164, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161, %156, %151
  store i32 0, i32* %3, align 4
  br label %181

171:                                              ; preds = %161, %146
  br label %176

172:                                              ; preds = %70
  br label %176

173:                                              ; preds = %70, %70
  br label %176

174:                                              ; preds = %70
  %175 = call i32 (...) @gcc_unreachable()
  br label %176

176:                                              ; preds = %174, %173, %172, %171, %140, %129, %96, %86
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  br label %67

180:                                              ; preds = %67
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %170, %139, %124, %105, %95, %85, %59, %52, %45, %38, %35, %28, %20, %13
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XWINT(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
