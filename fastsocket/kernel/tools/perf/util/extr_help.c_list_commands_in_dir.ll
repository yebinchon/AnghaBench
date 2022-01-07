; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_list_commands_in_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_list_commands_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.cmdnames = type { i32 }
%struct.dirent = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*, i8*, i8*)* @list_commands_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_commands_in_dir(%struct.cmdnames* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %8, align 8
  %15 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %83

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %69, %53, %41, %23
  %31 = load i32*, i32** %8, align 8
  %32 = call %struct.dirent* @readdir(i32* %31)
  store %struct.dirent* %32, %struct.dirent** %9, align 8
  %33 = icmp ne %struct.dirent* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load %struct.dirent*, %struct.dirent** %9, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @prefixcmp(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %30

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @strbuf_setlen(%struct.strbuf* %10, i32 %43)
  %45 = load %struct.dirent*, %struct.dirent** %9, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %47)
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @is_executable(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %30

54:                                               ; preds = %42
  %55 = load %struct.dirent*, %struct.dirent** %9, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load %struct.dirent*, %struct.dirent** %9, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @has_extension(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %71 = load %struct.dirent*, %struct.dirent** %9, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @add_cmdname(%struct.cmdnames* %70, i8* %76, i32 %77)
  br label %30

79:                                               ; preds = %30
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @closedir(i32* %80)
  %82 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %83

83:                                               ; preds = %79, %18
  ret void
}

declare dso_local i32* @opendir(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @is_executable(i32) #1

declare dso_local i64 @has_extension(i8*, i8*) #1

declare dso_local i32 @add_cmdname(%struct.cmdnames*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
