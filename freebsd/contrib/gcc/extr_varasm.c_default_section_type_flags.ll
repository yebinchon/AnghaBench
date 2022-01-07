; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_default_section_type_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_default_section_type_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@SECTION_CODE = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@UNLIKELY_EXECUTED_TEXT_SECTION_NAME = common dso_local global i8* null, align 8
@SECTION_WRITE = common dso_local global i32 0, align 4
@SECTION_LINKONCE = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@SECTION_TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".bss.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.b.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".sbss.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.sb.\00", align 1
@SECTION_BSS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c".tdata\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c".tdata.\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.td.\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".tbss\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c".tbss.\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.tb.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c".init_array\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c".fini_array\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c".preinit_array\00", align 1
@SECTION_NOTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_section_type_flags(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @SECTION_CODE, align 4
  store i32 %16, i32* %7, align 4
  br label %67

17:                                               ; preds = %10, %3
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @decl_readonly_section(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %66

26:                                               ; preds = %20, %17
  %27 = load i64, i64* @current_function_decl, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %38, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SECTION_CODE, align 4
  store i32 %45, i32* %7, align 4
  br label %65

46:                                               ; preds = %37, %32, %29, %26
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @current_function_decl, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** @UNLIKELY_EXECUTED_TEXT_SECTION_NAME, align 8
  %58 = call i64 @strcmp(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @SECTION_CODE, align 4
  store i32 %61, i32* %7, align 4
  br label %64

62:                                               ; preds = %55, %52, %46
  %63 = load i32, i32* @SECTION_WRITE, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %25
  br label %67

67:                                               ; preds = %66, %15
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @DECL_ONE_ONLY(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @SECTION_LINKONCE, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %70, %67
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @TREE_CODE(i64 %82)
  %84 = load i64, i64* @VAR_DECL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @DECL_THREAD_LOCAL_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @SECTION_TLS, align 4
  %92 = load i32, i32* @SECTION_WRITE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %86, %81, %78
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @strncmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strncmp(i8* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116, %112, %108, %104, %100, %96
  %121 = load i32, i32* @SECTION_BSS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i8*, i8** %5, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %5, align 8
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %5, align 8
  %134 = call i64 @strncmp(i8* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 17)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132, %128, %124
  %137 = load i32, i32* @SECTION_TLS, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i8*, i8** %5, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %5, align 8
  %146 = call i64 @strncmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %5, align 8
  %150 = call i64 @strncmp(i8* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 17)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148, %144, %140
  %153 = load i32, i32* @SECTION_TLS, align 4
  %154 = load i32, i32* @SECTION_BSS, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %152, %148
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @SECTION_CODE, align 4
  %161 = load i32, i32* @SECTION_BSS, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @SECTION_TLS, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %159, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %158
  %168 = load i8*, i8** %5, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %5, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175, %171, %167
  %180 = load i32, i32* @SECTION_NOTYPE, align 4
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %179, %175, %158
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @decl_readonly_section(i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @DECL_ONE_ONLY(i64) #1

declare dso_local i64 @DECL_THREAD_LOCAL_P(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
