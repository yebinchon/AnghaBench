; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_eeprom_fix.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32 (%struct.carlfw*, %struct.carl9170fw_fix_desc*, i8, i32, i8**)* }
%struct.carlfw = type { i32 }
%struct.carl9170fw_fix_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to open file \22%s\22 (%d).\0A\00", align 1
@FIX_MAGIC = common dso_local global i64 0, align 8
@CARL9170FW_FIX_DESC_CUR_VER = common dso_local global i32 0, align 4
@programm_function = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown option: '%c'\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to apply changes (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.carl9170fw_fix_desc*, align 8
  %7 = alloca %struct.carlfw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.carlfw* null, %struct.carlfw** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %120

19:                                               ; preds = %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.carlfw* @carlfw_load(i8* %22)
  store %struct.carlfw* %23, %struct.carlfw** %7, align 8
  %24 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %25 = call i64 @IS_ERR_OR_NULL(%struct.carlfw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.carlfw* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  br label %120

36:                                               ; preds = %19
  %37 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %38 = load i64, i64* @FIX_MAGIC, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* @CARL9170FW_FIX_DESC_CUR_VER, align 4
  %41 = call %struct.carl9170fw_fix_desc* @carlfw_find_desc(%struct.carlfw* %37, i32* %39, i32 4, i32 %40)
  store %struct.carl9170fw_fix_desc* %41, %struct.carl9170fw_fix_desc** %6, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %93, %36
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @programm_function, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %47
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @programm_function, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 8
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* %10, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %93

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @programm_function, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %65, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %120

76:                                               ; preds = %64
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @programm_function, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32 (%struct.carlfw*, %struct.carl9170fw_fix_desc*, i8, i32, i8**)*, i32 (%struct.carlfw*, %struct.carl9170fw_fix_desc*, i8, i32, i8**)** %81, align 8
  %83 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %84 = load %struct.carl9170fw_fix_desc*, %struct.carl9170fw_fix_desc** %6, align 8
  %85 = load i8, i8* %10, align 1
  %86 = load i32, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = call i32 %82(%struct.carlfw* %83, %struct.carl9170fw_fix_desc* %84, i8 signext %85, i32 %86, i8** %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %120

92:                                               ; preds = %76
  br label %96

93:                                               ; preds = %63
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %47

96:                                               ; preds = %92, %47
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @programm_function, align 8
  %99 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %98)
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %120

110:                                              ; preds = %96
  %111 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %112 = call i32 @carlfw_store(%struct.carlfw* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %120

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %115, %101, %91, %73, %27, %16
  %121 = load %struct.carlfw*, %struct.carlfw** %7, align 8
  %122 = call i32 @carlfw_release(%struct.carlfw* %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 (...) @user_education()
  br label %137

132:                                              ; preds = %125
  %133 = load i32, i32* @stderr, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i8* @strerror(i32 %134)
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %132, %130
  br label %138

138:                                              ; preds = %137, %120
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  ret i32 %146
}

declare dso_local %struct.carlfw* @carlfw_load(i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlfw*) #1

declare dso_local i32 @PTR_ERR(%struct.carlfw*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.carl9170fw_fix_desc* @carlfw_find_desc(%struct.carlfw*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @carlfw_store(%struct.carlfw*) #1

declare dso_local i32 @carlfw_release(%struct.carlfw*) #1

declare dso_local i32 @user_education(...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
