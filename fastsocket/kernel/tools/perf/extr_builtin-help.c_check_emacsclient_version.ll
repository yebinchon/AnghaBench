; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_check_emacsclient_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_check_emacsclient_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i8**, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"emacsclient\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@__const.check_emacsclient_version.argv_ec = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to start emacsclient.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to parse emacsclient version.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"emacsclient version '%d' too old (< 22).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_emacsclient_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_emacsclient_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.strbuf, align 4
  %3 = alloca %struct.child_process, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = bitcast %struct.strbuf* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const.check_emacsclient_version.argv_ec to i8*), i64 24, i1 false)
  %8 = call i32 @memset(%struct.child_process* %3, i32 0, i32 16)
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i8** %9, i8*** %10, align 8
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 -1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  store i32 1, i32* %12, align 4
  %13 = call i64 @start_command(%struct.child_process* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %49

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strbuf_read(%struct.strbuf* %2, i32 %20, i32 20)
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  %25 = call i32 @finish_command(%struct.child_process* %3)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @prefixcmp(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @strbuf_release(%struct.strbuf* %2)
  store i32 -1, i32* %1, align 4
  br label %49

34:                                               ; preds = %18
  %35 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @strbuf_remove(%struct.strbuf* %2, i32 0, i32 %35)
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @atoi(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 22
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = call i32 @strbuf_release(%struct.strbuf* %2)
  store i32 -1, i32* %1, align 4
  br label %49

47:                                               ; preds = %34
  %48 = call i32 @strbuf_release(%struct.strbuf* %2)
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %42, %30, %15
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.child_process*, i32, i32) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

declare dso_local i64 @prefixcmp(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @atoi(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
