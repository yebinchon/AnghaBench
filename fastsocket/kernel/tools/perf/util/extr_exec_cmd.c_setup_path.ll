; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_exec_cmd.c_setup_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_exec_cmd.c_setup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@argv0_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"/usr/local/bin:/usr/bin:/bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_path() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.strbuf, align 4
  %3 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 (...) @perf_exec_path()
  %6 = call i32 @add_path(%struct.strbuf* %2, i32 %5)
  %7 = load i32, i32* @argv0_path, align 4
  %8 = call i32 @add_path(%struct.strbuf* %2, i32 %7)
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strbuf_addstr(%struct.strbuf* %2, i8* %12)
  br label %16

14:                                               ; preds = %0
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i32 1)
  %20 = call i32 @strbuf_release(%struct.strbuf* %2)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_path(%struct.strbuf*, i32) #1

declare dso_local i32 @perf_exec_path(...) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
