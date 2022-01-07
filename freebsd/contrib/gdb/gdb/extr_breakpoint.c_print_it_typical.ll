; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_print_it_typical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_print_it_typical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cleanup = type { i32 }
%struct.ui_stream = type { i32 }

@uiout = common dso_local global i32 0, align 4
@PRINT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0ABreakpoint \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"breakpoint-hit\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bkptno\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@PRINT_SRC_AND_LOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Stopped due to shared library event\0A\00", align 1
@PRINT_NOTHING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Thread Event Breakpoint: gdb should not stop!\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Overlay Event Breakpoint: gdb should not stop!\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\0ACatchpoint %d (\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" %s), \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"unloaded\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"forked\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" process %d), \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vforked\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\0ACatchpoint %d (exec'd %s), \00", align 1
@current_exception_event = common dso_local global i32 0, align 4
@CURRENT_EXCEPTION_KIND = common dso_local global i32 0, align 4
@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"\0ACatchpoint %d (exception caught), \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"throw location \00", align 1
@CURRENT_EXCEPTION_THROW_PC = common dso_local global i32 0, align 4
@CURRENT_EXCEPTION_THROW_LINE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@CURRENT_EXCEPTION_THROW_FILE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c", catch location \00", align 1
@CURRENT_EXCEPTION_CATCH_PC = common dso_local global i32 0, align 4
@CURRENT_EXCEPTION_CATCH_LINE = common dso_local global i32 0, align 4
@CURRENT_EXCEPTION_CATCH_FILE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PRINT_SRC_ONLY = common dso_local global i32 0, align 4
@EX_EVENT_THROW = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"\0ACatchpoint %d (exception thrown), \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"watchpoint-trigger\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\0AOld value = \00", align 1
@Val_pretty_default = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"\0ANew value = \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"read-watchpoint-trigger\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"\0AValue = \00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"access-watchpoint-trigger\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"function-finished\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"location-reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @print_it_typical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_it_typical(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.ui_stream*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @uiout, align 4
  %8 = call %struct.ui_stream* @ui_out_stream_new(i32 %7)
  store %struct.ui_stream* %8, %struct.ui_stream** %6, align 8
  %9 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %10 = call %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream* %9)
  store %struct.cleanup* %10, %struct.cleanup** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %16, i32* %2, align 4
  br label %499

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %497 [
    i32 151, label %23
    i32 141, label %23
    i32 134, label %86
    i32 132, label %89
    i32 136, label %92
    i32 146, label %95
    i32 144, label %116
    i32 147, label %137
    i32 143, label %158
    i32 148, label %179
    i32 149, label %198
    i32 145, label %248
    i32 129, label %298
    i32 140, label %298
    i32 135, label %363
    i32 152, label %397
    i32 142, label %478
    i32 130, label %487
    i32 137, label %496
    i32 139, label %496
    i32 138, label %496
    i32 133, label %496
    i32 131, label %496
    i32 128, label %496
    i32 150, label %496
  ]

23:                                               ; preds = %17, %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %23
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @breakpoint_adjustment_warning(i32 %46, i32 %53, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %39, %23
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @annotate_breakpoint(i32 %65)
  %67 = load i32, i32* @uiout, align 4
  %68 = call i32 @ui_out_text(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @uiout, align 4
  %70 = call i32 @ui_out_is_mi_like_p(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @uiout, align 4
  %74 = call i32 @ui_out_field_string(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %60
  %76 = load i32, i32* @uiout, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ui_out_field_int(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @uiout, align 4
  %84 = call i32 @ui_out_text(i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %85, i32* %2, align 4
  br label %499

86:                                               ; preds = %17
  %87 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @PRINT_NOTHING, align 4
  store i32 %88, i32* %2, align 4
  br label %499

89:                                               ; preds = %17
  %90 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @PRINT_NOTHING, align 4
  store i32 %91, i32* %2, align 4
  br label %499

92:                                               ; preds = %17
  %93 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %94 = load i32, i32* @PRINT_NOTHING, align 4
  store i32 %94, i32* %2, align 4
  br label %499

95:                                               ; preds = %17
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @annotate_catchpoint(i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %115, i32* %2, align 4
  br label %499

116:                                              ; preds = %17
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @annotate_catchpoint(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  %129 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %136, i32* %2, align 4
  br label %499

137:                                              ; preds = %17
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @annotate_catchpoint(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  %150 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %157, i32* %2, align 4
  br label %499

158:                                              ; preds = %17
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @annotate_catchpoint(i32 %163)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  %171 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %178, i32* %2, align 4
  br label %499

179:                                              ; preds = %17
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @annotate_catchpoint(i32 %184)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %190, i32 %195)
  %197 = load i32, i32* @PRINT_SRC_AND_LOC, align 4
  store i32 %197, i32* %2, align 4
  br label %499

198:                                              ; preds = %17
  %199 = load i32, i32* @current_exception_event, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %246

201:                                              ; preds = %198
  %202 = load i32, i32* @CURRENT_EXCEPTION_KIND, align 4
  %203 = load i32, i32* @EX_EVENT_CATCH, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %246

205:                                              ; preds = %201
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @annotate_catchpoint(i32 %210)
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %216)
  %218 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %219 = load i32, i32* @CURRENT_EXCEPTION_THROW_PC, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %205
  %222 = load i32, i32* @CURRENT_EXCEPTION_THROW_LINE, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32, i32* @CURRENT_EXCEPTION_THROW_FILE, align 4
  %226 = load i32, i32* @CURRENT_EXCEPTION_THROW_LINE, align 4
  %227 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %225, i32 %226)
  br label %230

228:                                              ; preds = %221, %205
  %229 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %224
  %231 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %232 = load i32, i32* @CURRENT_EXCEPTION_CATCH_PC, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load i32, i32* @CURRENT_EXCEPTION_CATCH_LINE, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i32, i32* @CURRENT_EXCEPTION_CATCH_FILE, align 4
  %239 = load i32, i32* @CURRENT_EXCEPTION_CATCH_LINE, align 4
  %240 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %238, i32 %239)
  br label %243

241:                                              ; preds = %234, %230
  %242 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %237
  %244 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %245 = load i32, i32* @PRINT_SRC_ONLY, align 4
  store i32 %245, i32* %2, align 4
  br label %499

246:                                              ; preds = %201, %198
  %247 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %247, i32* %2, align 4
  br label %499

248:                                              ; preds = %17
  %249 = load i32, i32* @current_exception_event, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %296

251:                                              ; preds = %248
  %252 = load i32, i32* @CURRENT_EXCEPTION_KIND, align 4
  %253 = load i32, i32* @EX_EVENT_THROW, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %296

255:                                              ; preds = %251
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @annotate_catchpoint(i32 %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %266)
  %268 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %269 = load i32, i32* @CURRENT_EXCEPTION_THROW_PC, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %255
  %272 = load i32, i32* @CURRENT_EXCEPTION_THROW_LINE, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* @CURRENT_EXCEPTION_THROW_FILE, align 4
  %276 = load i32, i32* @CURRENT_EXCEPTION_THROW_LINE, align 4
  %277 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %275, i32 %276)
  br label %280

278:                                              ; preds = %271, %255
  %279 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %274
  %281 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %282 = load i32, i32* @CURRENT_EXCEPTION_CATCH_PC, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i32, i32* @CURRENT_EXCEPTION_CATCH_LINE, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* @CURRENT_EXCEPTION_CATCH_FILE, align 4
  %289 = load i32, i32* @CURRENT_EXCEPTION_CATCH_LINE, align 4
  %290 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %288, i32 %289)
  br label %293

291:                                              ; preds = %284, %280
  %292 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %287
  %294 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %295 = load i32, i32* @PRINT_SRC_ONLY, align 4
  store i32 %295, i32* %2, align 4
  br label %499

296:                                              ; preds = %251, %248
  %297 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %297, i32* %2, align 4
  br label %499

298:                                              ; preds = %17, %17
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %361

303:                                              ; preds = %298
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @annotate_watchpoint(i32 %308)
  %310 = load i32, i32* @uiout, align 4
  %311 = call i32 @ui_out_is_mi_like_p(i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %303
  %314 = load i32, i32* @uiout, align 4
  %315 = call i32 @ui_out_field_string(i32 %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  br label %316

316:                                              ; preds = %313, %303
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %318, align 8
  %320 = call i32 @mention(%struct.TYPE_7__* %319)
  %321 = load i32, i32* @uiout, align 4
  %322 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store %struct.cleanup* %322, %struct.cleanup** %5, align 8
  %323 = load i32, i32* @uiout, align 4
  %324 = call i32 @ui_out_text(i32 %323, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %329 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @Val_pretty_default, align 4
  %332 = call i32 @value_print(i32* %327, i32 %330, i32 0, i32 %331)
  %333 = load i32, i32* @uiout, align 4
  %334 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %335 = call i32 @ui_out_field_stream(i32 %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), %struct.ui_stream* %334)
  %336 = load i32, i32* @uiout, align 4
  %337 = call i32 @ui_out_text(i32 %336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %344 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @Val_pretty_default, align 4
  %347 = call i32 @value_print(i32* %342, i32 %345, i32 0, i32 %346)
  %348 = load i32, i32* @uiout, align 4
  %349 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %350 = call i32 @ui_out_field_stream(i32 %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), %struct.ui_stream* %349)
  %351 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %352 = call i32 @do_cleanups(%struct.cleanup* %351)
  %353 = load i32, i32* @uiout, align 4
  %354 = call i32 @ui_out_text(i32 %353, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @value_free(i32* %357)
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  store i32* null, i32** %360, align 8
  br label %361

361:                                              ; preds = %316, %298
  %362 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %362, i32* %2, align 4
  br label %499

363:                                              ; preds = %17
  %364 = load i32, i32* @uiout, align 4
  %365 = call i32 @ui_out_is_mi_like_p(i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = load i32, i32* @uiout, align 4
  %369 = call i32 @ui_out_field_string(i32 %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %363
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %372, align 8
  %374 = call i32 @mention(%struct.TYPE_7__* %373)
  %375 = load i32, i32* @uiout, align 4
  %376 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store %struct.cleanup* %376, %struct.cleanup** %5, align 8
  %377 = load i32, i32* @uiout, align 4
  %378 = call i32 @ui_out_text(i32 %377, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %385 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @Val_pretty_default, align 4
  %388 = call i32 @value_print(i32* %383, i32 %386, i32 0, i32 %387)
  %389 = load i32, i32* @uiout, align 4
  %390 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %391 = call i32 @ui_out_field_stream(i32 %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %struct.ui_stream* %390)
  %392 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %393 = call i32 @do_cleanups(%struct.cleanup* %392)
  %394 = load i32, i32* @uiout, align 4
  %395 = call i32 @ui_out_text(i32 %394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %396 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %396, i32* %2, align 4
  br label %499

397:                                              ; preds = %17
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %443

402:                                              ; preds = %397
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @annotate_watchpoint(i32 %407)
  %409 = load i32, i32* @uiout, align 4
  %410 = call i32 @ui_out_is_mi_like_p(i32 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %402
  %413 = load i32, i32* @uiout, align 4
  %414 = call i32 @ui_out_field_string(i32 %413, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  br label %415

415:                                              ; preds = %412, %402
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  %419 = call i32 @mention(%struct.TYPE_7__* %418)
  %420 = load i32, i32* @uiout, align 4
  %421 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store %struct.cleanup* %421, %struct.cleanup** %5, align 8
  %422 = load i32, i32* @uiout, align 4
  %423 = call i32 @ui_out_text(i32 %422, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %428 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @Val_pretty_default, align 4
  %431 = call i32 @value_print(i32* %426, i32 %429, i32 0, i32 %430)
  %432 = load i32, i32* @uiout, align 4
  %433 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %434 = call i32 @ui_out_field_stream(i32 %432, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), %struct.ui_stream* %433)
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = call i32 @value_free(i32* %437)
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  store i32* null, i32** %440, align 8
  %441 = load i32, i32* @uiout, align 4
  %442 = call i32 @ui_out_text(i32 %441, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  br label %459

443:                                              ; preds = %397
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %445, align 8
  %447 = call i32 @mention(%struct.TYPE_7__* %446)
  %448 = load i32, i32* @uiout, align 4
  %449 = call i32 @ui_out_is_mi_like_p(i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %443
  %452 = load i32, i32* @uiout, align 4
  %453 = call i32 @ui_out_field_string(i32 %452, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  br label %454

454:                                              ; preds = %451, %443
  %455 = load i32, i32* @uiout, align 4
  %456 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %455, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  store %struct.cleanup* %456, %struct.cleanup** %5, align 8
  %457 = load i32, i32* @uiout, align 4
  %458 = call i32 @ui_out_text(i32 %457, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  br label %459

459:                                              ; preds = %454, %415
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %466 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @Val_pretty_default, align 4
  %469 = call i32 @value_print(i32* %464, i32 %467, i32 0, i32 %468)
  %470 = load i32, i32* @uiout, align 4
  %471 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %472 = call i32 @ui_out_field_stream(i32 %470, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), %struct.ui_stream* %471)
  %473 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %474 = call i32 @do_cleanups(%struct.cleanup* %473)
  %475 = load i32, i32* @uiout, align 4
  %476 = call i32 @ui_out_text(i32 %475, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %477 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %477, i32* %2, align 4
  br label %499

478:                                              ; preds = %17
  %479 = load i32, i32* @uiout, align 4
  %480 = call i32 @ui_out_is_mi_like_p(i32 %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %478
  %483 = load i32, i32* @uiout, align 4
  %484 = call i32 @ui_out_field_string(i32 %483, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  br label %485

485:                                              ; preds = %482, %478
  %486 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %486, i32* %2, align 4
  br label %499

487:                                              ; preds = %17
  %488 = load i32, i32* @uiout, align 4
  %489 = call i32 @ui_out_is_mi_like_p(i32 %488)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %487
  %492 = load i32, i32* @uiout, align 4
  %493 = call i32 @ui_out_field_string(i32 %492, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  br label %494

494:                                              ; preds = %491, %487
  %495 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %495, i32* %2, align 4
  br label %499

496:                                              ; preds = %17, %17, %17, %17, %17, %17, %17
  br label %497

497:                                              ; preds = %17, %496
  %498 = load i32, i32* @PRINT_UNKNOWN, align 4
  store i32 %498, i32* %2, align 4
  br label %499

499:                                              ; preds = %497, %494, %485, %459, %370, %361, %296, %293, %246, %243, %179, %158, %137, %116, %95, %92, %89, %86, %75, %15
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local i32 @breakpoint_adjustment_warning(i32, i32, i32, i32) #1

declare dso_local i32 @annotate_breakpoint(i32) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_is_mi_like_p(i32) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @annotate_catchpoint(i32) #1

declare dso_local i32 @annotate_watchpoint(i32) #1

declare dso_local i32 @mention(%struct.TYPE_7__*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @value_print(i32*, i32, i32, i32) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @value_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
