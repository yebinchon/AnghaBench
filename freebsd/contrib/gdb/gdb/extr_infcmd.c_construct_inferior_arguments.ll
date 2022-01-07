; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_construct_inferior_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_construct_inferior_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@STARTUP_WITH_SHELL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"\22!#$&*()\\|[]{}<>?'\22`~^; \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"can't handle command-line argument containing whitespace\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @construct_inferior_arguments(%struct.gdbarch* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %16 = load i64, i64* @STARTUP_WITH_SHELL, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %113

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %30, 1
  %32 = load i8**, i8*** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %31, %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %23
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @xmalloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %108, %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  store i8 32, i8* %62, align 1
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 39, i8* %75, align 1
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  store i8 39, i8* %77, align 1
  br label %107

79:                                               ; preds = %64
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  br label %85

85:                                               ; preds = %103, %79
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i8* @strchr(i8* %90, i8 signext %92)
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %11, align 8
  store i8 92, i8* %96, align 1
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i8*, i8** %12, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %12, align 8
  br label %85

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106, %74
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %54

111:                                              ; preds = %54
  %112 = load i8*, i8** %11, align 8
  store i8 0, i8* %112, align 1
  br label %190

113:                                              ; preds = %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %159, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %114
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strchr(i8* %123, i8 signext 32)
  store i8* %124, i8** %15, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @strchr(i8* %132, i8 signext 9)
  store i8* %133, i8** %15, align 8
  br label %134

134:                                              ; preds = %127, %118
  %135 = load i8*, i8** %15, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i8**, i8*** %6, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 10)
  store i8* %143, i8** %15, align 8
  br label %144

144:                                              ; preds = %137, %134
  %145 = load i8*, i8** %15, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i8**, i8*** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %114

162:                                              ; preds = %114
  %163 = load i32, i32* %14, align 4
  %164 = call i64 @xmalloc(i32 %163)
  %165 = inttoptr i64 %164 to i8*
  store i8* %165, i8** %7, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 0, i8* %167, align 1
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %186, %162
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32, i32* %13, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @strcat(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i8*, i8** %7, align 8
  %180 = load i8**, i8*** %6, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strcat(i8* %179, i8* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %168

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189, %111
  %191 = load i8*, i8** %7, align 8
  ret i8* %191
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
