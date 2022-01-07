; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qword_get(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %20, %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %58, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @hex_to_bin(i8 signext %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %70

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @hex_to_bin(i8 signext %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %60, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %38

70:                                               ; preds = %57, %49, %38
  br label %163

71:                                               ; preds = %29, %23
  br label %72

72:                                               ; preds = %161, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 32
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br label %92

92:                                               ; preds = %87, %82, %77, %72
  %93 = phi i1 [ false, %82 ], [ false, %77 ], [ false, %72 ], [ %91, %87 ]
  br i1 %93, label %94, label %162

94:                                               ; preds = %92
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 92
  br i1 %98, label %99, label %153

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isodigit(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %153

105:                                              ; preds = %99
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 51
  br i1 %110, label %111, label %153

111:                                              ; preds = %105
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @isodigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isodigit(i8 signext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %117
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  %131 = load i32, i32* %12, align 4
  %132 = shl i32 %131, 3
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %8, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  %138 = or i32 %132, %137
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = shl i32 %139, 3
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %141, align 1
  %144 = sext i8 %143 to i32
  %145 = sub nsw i32 %144, 48
  %146 = or i32 %140, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %6, align 8
  store i8 %148, i8* %149, align 1
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %161

153:                                              ; preds = %117, %111, %105, %99, %94
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %8, align 8
  %156 = load i8, i8* %154, align 1
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %153, %123
  br label %72

162:                                              ; preds = %92
  br label %163

163:                                              ; preds = %162, %70
  %164 = load i8*, i8** %8, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 32
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load i8*, i8** %8, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 10
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 -1, i32* %4, align 4
  br label %193

179:                                              ; preds = %173, %168, %163
  br label %180

180:                                              ; preds = %185, %179
  %181 = load i8*, i8** %8, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 32
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %8, align 8
  br label %180

188:                                              ; preds = %180
  %189 = load i8*, i8** %8, align 8
  %190 = load i8**, i8*** %5, align 8
  store i8* %189, i8** %190, align 8
  %191 = load i8*, i8** %6, align 8
  store i8 0, i8* %191, align 1
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %188, %178
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i64 @isodigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
