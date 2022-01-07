; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_defs_relevancy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_defs_relevancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, %struct.see_entry_extra_info* }
%struct.see_entry_extra_info = type { i32, i32, i32, i32, i32, i32 }

@df = common dso_local global i32 0, align 4
@def_entry = common dso_local global %struct.TYPE_2__* null, align 8
@defs_num = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@NOT_RELEVANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"d%i insn %i reg %i \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NOT RELEVANT \0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"RELEVANT - \00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SIGN_EXTENDED_DEF, source_mode = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"ZERO_EXTENDED_DEF, source_mode = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXTENDED_DEF, \00", align 1
@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"positive const, \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"source_mode_signed = %s, \00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"source_mode_unsigned = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"source_mode_signed = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_update_defs_relevancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_update_defs_relevancy() #0 {
  %1 = alloca %struct.see_entry_extra_info*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32, i32* @df, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @def_entry, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  br label %158

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %155, %14
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @defs_num, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %158

19:                                               ; preds = %15
  %20 = load i32, i32* @df, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @DF_DEFS_GET(i32 %20, i32 %21)
  %23 = call i32* @DF_REF_INSN(i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* @df, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @DF_DEFS_GET(i32 %24, i32 %25)
  %27 = call i32* @DF_REF_REAL_REG(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @see_analyze_one_def(i32* %28, i32* %6, i32* %7)
  store i32 %29, i32* %5, align 4
  %30 = call %struct.see_entry_extra_info* @xmalloc(i32 24)
  store %struct.see_entry_extra_info* %30, %struct.see_entry_extra_info** %1, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %33 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %36 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 130
  br i1 %38, label %39, label %46

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %42 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %45 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %53

46:                                               ; preds = %19
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %49 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %52 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %1, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @def_entry, align 8
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store %struct.see_entry_extra_info* %54, %struct.see_entry_extra_info** %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @def_entry, align 8
  %61 = load i32, i32* %2, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @def_entry, align 8
  %66 = load i32, i32* %2, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i64, i64* @dump_file, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %154

72:                                               ; preds = %53
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @NOT_RELEVANT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load i64, i64* @dump_file, align 8
  %78 = load i32, i32* %2, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @INSN_UID(i32* %82)
  br label %85

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ -1, %84 ]
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @REGNO(i32* %87)
  %89 = call i32 (i64, i8*, ...) @fprintf(i64 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %86, i32 %88)
  %90 = load i64, i64* @dump_file, align 8
  %91 = call i32 (i64, i8*, ...) @fprintf(i64 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %153

92:                                               ; preds = %72
  %93 = load i64, i64* @dump_file, align 8
  %94 = load i32, i32* %2, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @INSN_UID(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @REGNO(i32* %97)
  %99 = call i32 (i64, i8*, ...) @fprintf(i64 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %96, i32 %98)
  %100 = load i64, i64* @dump_file, align 8
  %101 = call i32 (i64, i8*, ...) @fprintf(i64 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  switch i32 %102, label %150 [
    i32 129, label %103
    i32 128, label %108
    i32 130, label %113
  ]

103:                                              ; preds = %92
  %104 = load i64, i64* @dump_file, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i8* @GET_MODE_NAME(i32 %105)
  %107 = call i32 (i64, i8*, ...) @fprintf(i64 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  br label %152

108:                                              ; preds = %92
  %109 = load i64, i64* @dump_file, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i8* @GET_MODE_NAME(i32 %110)
  %112 = call i32 (i64, i8*, ...) @fprintf(i64 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %152

113:                                              ; preds = %92
  %114 = load i64, i64* @dump_file, align 8
  %115 = call i32 (i64, i8*, ...) @fprintf(i64 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load i64, i64* @dump_file, align 8
  %125 = call i32 (i64, i8*, ...) @fprintf(i64 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i64, i64* @dump_file, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i8* @GET_MODE_NAME(i32 %127)
  %129 = call i32 (i64, i8*, ...) @fprintf(i64 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = load i64, i64* @dump_file, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i8* @GET_MODE_NAME(i32 %131)
  %133 = call i32 (i64, i8*, ...) @fprintf(i64 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %132)
  br label %149

134:                                              ; preds = %119, %113
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i64, i64* @dump_file, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i8* @GET_MODE_NAME(i32 %140)
  %142 = call i32 (i64, i8*, ...) @fprintf(i64 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %141)
  br label %148

143:                                              ; preds = %134
  %144 = load i64, i64* @dump_file, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i8* @GET_MODE_NAME(i32 %145)
  %147 = call i32 (i64, i8*, ...) @fprintf(i64 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %123
  br label %152

150:                                              ; preds = %92
  %151 = call i32 (...) @gcc_unreachable()
  br label %152

152:                                              ; preds = %150, %149, %108, %103
  br label %153

153:                                              ; preds = %152, %85
  br label %154

154:                                              ; preds = %153, %53
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %2, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %2, align 4
  br label %15

158:                                              ; preds = %13, %15
  ret void
}

declare dso_local i32* @DF_REF_INSN(i32) #1

declare dso_local i32 @DF_DEFS_GET(i32, i32) #1

declare dso_local i32* @DF_REF_REAL_REG(i32) #1

declare dso_local i32 @see_analyze_one_def(i32*, i32*, i32*) #1

declare dso_local %struct.see_entry_extra_info* @xmalloc(i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @INSN_UID(i32*) #1

declare dso_local i32 @REGNO(i32*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
