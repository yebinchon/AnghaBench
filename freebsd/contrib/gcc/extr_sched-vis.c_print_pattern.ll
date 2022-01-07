; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_print_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_print_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"clobber %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@NE = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"(%s) %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"asm {%s}\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"trap_if %s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unspec{\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"unspec/v{\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @print_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pattern(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @BUF_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @BUF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i32, i32* @BUF_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GET_CODE(i32 %24)
  switch i32 %25, label %190 [
    i32 132, label %26
    i32 134, label %37
    i32 138, label %40
    i32 137, label %45
    i32 128, label %52
    i32 136, label %59
    i32 135, label %109
    i32 133, label %129
    i32 139, label %131
    i32 140, label %136
    i32 141, label %137
    i32 131, label %143
    i32 130, label %150
    i32 129, label %170
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @SET_DEST(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @print_value(i8* %17, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @SET_SRC(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @print_value(i8* %20, i32 %32, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %20)
  br label %195

37:                                               ; preds = %3
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %195

40:                                               ; preds = %3
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @print_exp(i8* %41, i32 %42, i32 %43)
  br label %195

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @XEXP(i32 %46, i32 0)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @print_value(i8* %17, i32 %47, i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %195

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @XEXP(i32 %53, i32 0)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @print_value(i8* %17, i32 %54, i32 %55)
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  br label %195

59:                                               ; preds = %3
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @COND_EXEC_TEST(i32 %60)
  %62 = call i32 @GET_CODE(i32 %61)
  %63 = load i32, i32* @NE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @COND_EXEC_TEST(i32 %66)
  %68 = call i32 @XEXP(i32 %67, i32 1)
  %69 = load i32, i32* @const0_rtx, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @COND_EXEC_TEST(i32 %72)
  %74 = call i32 @XEXP(i32 %73, i32 0)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @print_value(i8* %17, i32 %74, i32 %75)
  br label %103

77:                                               ; preds = %65, %59
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @COND_EXEC_TEST(i32 %78)
  %80 = call i32 @GET_CODE(i32 %79)
  %81 = load i32, i32* @EQ, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @COND_EXEC_TEST(i32 %84)
  %86 = call i32 @XEXP(i32 %85, i32 1)
  %87 = load i32, i32* @const0_rtx, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 33, i8* %90, align 16
  %91 = getelementptr inbounds i8, i8* %17, i64 1
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @COND_EXEC_TEST(i32 %92)
  %94 = call i32 @XEXP(i32 %93, i32 0)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @print_value(i8* %91, i32 %94, i32 %95)
  br label %102

97:                                               ; preds = %83, %77
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @COND_EXEC_TEST(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @print_value(i8* %17, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %89
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @COND_EXEC_CODE(i32 %104)
  %106 = load i32, i32* %6, align 4
  call void @print_pattern(i8* %20, i32 %105, i32 %106)
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %17, i8* %20)
  br label %195

109:                                              ; preds = %3
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %123, %109
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @XVECLEN(i32 %113, i32 0)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @XVECEXP(i32 %117, i32 0, i32 %118)
  %120 = load i32, i32* %6, align 4
  call void @print_pattern(i8* %20, i32 %119, i32 %120)
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, i8* %20)
  %122 = call i32 @strcpy(i8* %17, i8* %23)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %111

126:                                              ; preds = %111
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %17)
  br label %195

129:                                              ; preds = %3
  %130 = call i32 (...) @gcc_unreachable()
  br label %131

131:                                              ; preds = %3, %129
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i8* @XSTR(i32 %133, i32 0)
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  br label %195

136:                                              ; preds = %3
  br label %195

137:                                              ; preds = %3
  %138 = load i8*, i8** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @XEXP(i32 %139, i32 0)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @print_value(i8* %138, i32 %140, i32 %141)
  br label %195

143:                                              ; preds = %3
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @TRAP_CONDITION(i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @print_value(i8* %17, i32 %145, i32 %146)
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  br label %195

150:                                              ; preds = %3
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %164, %150
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @XVECLEN(i32 %154, i32 0)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @XVECEXP(i32 %158, i32 0, i32 %159)
  %161 = load i32, i32* %6, align 4
  call void @print_pattern(i8* %20, i32 %160, i32 %161)
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, i8* %20)
  %163 = call i32 @strcpy(i8* %17, i8* %23)
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %152

167:                                              ; preds = %152
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %17)
  br label %195

170:                                              ; preds = %3
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %184, %170
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @XVECLEN(i32 %174, i32 0)
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @XVECEXP(i32 %178, i32 0, i32 %179)
  %181 = load i32, i32* %6, align 4
  call void @print_pattern(i8* %20, i32 %180, i32 %181)
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %17, i8* %20)
  %183 = call i32 @strcpy(i8* %17, i8* %23)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %172

187:                                              ; preds = %172
  %188 = load i8*, i8** %4, align 8
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %17)
  br label %195

190:                                              ; preds = %3
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @print_value(i8* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %187, %167, %143, %137, %136, %131, %126, %103, %52, %45, %40, %37, %26
  %196 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %196)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GET_CODE(i32) #2

declare dso_local i32 @print_value(i8*, i32, i32) #2

declare dso_local i32 @SET_DEST(i32) #2

declare dso_local i32 @SET_SRC(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @print_exp(i8*, i32, i32) #2

declare dso_local i32 @XEXP(i32, i32) #2

declare dso_local i32 @COND_EXEC_TEST(i32) #2

declare dso_local i32 @COND_EXEC_CODE(i32) #2

declare dso_local i32 @XVECLEN(i32, i32) #2

declare dso_local i32 @XVECEXP(i32, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @gcc_unreachable(...) #2

declare dso_local i8* @XSTR(i32, i32) #2

declare dso_local i32 @TRAP_CONDITION(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
