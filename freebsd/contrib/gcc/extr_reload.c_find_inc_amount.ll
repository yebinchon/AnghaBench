; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_inc_amount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_inc_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i32 0, align 4
@PRE_DEC = common dso_local global i64 0, align 8
@POST_DEC = common dso_local global i64 0, align 8
@PRE_INC = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@PRE_MODIFY = common dso_local global i64 0, align 8
@POST_MODIFY = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @find_inc_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_inc_amount(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @GET_CODE(i64 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %101

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @XEXP(i64 %20, i32 0)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @PRE_DEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @GET_CODE(i64 %27)
  %29 = load i64, i64* @POST_DEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @PRE_INC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @POST_INC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %31, %26, %19
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @GET_MODE(i64 %47)
  %49 = call i32 @GET_MODE_SIZE(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %166

50:                                               ; preds = %41, %36
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @PRE_MODIFY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @POST_MODIFY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %55, %50
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @XEXP(i64 %61, i32 1)
  %63 = call i64 @GET_CODE(i64 %62)
  %64 = load i64, i64* @PLUS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @XEXP(i64 %67, i32 0)
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @XEXP(i64 %69, i32 1)
  %71 = call i64 @XEXP(i64 %70, i32 0)
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @XEXP(i64 %74, i32 0)
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @XEXP(i64 %79, i32 1)
  %81 = call i64 @XEXP(i64 %80, i32 1)
  %82 = call i64 @GET_CODE(i64 %81)
  %83 = load i64, i64* @CONST_INT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @XEXP(i64 %86, i32 1)
  %88 = call i64 @XEXP(i64 %87, i32 1)
  %89 = call i32 @INTVAL(i64 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 0, %93
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %94, %92 ], [ %96, %95 ]
  store i32 %98, i32* %3, align 4
  br label %166

99:                                               ; preds = %78, %73, %66, %60, %55
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %2
  %102 = load i32, i32* %6, align 4
  %103 = call i8* @GET_RTX_FORMAT(i32 %102)
  store i8* %103, i8** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @GET_RTX_LENGTH(i32 %104)
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %162, %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %165

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 101
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = load i64, i64* %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @XEXP(i64 %119, i32 %120)
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @find_inc_amount(i64 %121, i64 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %166

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 69
  br i1 %136, label %137, label %161

137:                                              ; preds = %129
  %138 = load i64, i64* %4, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @XVECLEN(i64 %138, i32 %139)
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %157, %137
  %143 = load i32, i32* %11, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i64, i64* %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @XVECEXP(i64 %146, i32 %147, i32 %148)
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @find_inc_amount(i64 %149, i64 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %3, align 4
  br label %166

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %11, align 4
  br label %142

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %129
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  br label %107

165:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %154, %126, %97, %46
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
