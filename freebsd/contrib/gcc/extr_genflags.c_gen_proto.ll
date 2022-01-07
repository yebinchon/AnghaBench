; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"call_pop\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sibcall\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sibcall_pop\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"call_value\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"call_value_pop\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sibcall_value\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"sibcall_value_pop\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"extern rtx        gen_%-*s (\00", align 1
@max_id_len = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"static inline rtx gen_%-*s (\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"rtx, \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rtx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"static inline rtx\0Agen_%s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"rtx ARG_UNUSED (%c), \00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"rtx ARG_UNUSED (%c))\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"(void)\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"{\0A  return 0;\0A}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_proto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @num_operands(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @XSTR(i32 %9, i32 0)
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @XSTR(i32 %11, i32 2)
  %13 = call i32 @maybe_eval_c_test(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 99
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 115
  br i1 %24, label %25, label %67

25:                                               ; preds = %19, %1
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %33, %29, %25
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @gen_macro(i8* %42, i32 %43, i32 4)
  br label %66

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %53, %49, %45
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @gen_macro(i8* %62, i32 %63, i32 5)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %19
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** @max_id_len, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %71, i8* %72)
  br label %78

74:                                               ; preds = %67
  %75 = load i8*, i8** @max_id_len, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  br label %98

84:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %92, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* @stdout, align 4
  %97 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %81
  %99 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %3, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = call i32 @putchar(i8 signext 40)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %118, %107
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 97, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 97, %122
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %123)
  br label %127

125:                                              ; preds = %102
  %126 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121
  %128 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %98
  ret void
}

declare dso_local i32 @num_operands(i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @maybe_eval_c_test(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gen_macro(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
