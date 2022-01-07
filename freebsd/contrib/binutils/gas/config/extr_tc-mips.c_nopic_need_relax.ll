; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nopic_need_relax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nopic_need_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_switch_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"eprol\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"etext\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_gp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"edata\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_fbss\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_fdata\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"_ftext\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"_gp_disp\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".lit4\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c".sdata.\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c".sbss.\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.sb.\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @nopic_need_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nopic_need_relax(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

12:                                               ; preds = %2
  %13 = load i64, i64* @g_switch_value, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @S_GET_NAME(i32* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %40, %36, %32, %28, %24, %20
  store i32 1, i32* %7, align 4
  br label %143

57:                                               ; preds = %52, %15
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @S_IS_DEFINED(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @S_IS_COMMON(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %61, %57
  %66 = load i32*, i32** %4, align 8
  %67 = call %struct.TYPE_2__* @symbol_get_obj(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32*, i32** %4, align 8
  %73 = call %struct.TYPE_2__* @symbol_get_obj(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @g_switch_value, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %100, label %78

78:                                               ; preds = %71, %65
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = call %struct.TYPE_2__* @symbol_get_obj(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @S_GET_VALUE(i32* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87, %81, %78
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @S_GET_VALUE(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @S_GET_VALUE(i32* %96)
  %98 = load i64, i64* @g_switch_value, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %87, %71
  store i32 0, i32* %7, align 4
  br label %142

101:                                              ; preds = %95, %91, %61
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @S_GET_SEGMENT(i32* %102)
  %104 = call i8* @segment_name(i32 %103)
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %108, %101
  %113 = phi i1 [ false, %101 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %112
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i8*, i8** %8, align 8
  %129 = call i64 @strncmp(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 6)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 17)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 16)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %135, %131, %127, %123, %119, %112
  %140 = phi i1 [ false, %131 ], [ false, %127 ], [ false, %123 ], [ false, %119 ], [ false, %112 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %100
  br label %143

143:                                              ; preds = %142, %56
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %12
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %143, %11
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_IS_COMMON(i32*) #1

declare dso_local %struct.TYPE_2__* @symbol_get_obj(i32*) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i8* @segment_name(i32) #1

declare dso_local i32 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
