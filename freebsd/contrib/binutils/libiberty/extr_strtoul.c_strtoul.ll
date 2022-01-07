; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtoul.c_strtoul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtoul.c_strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoul(i8* %0, i8** %1, i32 %2) #0 {
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
  %76 = load i64, i64* @ULONG_MAX, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %76, %78
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* @ULONG_MAX, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = urem i64 %80, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %137, %75
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @ISDIGIT(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 48
  store i32 %91, i32* %9, align 4
  br label %106

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @ISALPHA(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @ISUPPER(i32 %97)
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 55, i32 87
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %105

104:                                              ; preds = %92
  br label %142

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %142

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %114, %111
  store i32 -1, i32* %12, align 4
  br label %136

127:                                              ; preds = %122, %118
  store i32 1, i32* %12, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %8, align 8
  %131 = mul i64 %130, %129
  store i64 %131, i64* %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %127, %126
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %7, align 8
  %140 = load i8, i8* %138, align 1
  %141 = sext i8 %140 to i32
  store i32 %141, i32* %9, align 4
  br label %85

142:                                              ; preds = %110, %104
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* @ULONG_MAX, align 8
  store i64 %146, i64* %8, align 8
  %147 = load i32, i32* @ERANGE, align 4
  store i32 %147, i32* @errno, align 4
  br label %155

148:                                              ; preds = %142
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, i64* %8, align 8
  %153 = sub i64 0, %152
  store i64 %153, i64* %8, align 8
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %145
  %156 = load i8**, i8*** %5, align 8
  %157 = icmp ne i8** %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  br label %166

164:                                              ; preds = %158
  %165 = load i8*, i8** %4, align 8
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i8* [ %163, %161 ], [ %165, %164 ]
  %168 = load i8**, i8*** %5, align 8
  store i8* %167, i8** %168, align 8
  br label %169

169:                                              ; preds = %166, %155
  %170 = load i64, i64* %8, align 8
  ret i64 %170
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
