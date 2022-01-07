; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_mention.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_mention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i8*, i32, i32*, %struct.TYPE_4__*, i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.breakpoint*)* }
%struct.cleanup = type { i32 }
%struct.ui_stream = type { i32 }

@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(apparently deleted?) Eventpoint %d: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Watchpoint \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"wpt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Hardware watchpoint \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Hardware read watchpoint \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"hw-rwpt\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Hardware access (read/write) watchpoint \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"hw-awpt\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Breakpoint %d\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Hardware assisted breakpoint %d\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Catchpoint %d (%s %s)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"<any library>\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Catchpoint %d (%s)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Catchpoint %d (exec)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c" (%s) pending.\00", align 1
@addressprint = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c": file %s, line %d.\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.breakpoint*)* @mention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mention(%struct.breakpoint* %0) #0 {
  %2 = alloca %struct.breakpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.ui_stream*, align 8
  store %struct.breakpoint* %0, %struct.breakpoint** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @uiout, align 4
  %8 = call %struct.ui_stream* @ui_out_stream_new(i32 %7)
  store %struct.ui_stream* %8, %struct.ui_stream** %6, align 8
  %9 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %10 = call %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream* %9)
  store %struct.cleanup* %10, %struct.cleanup** %4, align 8
  br i1 true, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %13 = call i32 @create_breakpoint_hook(%struct.breakpoint* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %16 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @breakpoint_create_event(i32 %17)
  %19 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %20 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %19, i32 0, i32 9
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %25 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %24, i32 0, i32 9
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.breakpoint*)*, i32 (%struct.breakpoint*)** %27, align 8
  %29 = icmp ne i32 (%struct.breakpoint*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %32 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %31, i32 0, i32 9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.breakpoint*)*, i32 (%struct.breakpoint*)** %34, align 8
  %36 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %37 = call i32 %35(%struct.breakpoint* %36)
  br label %214

38:                                               ; preds = %23, %14
  %39 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %40 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %213 [
    i32 137, label %42
    i32 129, label %47
    i32 140, label %71
    i32 135, label %95
    i32 152, label %119
    i32 151, label %143
    i32 141, label %153
    i32 146, label %163
    i32 144, label %163
    i32 147, label %185
    i32 143, label %185
    i32 148, label %196
    i32 149, label %201
    i32 145, label %201
    i32 130, label %212
    i32 142, label %212
    i32 139, label %212
    i32 138, label %212
    i32 133, label %212
    i32 131, label %212
    i32 150, label %212
    i32 128, label %212
    i32 134, label %212
    i32 132, label %212
    i32 136, label %212
  ]

42:                                               ; preds = %38
  %43 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %44 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %213

47:                                               ; preds = %38
  %48 = load i32, i32* @uiout, align 4
  %49 = call i32 @ui_out_text(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @uiout, align 4
  %51 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %51, %struct.cleanup** %5, align 8
  %52 = load i32, i32* @uiout, align 4
  %53 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %54 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ui_out_field_int(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @uiout, align 4
  %58 = call i32 @ui_out_text(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %60 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %63 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @print_expression(i32 %61, i32 %64)
  %66 = load i32, i32* @uiout, align 4
  %67 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %68 = call i32 @ui_out_field_stream(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.ui_stream* %67)
  %69 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %70 = call i32 @do_cleanups(%struct.cleanup* %69)
  br label %213

71:                                               ; preds = %38
  %72 = load i32, i32* @uiout, align 4
  %73 = call i32 @ui_out_text(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* @uiout, align 4
  %75 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %75, %struct.cleanup** %5, align 8
  %76 = load i32, i32* @uiout, align 4
  %77 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %78 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ui_out_field_int(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @uiout, align 4
  %82 = call i32 @ui_out_text(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %84 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %87 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @print_expression(i32 %85, i32 %88)
  %90 = load i32, i32* @uiout, align 4
  %91 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %92 = call i32 @ui_out_field_stream(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.ui_stream* %91)
  %93 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %94 = call i32 @do_cleanups(%struct.cleanup* %93)
  br label %213

95:                                               ; preds = %38
  %96 = load i32, i32* @uiout, align 4
  %97 = call i32 @ui_out_text(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32, i32* @uiout, align 4
  %99 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cleanup* %99, %struct.cleanup** %5, align 8
  %100 = load i32, i32* @uiout, align 4
  %101 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %102 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ui_out_field_int(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @uiout, align 4
  %106 = call i32 @ui_out_text(i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %108 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %111 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @print_expression(i32 %109, i32 %112)
  %114 = load i32, i32* @uiout, align 4
  %115 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %116 = call i32 @ui_out_field_stream(i32 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.ui_stream* %115)
  %117 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %118 = call i32 @do_cleanups(%struct.cleanup* %117)
  br label %213

119:                                              ; preds = %38
  %120 = load i32, i32* @uiout, align 4
  %121 = call i32 @ui_out_text(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %122 = load i32, i32* @uiout, align 4
  %123 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store %struct.cleanup* %123, %struct.cleanup** %5, align 8
  %124 = load i32, i32* @uiout, align 4
  %125 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %126 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ui_out_field_int(i32 %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @uiout, align 4
  %130 = call i32 @ui_out_text(i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %132 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %135 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @print_expression(i32 %133, i32 %136)
  %138 = load i32, i32* @uiout, align 4
  %139 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %140 = call i32 @ui_out_field_stream(i32 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.ui_stream* %139)
  %141 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %142 = call i32 @do_cleanups(%struct.cleanup* %141)
  br label %213

143:                                              ; preds = %38
  %144 = load i32, i32* @uiout, align 4
  %145 = call i64 @ui_out_is_mi_like_p(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %213

148:                                              ; preds = %143
  %149 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %150 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  store i32 1, i32* %3, align 4
  br label %213

153:                                              ; preds = %38
  %154 = load i32, i32* @uiout, align 4
  %155 = call i64 @ui_out_is_mi_like_p(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %213

158:                                              ; preds = %153
  %159 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %160 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %161)
  store i32 1, i32* %3, align 4
  br label %213

163:                                              ; preds = %38, %38
  %164 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %165 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %168 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 146
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %173 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %174 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %163
  %178 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %179 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  br label %182

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %177
  %183 = phi i8* [ %180, %177 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), %181 ]
  %184 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %166, i8* %172, i8* %183)
  br label %213

185:                                              ; preds = %38, %38
  %186 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %187 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %190 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 147
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)
  %195 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %188, i8* %194)
  br label %213

196:                                              ; preds = %38
  %197 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %198 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %199)
  br label %213

201:                                              ; preds = %38, %38
  %202 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %203 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %206 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 149
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)
  %211 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %204, i8* %210)
  br label %213

212:                                              ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  br label %213

213:                                              ; preds = %38, %212, %201, %196, %185, %182, %158, %157, %148, %147, %119, %95, %71, %47, %42
  br label %214

214:                                              ; preds = %213, %30
  %215 = load i32, i32* %3, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %259

217:                                              ; preds = %214
  %218 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %219 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %224 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %225)
  br label %258

227:                                              ; preds = %217
  %228 = load i64, i64* @addressprint, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %232 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %230, %227
  %236 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %237 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %238 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %237, i32 0, i32 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @gdb_stdout, align 4
  %243 = call i32 @print_address_numeric(i32 %241, i32 1, i32 %242)
  br label %244

244:                                              ; preds = %235, %230
  %245 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %246 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %251 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %254 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32* %252, i32 %255)
  br label %257

257:                                              ; preds = %249, %244
  br label %258

258:                                              ; preds = %257, %222
  br label %259

259:                                              ; preds = %258, %214
  %260 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %261 = call i32 @do_cleanups(%struct.cleanup* %260)
  %262 = load i32, i32* @uiout, align 4
  %263 = call i64 @ui_out_is_mi_like_p(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %268

266:                                              ; preds = %259
  %267 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %265
  ret void
}

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local i32 @create_breakpoint_hook(%struct.breakpoint*) #1

declare dso_local i32 @breakpoint_create_event(i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @print_expression(i32, i32) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @ui_out_is_mi_like_p(i32) #1

declare dso_local i32 @print_address_numeric(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
