; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_register_unwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_register_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i8*)*, i32 }
%struct.frame_unwind_cache = type { i32 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"{ frame_register_unwind (frame=%d,regnum=%d(%s),...) \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" *optimizedp=%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" *lvalp=%d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" *addrp=0x%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" *bufferp=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@current_gdbarch = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_register_unwind(%struct.frame_info* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.frame_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.frame_unwind_cache*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i64, i64* @frame_debug, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %7
  %21 = load i32, i32* @gdb_stdlog, align 4
  %22 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %23 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @frame_map_regnum_to_name(%struct.frame_info* %26, i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %7
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @gdb_assert(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @gdb_assert(i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @gdb_assert(i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @gdb_assert(i32 %45)
  %47 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %48 = icmp ne %struct.frame_info* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @gdb_assert(i32 %49)
  %51 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %52 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp eq %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %30
  %56 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %57 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_2__* @frame_unwind_find_by_frame(i32 %58)
  %60 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %61 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %60, i32 0, i32 2
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %61, align 8
  %62 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %63 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %68 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %55, %30
  %70 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %71 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i8*)*, i32 (i32, i32*, i32, i32*, i32*, i32*, i32*, i8*)** %73, align 8
  %75 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %76 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %79 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 %74(i32 %77, i32* %79, i32 %80, i32* %81, i32* %82, i32* %83, i32* %84, i8* %85)
  %87 = load i64, i64* @frame_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %69
  %90 = load i32, i32* @gdb_stdlog, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @gdb_stdlog, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @gdb_stdlog, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @gdb_stdlog, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @paddr_nz(i32 %102)
  %104 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @gdb_stdlog, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i8*, i8** %14, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = load i32, i32* @gdb_stdlog, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %137

112:                                              ; preds = %89
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %17, align 8
  %114 = load i32, i32* @gdb_stdlog, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %131, %112
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @current_gdbarch, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @register_size(i32 %118, i32 %119)
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load i32, i32* @gdb_stdlog, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load i32, i32* @gdb_stdlog, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %109
  %138 = load i32, i32* @gdb_stdlog, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %69
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @frame_map_regnum_to_name(%struct.frame_info*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.TYPE_2__* @frame_unwind_find_by_frame(i32) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @register_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
