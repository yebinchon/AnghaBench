; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_process_regular_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_process_regular_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"conf: process_regular_option: null entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"browsable_dirs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"map_name\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"map_defaults\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"map_options\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"map_type\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"mount_type\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"search_path\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sun_map_syntax\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"conf: unknown regular key \22%s\22 for section \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.TYPE_12__*)* @process_regular_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_regular_option(i8* %0, i8* %1, i8* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %30, %27, %21, %18, %12, %4
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %129

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @xstrdup(i8* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @STREQ(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = call i32 @ropt_browsable_dirs(i8* %57, %struct.TYPE_12__* %58)
  store i32 %59, i32* %5, align 4
  br label %129

60:                                               ; preds = %52
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @STREQ(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = call i32 @ropt_map_name(i8* %65, %struct.TYPE_12__* %66)
  store i32 %67, i32* %5, align 4
  br label %129

68:                                               ; preds = %60
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @STREQ(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = call i32 @ropt_map_defaults(i8* %73, %struct.TYPE_12__* %74)
  store i32 %75, i32* %5, align 4
  br label %129

76:                                               ; preds = %68
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @STREQ(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = call i32 @ropt_map_options(i8* %81, %struct.TYPE_12__* %82)
  store i32 %83, i32* %5, align 4
  br label %129

84:                                               ; preds = %76
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @STREQ(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = call i32 @ropt_map_type(i8* %89, %struct.TYPE_12__* %90)
  store i32 %91, i32* %5, align 4
  br label %129

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  %94 = call i64 @STREQ(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = call i32 @ropt_mount_type(i8* %97, %struct.TYPE_12__* %98)
  store i32 %99, i32* %5, align 4
  br label %129

100:                                              ; preds = %92
  %101 = load i8*, i8** %7, align 8
  %102 = call i64 @STREQ(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = call i32 @ropt_search_path(i8* %105, %struct.TYPE_12__* %106)
  store i32 %107, i32* %5, align 4
  br label %129

108:                                              ; preds = %100
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @STREQ(i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %115 = call i32 @ropt_sun_map_syntax(i8* %113, %struct.TYPE_12__* %114)
  store i32 %115, i32* %5, align 4
  br label %129

116:                                              ; preds = %108
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @STREQ(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = call i32 @ropt_tag(i8* %121, %struct.TYPE_12__* %122)
  store i32 %123, i32* %5, align 4
  br label %129

124:                                              ; preds = %116
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %126, i8* %127)
  store i32 1, i32* %5, align 4
  br label %129

129:                                              ; preds = %124, %120, %112, %104, %96, %88, %80, %72, %64, %56, %39
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i32 @ropt_browsable_dirs(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_map_name(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_map_defaults(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_map_options(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_map_type(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_mount_type(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_search_path(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_sun_map_syntax(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ropt_tag(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
