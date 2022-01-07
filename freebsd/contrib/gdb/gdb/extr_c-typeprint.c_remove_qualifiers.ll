; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_remove_qualifiers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_remove_qualifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @remove_qualifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @remove_qualifiers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i64 @alloca(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %178, %1
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %181

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %44

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %40, %34, %29
  br label %44

44:                                               ; preds = %43, %28
  br label %177

45:                                               ; preds = %19
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 58
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %60, %57
  br label %176

66:                                               ; preds = %51, %45
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 39
  br i1 %75, label %76, label %80

76:                                               ; preds = %71, %66
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %175

80:                                               ; preds = %71
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 40
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 41, i8* %90, align 1
  br label %174

91:                                               ; preds = %80
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 93, i8* %101, align 1
  br label %173

102:                                              ; preds = %91
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 60
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 62, i8* %112, align 1
  br label %172

113:                                              ; preds = %102
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 41
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 93
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 62
  br i1 %127, label %128, label %171

128:                                              ; preds = %123, %118, %113
  %129 = load i32, i32* %5, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8*, i8** %7, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %5, align 4
  br label %170

146:                                              ; preds = %131, %128
  %147 = load i32, i32* %5, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %166, %146
  %150 = load i32, i32* %9, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8*, i8** %7, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %5, align 4
  br label %169

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %9, align 4
  br label %149

169:                                              ; preds = %163, %149
  br label %170

170:                                              ; preds = %169, %143
  br label %171

171:                                              ; preds = %170, %123
  br label %172

172:                                              ; preds = %171, %107
  br label %173

173:                                              ; preds = %172, %96
  br label %174

174:                                              ; preds = %173, %85
  br label %175

175:                                              ; preds = %174, %76
  br label %176

176:                                              ; preds = %175, %65
  br label %177

177:                                              ; preds = %176, %44
  br label %178

178:                                              ; preds = %177
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %7, align 8
  br label %15

181:                                              ; preds = %15
  %182 = load i8*, i8** %8, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i8*, i8** %8, align 8
  store i8* %185, i8** %2, align 8
  br label %188

186:                                              ; preds = %181
  %187 = load i8*, i8** %3, align 8
  store i8* %187, i8** %2, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = load i8*, i8** %2, align 8
  ret i8* %189
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
