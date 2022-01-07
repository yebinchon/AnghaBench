; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_break_at_finish_at_depth_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_break_at_finish_at_depth_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@default_breakpoint_valid = common dso_local global i64 0, align 8
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No default breakpoint address now.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"*0x%s %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"*0x%s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"No function contains the specified address\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to set breakpoint at procedure exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @break_at_finish_at_depth_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_at_finish_at_depth_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 105
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 102
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %61

42:                                               ; preds = %36, %30, %3
  %43 = load i64, i64* @default_breakpoint_valid, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %47 = icmp ne %struct.frame_info* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %50 = call i64 @get_frame_pc(%struct.frame_info* %49)
  store i64 %50, i64* %10, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %57

55:                                               ; preds = %45
  %56 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %54
  br label %60

58:                                               ; preds = %42
  %59 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %57
  br label %116

61:                                               ; preds = %36, %24, %18
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 32)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @xmalloc(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sub nsw i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i32 @strncpy(i8* %79, i8* %80, i32 %87)
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub nsw i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %89, i64 %95
  store i8 0, i8* %96, align 1
  br label %106

97:                                               ; preds = %61
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = add nsw i32 %99, 1
  %101 = call i64 @xmalloc(i32 %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strcpy(i8* %103, i8* %104)
  br label %106

106:                                              ; preds = %97, %66
  %107 = load i8*, i8** %12, align 8
  %108 = call %struct.frame_info* @parse_frame_specification(i8* %107)
  store %struct.frame_info* %108, %struct.frame_info** %7, align 8
  %109 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %110 = icmp ne %struct.frame_info* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %113 = call i64 @get_frame_pc(%struct.frame_info* %112)
  store i64 %113, i64* %10, align 8
  br label %115

114:                                              ; preds = %106
  store i64 0, i64* %10, align 8
  br label %115

115:                                              ; preds = %114, %111
  br label %116

116:                                              ; preds = %115, %60
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i8*, i8** %4, align 8
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strlen(i8* %121)
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %123
  %127 = load i64, i64* %10, align 8
  %128 = call i64 @find_pc_partial_function(i64 %127, i8** null, i64* %8, i64* %9)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @paddr_nz(i64 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = call i8* (i8*, i32, ...) @xstrprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %135, i8* %136)
  store i8* %137, i8** %15, align 8
  br label %142

138:                                              ; preds = %130
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @paddr_nz(i64 %139)
  %141 = call i8* (i8*, i32, ...) @xstrprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  store i8* %141, i8** %15, align 8
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i8*, i8** %15, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @break_command_1(i8* %143, i32 %144, i32 %145, i32* null)
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @xfree(i8* %147)
  br label %151

149:                                              ; preds = %126
  %150 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %142
  br label %154

152:                                              ; preds = %123
  %153 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %151
  ret void
}

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.frame_info* @parse_frame_specification(i8*) #1

declare dso_local i64 @find_pc_partial_function(i64, i8**, i64*, i64*) #1

declare dso_local i8* @xstrprintf(i8*, i32, ...) #1

declare dso_local i32 @paddr_nz(i64) #1

declare dso_local i32 @break_command_1(i8*, i32, i32, i32*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
