; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_DirExpandCurly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_DirExpandCurly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Unterminated {} clause \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @DirExpandCurly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DirExpandCurly(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  store i8* %18, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 123
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 125
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %12, align 4
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %47

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  br label %19

47:                                               ; preds = %41, %19
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %201

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i8*, i8** %11, align 8
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %198, %58
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %201

74:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 44
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 123
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %99

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 125
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  %96 = icmp sle i32 %94, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %102

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  br label %75

102:                                              ; preds = %97, %75
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8*, i8** %11, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = add nsw i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i8* @bmake_malloc(i32 %112)
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = icmp ne i8* %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %102
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @strncpy(i8* %118, i8* %119, i32 %125)
  br label %127

127:                                              ; preds = %117, %102
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = icmp ne i8* %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %132, i64 %137
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @strncpy(i8* %138, i8* %139, i32 %145)
  br label %147

147:                                              ; preds = %131, %127
  %148 = load i8*, i8** %13, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = add nsw i64 %153, %158
  %160 = getelementptr inbounds i8, i8* %148, i64 %159
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 @strcpy(i8* %160, i8* %161)
  %163 = load i8*, i8** %13, align 8
  store i8* %163, i8** %15, align 8
  br label %164

164:                                              ; preds = %179, %147
  %165 = load i8*, i8** %15, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load i8*, i8** %15, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  switch i32 %172, label %178 [
    i32 42, label %173
    i32 63, label %173
    i32 123, label %173
    i32 91, label %173
  ]

173:                                              ; preds = %169, %169, %169, %169
  %174 = load i8*, i8** %13, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @Dir_Expand(i8* %174, i32 %175, i32 %176)
  br label %192

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %15, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %15, align 8
  br label %164

182:                                              ; preds = %164
  %183 = load i8*, i8** %15, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* %8, align 4
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @Lst_AtEnd(i32 %188, i8* %189)
  br label %195

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %173
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @free(i8* %193)
  br label %195

195:                                              ; preds = %192, %187
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  store i8* %197, i8** %11, align 8
  br label %198

198:                                              ; preds = %195
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %10, align 8
  br label %70

201:                                              ; preds = %52, %70
  ret void
}

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bmake_malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Dir_Expand(i8*, i32, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
