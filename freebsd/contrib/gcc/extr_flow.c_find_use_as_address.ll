; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_find_use_as_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_find_use_as_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@SIGN_EXTRACT = common dso_local global i32 0, align 4
@ZERO_EXTRACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_use_as_address(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @GET_CODE(i64 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @GET_RTX_FORMAT(i32 %17)
  store i8* %18, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MEM, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @XEXP(i64 %23, i32 0)
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %4, align 8
  br label %162

32:                                               ; preds = %27, %22, %3
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MEM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = call i64 @GET_CODE(i64 %38)
  %40 = load i64, i64* @PLUS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = call i64 @XEXP(i64 %50, i32 1)
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @CONST_INT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @XEXP(i64 %56, i32 0)
  %58 = call i64 @XEXP(i64 %57, i32 1)
  %59 = call i64 @INTVAL(i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %4, align 8
  br label %162

64:                                               ; preds = %55, %48, %42, %36, %32
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SIGN_EXTRACT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ZERO_EXTRACT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @XEXP(i64 %73, i32 0)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @find_use_as_address(i64 %74, i64 %75, i64 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i64 1, i64* %4, align 8
  br label %162

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i64 1, i64* %4, align 8
  br label %162

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @GET_RTX_LENGTH(i32 %86)
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %157, %85
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %160

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 101
  br i1 %99, label %100, label %117

100:                                              ; preds = %92
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @XEXP(i64 %101, i32 %102)
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @find_use_as_address(i64 %103, i64 %104, i64 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %11, align 8
  br label %116

111:                                              ; preds = %100
  %112 = load i64, i64* %12, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i64 1, i64* %4, align 8
  br label %162

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %109
  br label %156

117:                                              ; preds = %92
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 69
  br i1 %124, label %125, label %155

125:                                              ; preds = %117
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @XVECLEN(i64 %126, i32 %127)
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %151, %125
  %131 = load i32, i32* %13, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i64, i64* %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i64 @XVECEXP(i64 %134, i32 %135, i32 %136)
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i64 @find_use_as_address(i64 %137, i64 %138, i64 %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i64, i64* %12, align 8
  store i64 %144, i64* %11, align 8
  br label %150

145:                                              ; preds = %133
  %146 = load i64, i64* %12, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i64 1, i64* %4, align 8
  br label %162

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %143
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %13, align 4
  br label %130

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %116
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %10, align 4
  br label %89

160:                                              ; preds = %89
  %161 = load i64, i64* %11, align 8
  store i64 %161, i64* %4, align 8
  br label %162

162:                                              ; preds = %160, %148, %114, %84, %78, %62, %30
  %163 = load i64, i64* %4, align 8
  ret i64 %163
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
