; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_write_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.tomoyo_io_buffer = type { i8* }
%struct.tomoyo_profile = type { i32*, %struct.tomoyo_path_info* }
%struct.tomoyo_path_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_MAX_CONTROL_INDEX = common dso_local global i32 0, align 4
@tomoyo_control_array = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@tomoyo_mode_2 = common dso_local global i8** null, align 8
@tomoyo_mode_4 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_profile(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tomoyo_profile*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tomoyo_path_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %13 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 45)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** %7, align 8
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strict_strtoul(i8* %23, i32 10, i64* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %154

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.tomoyo_profile* @tomoyo_find_or_assign_new_profile(i64 %36)
  store %struct.tomoyo_profile* %37, %struct.tomoyo_profile** %8, align 8
  %38 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %8, align 8
  %39 = icmp ne %struct.tomoyo_profile* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %154

43:                                               ; preds = %35
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 61)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %154

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call %struct.tomoyo_path_info* @tomoyo_save_name(i8* %58)
  store %struct.tomoyo_path_info* %59, %struct.tomoyo_path_info** %10, align 8
  %60 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %61 = icmp ne %struct.tomoyo_path_info* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %154

65:                                               ; preds = %56
  %66 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %67 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %8, align 8
  %68 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %67, i32 0, i32 1
  store %struct.tomoyo_path_info* %66, %struct.tomoyo_path_info** %68, align 8
  store i32 0, i32* %2, align 4
  br label %154

69:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %148, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @TOMOYO_MAX_CONTROL_INDEX, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %151

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tomoyo_control_array, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %75, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %148

85:                                               ; preds = %74
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i32 @sscanf(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %123

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  switch i32 %91, label %94 [
    i32 128, label %92
  ]

92:                                               ; preds = %90
  %93 = load i8**, i8*** @tomoyo_mode_2, align 8
  store i8** %93, i8*** %12, align 8
  br label %96

94:                                               ; preds = %90
  %95 = load i8**, i8*** @tomoyo_mode_4, align 8
  store i8** %95, i8*** %12, align 8
  br label %96

96:                                               ; preds = %94, %92
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %113, %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8**, i8*** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* %102, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %6, align 4
  br label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %97

116:                                              ; preds = %111, %97
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %154

122:                                              ; preds = %116
  br label %140

123:                                              ; preds = %85
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tomoyo_control_array, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ugt i32 %124, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tomoyo_control_array, align 8
  %134 = load i32, i32* %5, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %132, %123
  br label %140

140:                                              ; preds = %139, %122
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %8, align 8
  %143 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  store i32 0, i32* %2, align 4
  br label %154

148:                                              ; preds = %84
  %149 = load i32, i32* %5, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %70

151:                                              ; preds = %70
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %151, %140, %119, %65, %62, %48, %40, %26
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local %struct.tomoyo_profile* @tomoyo_find_or_assign_new_profile(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_save_name(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
