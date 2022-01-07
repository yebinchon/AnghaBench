; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_struct_debug_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_set_struct_debug_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_struct_debug_option.dfn_lbl = internal global [5 x i8] c"dfn:\00", align 1
@set_struct_debug_option.dir_lbl = internal global [5 x i8] c"dir:\00", align 1
@set_struct_debug_option.ind_lbl = internal global [5 x i8] c"ind:\00", align 1
@set_struct_debug_option.ord_lbl = internal global [5 x i8] c"ord:\00", align 1
@set_struct_debug_option.gen_lbl = internal global [5 x i8] c"gen:\00", align 1
@set_struct_debug_option.none_lbl = internal global [5 x i8] c"none\00", align 1
@set_struct_debug_option.any_lbl = internal global [4 x i8] c"any\00", align 1
@set_struct_debug_option.base_lbl = internal global [5 x i8] c"base\00", align 1
@set_struct_debug_option.sys_lbl = internal global [4 x i8] c"sys\00", align 1
@DINFO_STRUCT_FILE_ANY = common dso_local global i32 0, align 4
@DINFO_USAGE_NUM_ENUMS = common dso_local global i32 0, align 4
@DINFO_USAGE_DFN = common dso_local global i64 0, align 8
@DINFO_USAGE_DIR_USE = common dso_local global i64 0, align 8
@DINFO_USAGE_IND_USE = common dso_local global i64 0, align 8
@DINFO_STRUCT_FILE_NONE = common dso_local global i32 0, align 4
@DINFO_STRUCT_FILE_SYS = common dso_local global i32 0, align 4
@DINFO_STRUCT_FILE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"argument %qs to %<-femit-struct-debug-detailed%> not recognized\00", align 1
@debug_struct_ordinary = common dso_local global i32* null, align 8
@debug_struct_generic = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"argument %qs to %<-femit-struct-debug-detailed%> unknown\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"%<-femit-struct-debug-detailed=dir:...%> must allow at least as much as %<-femit-struct-debug-detailed=ind:...%>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_struct_debug_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @DINFO_STRUCT_FILE_ANY, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @DINFO_USAGE_NUM_ENUMS, align 4
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.dfn_lbl, i64 0, i64 0), i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* @DINFO_USAGE_DFN, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.dir_lbl, i64 0, i64 0), i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @DINFO_USAGE_DIR_USE, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.ind_lbl, i64 0, i64 0), i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @DINFO_USAGE_IND_USE, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.ord_lbl, i64 0, i64 0), i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.gen_lbl, i64 0, i64 0), i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %2, align 8
  %44 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.none_lbl, i64 0, i64 0), i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @DINFO_STRUCT_FILE_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %42
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @MATCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @set_struct_debug_option.any_lbl, i64 0, i64 0), i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @DINFO_STRUCT_FILE_ANY, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %48
  %55 = load i8*, i8** %2, align 8
  %56 = call i64 @MATCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @set_struct_debug_option.sys_lbl, i64 0, i64 0), i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @DINFO_STRUCT_FILE_SYS, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %54
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @MATCH(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_struct_debug_option.base_lbl, i64 0, i64 0), i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @DINFO_STRUCT_FILE_BASE, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %64
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @DINFO_USAGE_NUM_ENUMS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = load i32*, i32** @debug_struct_ordinary, align 8
  %82 = load i64, i64* @DINFO_USAGE_DFN, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32*, i32** @debug_struct_ordinary, align 8
  %86 = load i64, i64* @DINFO_USAGE_DIR_USE, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32*, i32** @debug_struct_ordinary, align 8
  %90 = load i64, i64* @DINFO_USAGE_IND_USE, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %79, %76
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = load i32*, i32** @debug_struct_generic, align 8
  %98 = load i64, i64* @DINFO_USAGE_DFN, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32*, i32** @debug_struct_generic, align 8
  %102 = load i64, i64* @DINFO_USAGE_DIR_USE, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32*, i32** @debug_struct_generic, align 8
  %106 = load i64, i64* @DINFO_USAGE_IND_USE, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %92
  br label %128

109:                                              ; preds = %72
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load i32*, i32** @debug_struct_ordinary, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %109
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = load i32*, i32** @debug_struct_generic, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %118
  br label %128

128:                                              ; preds = %127, %108
  %129 = load i8*, i8** %2, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 44
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %2, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  call void @set_struct_debug_option(i8* %135)
  br label %167

136:                                              ; preds = %128
  %137 = load i8*, i8** %2, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %2, align 8
  %143 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32*, i32** @debug_struct_ordinary, align 8
  %146 = load i64, i64* @DINFO_USAGE_DIR_USE, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** @debug_struct_ordinary, align 8
  %150 = load i64, i64* @DINFO_USAGE_IND_USE, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %148, %152
  br i1 %153, label %164, label %154

154:                                              ; preds = %144
  %155 = load i32*, i32** @debug_struct_generic, align 8
  %156 = load i64, i64* @DINFO_USAGE_DIR_USE, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** @debug_struct_generic, align 8
  %160 = load i64, i64* @DINFO_USAGE_IND_USE, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %154, %144
  %165 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %154
  br label %167

167:                                              ; preds = %166, %133
  ret void
}

declare dso_local i64 @MATCH(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
