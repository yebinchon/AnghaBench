; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_count_rtxs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_count_rtxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @count_rtxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_rtxs(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @GET_CODE(i64 %10)
  store i32 %11, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call signext i8 @GET_RTX_CLASS(i32 %12)
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 50
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call signext i8 @GET_RTX_CLASS(i32 %17)
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 99
  br i1 %20, label %21, label %117

21:                                               ; preds = %16, %1
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @XEXP(i64 %22, i32 0)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @XEXP(i64 %24, i32 1)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @count_rtxs(i64 %30)
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 1, %32
  store i32 %33, i32* %2, align 4
  br label %147

34:                                               ; preds = %21
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @GET_CODE(i64 %35)
  %37 = call signext i8 @GET_RTX_CLASS(i32 %36)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 50
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @GET_CODE(i64 %41)
  %43 = call signext i8 @GET_RTX_CLASS(i32 %42)
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 99
  br i1 %45, label %46, label %75

46:                                               ; preds = %40, %34
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @XEXP(i64 %53, i32 1)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @count_rtxs(i64 %57)
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 2, %59
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @XEXP(i64 %62, i32 0)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @XEXP(i64 %66, i32 1)
  br label %71

68:                                               ; preds = %56
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @XEXP(i64 %69, i32 0)
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i64 [ %67, %65 ], [ %70, %68 ]
  %73 = call i32 @count_rtxs(i64 %72)
  %74 = add nsw i32 %60, %73
  store i32 %74, i32* %2, align 4
  br label %147

75:                                               ; preds = %51, %40
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @GET_CODE(i64 %76)
  %78 = call signext i8 @GET_RTX_CLASS(i32 %77)
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 50
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @GET_CODE(i64 %82)
  %84 = call signext i8 @GET_RTX_CLASS(i32 %83)
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 99
  br i1 %86, label %87, label %116

87:                                               ; preds = %81, %75
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @XEXP(i64 %89, i32 0)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @XEXP(i64 %94, i32 1)
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %92, %87
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @count_rtxs(i64 %98)
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 2, %100
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @XEXP(i64 %103, i32 0)
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @XEXP(i64 %107, i32 1)
  br label %112

109:                                              ; preds = %97
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @XEXP(i64 %110, i32 0)
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i64 [ %108, %106 ], [ %111, %109 ]
  %114 = call i32 @count_rtxs(i64 %113)
  %115 = add nsw i32 %101, %114
  store i32 %115, i32* %2, align 4
  br label %147

116:                                              ; preds = %92, %81
  br label %117

117:                                              ; preds = %116, %16
  %118 = load i32, i32* %4, align 4
  %119 = call i8* @GET_RTX_FORMAT(i32 %118)
  store i8* %119, i8** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @GET_RTX_LENGTH(i32 %120)
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %142, %117
  %124 = load i32, i32* %6, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 101
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load i64, i64* %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @XEXP(i64 %135, i32 %136)
  %138 = call i32 @count_rtxs(i64 %137)
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %134, %126
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %6, align 4
  br label %123

145:                                              ; preds = %123
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %112, %71, %29
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local signext i8 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
