; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtol.c_strtol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtol.c_strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtol(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %20, %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ISSPACE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %9, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %67

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 120
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %7, align 8
  store i32 16, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %55, %47, %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 48
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 8, i32 10
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* @LONG_MIN, align 8
  %80 = sub i64 0, %79
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @LONG_MAX, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = urem i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %10, align 8
  %93 = udiv i64 %92, %91
  store i64 %93, i64* %10, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %146, %83
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @ISDIGIT(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 48
  store i32 %100, i32* %9, align 4
  br label %115

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @ISALPHA(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @ISUPPER(i32 %106)
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 55, i32 87
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %114

113:                                              ; preds = %101
  br label %151

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %151

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %123, %120
  store i32 -1, i32* %12, align 4
  br label %145

136:                                              ; preds = %131, %127
  store i32 1, i32* %12, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %8, align 8
  %140 = mul i64 %139, %138
  store i64 %140, i64* %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %8, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %136, %135
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  store i32 %150, i32* %9, align 4
  br label %94

151:                                              ; preds = %119, %113
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i64, i64* @LONG_MIN, align 8
  br label %161

159:                                              ; preds = %154
  %160 = load i64, i64* @LONG_MAX, align 8
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i64 [ %158, %157 ], [ %160, %159 ]
  store i64 %162, i64* %8, align 8
  %163 = load i32, i32* @ERANGE, align 4
  store i32 %163, i32* @errno, align 4
  br label %171

164:                                              ; preds = %151
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, i64* %8, align 8
  %169 = sub i64 0, %168
  store i64 %169, i64* %8, align 8
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %161
  %172 = load i8**, i8*** %5, align 8
  %173 = icmp ne i8** %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 -1
  br label %182

180:                                              ; preds = %174
  %181 = load i8*, i8** %4, align 8
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i8* [ %179, %177 ], [ %181, %180 ]
  %184 = load i8**, i8*** %5, align 8
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %182, %171
  %186 = load i64, i64* %8, align 8
  ret i64 %186
}

declare dso_local i64 @ISSPACE(i32) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i64 @ISALPHA(i32) #1

declare dso_local i64 @ISUPPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
