; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/extr_common.c_perf_session_env__lookup_binutils_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/extr_common.c_perf_session_env__lookup_binutils_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session_env = type { i32 }
%struct.utsname = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"CROSS_COMPILE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_triplets = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@powerpc_triplets = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@sh_triplets = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@s390_triplets = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@sparc_triplets = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@x86_triplets = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@mips_triplets = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"binutils for %s not supported.\0A\00", align 1
@.str.10 = private unnamed_addr constant [105 x i8] c"Please install %s for %s.\0AYou can add it to PATH, set CROSS_COMPILE or override the default using --%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session_env*, i8*, i8**)* @perf_session_env__lookup_binutils_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session_env__lookup_binutils_path(%struct.perf_session_env* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session_env*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.utsname, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store %struct.perf_session_env* %0, %struct.perf_session_env** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  %14 = load %struct.perf_session_env*, %struct.perf_session_env** %5, align 8
  %15 = getelementptr inbounds %struct.perf_session_env, %struct.perf_session_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @normalize_arch(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = call i64 @uname(%struct.utsname* %11)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %133

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.utsname, %struct.utsname* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @normalize_arch(i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %133

29:                                               ; preds = %21
  %30 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %136

39:                                               ; preds = %33
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @F_OK, align 4
  %48 = call i64 @access(i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %133

51:                                               ; preds = %45
  br label %136

52:                                               ; preds = %39
  %53 = load i8*, i8** %13, align 8
  %54 = call i64 @lookup_path(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %133

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %29
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i8**, i8*** @arm_triplets, align 8
  store i8** %65, i8*** %12, align 8
  br label %111

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i8**, i8*** @powerpc_triplets, align 8
  store i8** %71, i8*** %12, align 8
  br label %110

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i8**, i8*** @sh_triplets, align 8
  store i8** %77, i8*** %12, align 8
  br label %109

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i8**, i8*** @s390_triplets, align 8
  store i8** %83, i8*** %12, align 8
  br label %108

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i8**, i8*** @sparc_triplets, align 8
  store i8** %89, i8*** %12, align 8
  br label %107

90:                                               ; preds = %84
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i8**, i8*** @x86_triplets, align 8
  store i8** %95, i8*** %12, align 8
  br label %106

96:                                               ; preds = %90
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i8**, i8*** @mips_triplets, align 8
  store i8** %101, i8*** %12, align 8
  br label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 (i8*, i8*, ...) @ui__error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  br label %136

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %76
  br label %110

110:                                              ; preds = %109, %70
  br label %111

111:                                              ; preds = %110, %64
  %112 = load i8**, i8*** %12, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @lookup_triplets(i8** %112, i8* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 (i8*, i8*, ...) @ui__error(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.10, i64 0, i64 0), i8* %118, i8* %119, i8* %120)
  br label %136

122:                                              ; preds = %111
  %123 = load i8**, i8*** %12, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %127, i8* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %136

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %56, %50, %28, %20
  %134 = load i8*, i8** %13, align 8
  %135 = load i8**, i8*** %7, align 8
  store i8* %134, i8** %135, align 8
  store i32 0, i32* %4, align 4
  br label %140

136:                                              ; preds = %131, %117, %102, %51, %38
  %137 = load i8*, i8** %13, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i8**, i8*** %7, align 8
  store i8* null, i8** %139, align 8
  store i32 -1, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i8* @normalize_arch(i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @lookup_path(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ui__error(i8*, i8*, ...) #1

declare dso_local i32 @lookup_triplets(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
