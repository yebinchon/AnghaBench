; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_get_probe_trace_command_rawlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_get_probe_trace_command_rawlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@MAX_CMDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"strlist__add failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strlist* (i32)* @get_probe_trace_command_rawlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strlist* @get_probe_trace_command_rawlist(i32 %0) #0 {
  %2 = alloca %struct.strlist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strlist*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_CMDLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call %struct.strlist* @strlist__new(i32 1, i32* null)
  store %struct.strlist* %16, %struct.strlist** %10, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dup(i32 %17)
  %19 = call i32* @fdopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %60, %1
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @feof(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i32, i32* @MAX_CMDLEN, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @fgets(i8* %15, i32 %26, i32* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %61

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.strlist*, %struct.strlist** %10, align 8
  %50 = call i32 @strlist__add(%struct.strlist* %49, i8* %15)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.strlist*, %struct.strlist** %10, align 8
  %59 = call i32 @strlist__delete(%struct.strlist* %58)
  store %struct.strlist* null, %struct.strlist** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

60:                                               ; preds = %48
  br label %20

61:                                               ; preds = %31, %20
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load %struct.strlist*, %struct.strlist** %10, align 8
  store %struct.strlist* %64, %struct.strlist** %2, align 8
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load %struct.strlist*, %struct.strlist** %2, align 8
  ret %struct.strlist* %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.strlist* @strlist__new(i32, i32*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strlist__delete(%struct.strlist*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
