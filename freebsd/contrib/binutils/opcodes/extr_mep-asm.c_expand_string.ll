; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_expand_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_expand_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i32 }

@MAXARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @expand_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %15 = load i32, i32* @MAXARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.TYPE_7__, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 128, i32* %10, align 4
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  br label %20

20:                                               ; preds = %182, %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %185

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %182 [
    i32 128, label %26
    i32 129, label %98
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %97

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call %struct.TYPE_6__* @lookup_macro(i8* %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %96

49:                                               ; preds = %43
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @str_append(i8* %50, i8* %51, i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %3, align 8
  store i8* %59, i8** %11, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 1, %63
  %65 = load i8*, i8** %3, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %73, %49
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  br label %68

76:                                               ; preds = %68
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 40
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 128, i32* %10, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  br label %95

82:                                               ; preds = %76
  store i32 129, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 16
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %11, align 8
  br label %95

95:                                               ; preds = %82, %81
  br label %96

96:                                               ; preds = %95, %43
  br label %97

97:                                               ; preds = %96, %40, %31, %26
  br label %182

98:                                               ; preds = %24
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %162

101:                                              ; preds = %98
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %154 [
    i32 44, label %105
    i32 41, label %118
    i32 40, label %151
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 16
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 8
  br label %161

118:                                              ; preds = %101
  store i32 128, i32* %10, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = icmp ne %struct.TYPE_6__* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  store i8* null, i8** %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %124 = call i8* @expand_macro(%struct.TYPE_7__* %18, i32 %122, %struct.TYPE_6__* %123)
  store i8* %124, i8** %13, align 8
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  %127 = load i8*, i8** %13, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = call i8* @str_append(i8* %130, i8* %131, i32 %133)
  store i8* %134, i8** %14, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %129, %121
  br label %148

138:                                              ; preds = %118
  %139 = load i8*, i8** %14, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i8* @str_append(i8* %139, i8* %140, i32 %146)
  store i8* %147, i8** %14, align 8
  br label %148

148:                                              ; preds = %138, %137
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %11, align 8
  br label %161

151:                                              ; preds = %101
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %101, %151
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %154, %148, %105
  br label %181

162:                                              ; preds = %98
  %163 = load i8*, i8** %3, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 41
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* %7, align 4
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %173, %170
  br label %181

181:                                              ; preds = %180, %161
  br label %182

182:                                              ; preds = %181, %24, %97
  %183 = load i8*, i8** %3, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %3, align 8
  br label %20

185:                                              ; preds = %20
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = icmp ne i8* %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load i8*, i8** %14, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = call i8* @str_append(i8* %190, i8* %191, i32 %197)
  store i8* %198, i8** %14, align 8
  br label %199

199:                                              ; preds = %189, %185
  %200 = load i8*, i8** %14, align 8
  %201 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %201)
  ret i8* %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @lookup_macro(i8*) #2

declare dso_local i8* @str_append(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @expand_macro(%struct.TYPE_7__*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
