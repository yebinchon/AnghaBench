; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_fprint_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_fprint_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.frame_info = type { %struct.TYPE_8__*, %struct.TYPE_6__, i32*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"<NULL frame>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"level=%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"type=\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unwind=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pc=\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"0x%s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"func=\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, %struct.frame_info*)* @fprint_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprint_frame(%struct.ui_file* %0, %struct.frame_info* %1) #0 {
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca %struct.frame_info*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %3, align 8
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %6 = icmp eq %struct.frame_info* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %9 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %127

10:                                               ; preds = %2
  %11 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %12 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %14 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %15 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %19 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %21 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %23 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %24 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fprint_frame_type(%struct.ui_file* %22, i32 %25)
  %27 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %28 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %30 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %32 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %10
  %36 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %37 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %40 = call i32 @gdb_print_host_address(i32* %38, %struct.ui_file* %39)
  br label %44

41:                                               ; preds = %10
  %42 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %43 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %46 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %48 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %50 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %55 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %63 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %64 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @paddr_nz(i32 %68)
  %70 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  br label %74

71:                                               ; preds = %53, %44
  %72 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %73 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %76 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %78 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %79 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %80 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %86 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %87 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fprint_frame_id(%struct.ui_file* %85, i32 %89)
  br label %94

91:                                               ; preds = %74
  %92 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %93 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %96 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %98 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %99 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %100 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %94
  %104 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %105 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %113 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %114 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @paddr_nz(i32 %118)
  %120 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  br label %124

121:                                              ; preds = %103, %94
  %122 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %123 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %111
  %125 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %126 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %7
  ret void
}

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @fprint_frame_type(%struct.ui_file*, i32) #1

declare dso_local i32 @gdb_print_host_address(i32*, %struct.ui_file*) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @fprint_frame_id(%struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
