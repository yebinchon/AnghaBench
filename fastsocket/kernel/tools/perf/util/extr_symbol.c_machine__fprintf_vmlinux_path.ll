; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__fprintf_vmlinux_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__fprintf_vmlinux_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dso* }
%struct.dso = type { i32 }

@MAP__FUNCTION = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[0] %s\0A\00", align 1
@vmlinux_path__nr_entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"[%d] %s\0A\00", align 1
@vmlinux_path = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @machine__fprintf_vmlinux_path(%struct.machine* %0, i32* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dso*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.machine*, %struct.machine** %3, align 8
  %11 = getelementptr inbounds %struct.machine, %struct.machine* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i64, i64* @MAP__FUNCTION, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dso*, %struct.dso** %16, align 8
  store %struct.dso* %17, %struct.dso** %7, align 8
  %18 = load %struct.dso*, %struct.dso** %7, align 8
  %19 = getelementptr inbounds %struct.dso, %struct.dso* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.dso*, %struct.dso** %7, align 8
  %28 = trunc i64 %24 to i32
  %29 = call i64 @dso__build_id_filename(%struct.dso* %27, i8* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %26)
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %38

38:                                               ; preds = %36, %2
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dso*, %struct.dso** %7, align 8
  %47 = getelementptr inbounds %struct.dso, %struct.dso* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load i8**, i8*** @vmlinux_path, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %54)
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dso__build_id_filename(%struct.dso*, i8*, i32) #2

declare dso_local i64 @fprintf(i32*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
