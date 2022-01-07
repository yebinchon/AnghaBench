; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_vmlinux_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_vmlinux_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.map = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Looking at the vmlinux_path (%d entries long)\0A\00", align 1
@vmlinux_path__nr_entries = common dso_local global i32 0, align 4
@vmlinux_path = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load_vmlinux_path(%struct.dso* %0, %struct.map* %1, i32 %2) #0 {
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.map* %1, %struct.map** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dso*, %struct.dso** %4, align 8
  %14 = call i8* @dso__build_id_filename(%struct.dso* %13, i32* null, i32 0)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.dso*, %struct.dso** %4, align 8
  %19 = load %struct.map*, %struct.map** %5, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dso__load_vmlinux(%struct.dso* %18, %struct.map* %19, i8* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %60

26:                                               ; preds = %17
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %26, %3
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load %struct.dso*, %struct.dso** %4, align 8
  %36 = load %struct.map*, %struct.map** %5, align 8
  %37 = load i8**, i8*** @vmlinux_path, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dso__load_vmlinux(%struct.dso* %35, %struct.map* %36, i8* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.dso*, %struct.dso** %4, align 8
  %48 = load i8**, i8*** @vmlinux_path, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strdup(i8* %52)
  %54 = call i32 @dso__set_long_name(%struct.dso* %47, i32 %53)
  br label %59

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %30

59:                                               ; preds = %46, %30
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i8* @dso__build_id_filename(%struct.dso*, i32*, i32) #1

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
