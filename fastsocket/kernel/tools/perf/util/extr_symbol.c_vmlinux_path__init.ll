; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_vmlinux_path__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_vmlinux_path__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.utsname = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@vmlinux_path = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@vmlinux_path__nr_entries = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"/boot/vmlinux\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"/boot/vmlinux-%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/lib/modules/%s/build/vmlinux\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"/usr/lib/debug/lib/modules/%s/vmlinux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmlinux_path__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlinux_path__init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32** @malloc(i32 40)
  store i32** %10, i32*** @vmlinux_path, align 8
  %11 = load i32**, i32*** @vmlinux_path, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %104

14:                                               ; preds = %0
  %15 = call i32* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load i32**, i32*** @vmlinux_path, align 8
  %17 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* %15, i32** %18, align 8
  %19 = load i32**, i32*** @vmlinux_path, align 8
  %20 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %102

25:                                               ; preds = %14
  %26 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @vmlinux_path__nr_entries, align 8
  %28 = call i32* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32**, i32*** @vmlinux_path, align 8
  %30 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %28, i32** %31, align 8
  %32 = load i32**, i32*** @vmlinux_path, align 8
  %33 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %102

38:                                               ; preds = %25
  %39 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* @vmlinux_path__nr_entries, align 8
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %104

46:                                               ; preds = %38
  %47 = call i64 @uname(%struct.utsname* %2)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %104

50:                                               ; preds = %46
  %51 = trunc i64 %7 to i32
  %52 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %9, i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32* @strdup(i8* %9)
  %56 = load i32**, i32*** @vmlinux_path, align 8
  %57 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  store i32* %55, i32** %58, align 8
  %59 = load i32**, i32*** @vmlinux_path, align 8
  %60 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %102

65:                                               ; preds = %50
  %66 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* @vmlinux_path__nr_entries, align 8
  %68 = trunc i64 %7 to i32
  %69 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @snprintf(i8* %9, i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = call i32* @strdup(i8* %9)
  %73 = load i32**, i32*** @vmlinux_path, align 8
  %74 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  store i32* %72, i32** %75, align 8
  %76 = load i32**, i32*** @vmlinux_path, align 8
  %77 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %102

82:                                               ; preds = %65
  %83 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @vmlinux_path__nr_entries, align 8
  %85 = trunc i64 %7 to i32
  %86 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @snprintf(i8* %9, i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = call i32* @strdup(i8* %9)
  %90 = load i32**, i32*** @vmlinux_path, align 8
  %91 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  store i32* %89, i32** %92, align 8
  %93 = load i32**, i32*** @vmlinux_path, align 8
  %94 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %95 = getelementptr inbounds i32*, i32** %93, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %102

99:                                               ; preds = %82
  %100 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* @vmlinux_path__nr_entries, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %104

102:                                              ; preds = %98, %81, %64, %37, %24
  %103 = call i32 (...) @vmlinux_path__exit()
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %99, %49, %45, %13
  %105 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32** @malloc(i32) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i64 @uname(%struct.utsname*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @vmlinux_path__exit(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
