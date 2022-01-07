; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_kallsyms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i32, i32* }
%struct.map = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_KALLSYMS = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load_kallsyms(%struct.dso* %0, i8* %1, %struct.map* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dso*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.map* %2, %struct.map** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @symbol__restricted_filename(i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %56

14:                                               ; preds = %4
  %15 = load %struct.dso*, %struct.dso** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.map*, %struct.map** %8, align 8
  %18 = call i64 @dso__load_all_kallsyms(%struct.dso* %15, i8* %16, %struct.map* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.dso*, %struct.dso** %6, align 8
  %23 = getelementptr inbounds %struct.dso, %struct.dso* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.map*, %struct.map** %8, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @symbols__fixup_duplicate(i32* %28)
  %30 = load %struct.dso*, %struct.dso** %6, align 8
  %31 = getelementptr inbounds %struct.dso, %struct.dso* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.map*, %struct.map** %8, align 8
  %34 = getelementptr inbounds %struct.map, %struct.map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @symbols__fixup_end(i32* %36)
  %38 = load %struct.dso*, %struct.dso** %6, align 8
  %39 = getelementptr inbounds %struct.dso, %struct.dso* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %21
  %44 = load i32, i32* @DSO_BINARY_TYPE__GUEST_KALLSYMS, align 4
  %45 = load %struct.dso*, %struct.dso** %6, align 8
  %46 = getelementptr inbounds %struct.dso, %struct.dso* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %21
  %48 = load i32, i32* @DSO_BINARY_TYPE__KALLSYMS, align 4
  %49 = load %struct.dso*, %struct.dso** %6, align 8
  %50 = getelementptr inbounds %struct.dso, %struct.dso* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.dso*, %struct.dso** %6, align 8
  %53 = load %struct.map*, %struct.map** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dso__split_kallsyms(%struct.dso* %52, %struct.map* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %20, %13
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #1

declare dso_local i64 @dso__load_all_kallsyms(%struct.dso*, i8*, %struct.map*) #1

declare dso_local i32 @symbols__fixup_duplicate(i32*) #1

declare dso_local i32 @symbols__fixup_end(i32*) #1

declare dso_local i32 @dso__split_kallsyms(%struct.dso*, %struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
