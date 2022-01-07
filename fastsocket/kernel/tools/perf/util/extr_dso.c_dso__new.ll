; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dso.c_dso__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32, i32, i64, i64, i64, i8*, i8*, i8*, i8**, i8**, i32 }

@MAP__NR_TYPES = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i8* null, align 8
@DSO_TYPE_USER = common dso_local global i32 0, align 4
@DSO_SWAP__UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dso* @dso__new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dso*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = add i64 88, %6
  %8 = add i64 %7, 1
  %9 = call %struct.dso* @calloc(i32 1, i64 %8)
  store %struct.dso* %9, %struct.dso** %3, align 8
  %10 = load %struct.dso*, %struct.dso** %3, align 8
  %11 = icmp ne %struct.dso* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %1
  %13 = load %struct.dso*, %struct.dso** %3, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strcpy(i32 %15, i8* %16)
  %18 = load %struct.dso*, %struct.dso** %3, align 8
  %19 = load %struct.dso*, %struct.dso** %3, align 8
  %20 = getelementptr inbounds %struct.dso, %struct.dso* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dso__set_long_name(%struct.dso* %18, i32 %21)
  %23 = load %struct.dso*, %struct.dso** %3, align 8
  %24 = load %struct.dso*, %struct.dso** %3, align 8
  %25 = getelementptr inbounds %struct.dso, %struct.dso* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dso__set_short_name(%struct.dso* %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %46, %12
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAP__NR_TYPES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i8*, i8** @RB_ROOT, align 8
  %34 = load %struct.dso*, %struct.dso** %3, align 8
  %35 = getelementptr inbounds %struct.dso, %struct.dso* %34, i32 0, i32 9
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load %struct.dso*, %struct.dso** %3, align 8
  %41 = getelementptr inbounds %struct.dso, %struct.dso* %40, i32 0, i32 10
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %33, i8** %45, align 8
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load i8*, i8** @RB_ROOT, align 8
  %51 = load %struct.dso*, %struct.dso** %3, align 8
  %52 = getelementptr inbounds %struct.dso, %struct.dso* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @DSO_BINARY_TYPE__NOT_FOUND, align 8
  %54 = load %struct.dso*, %struct.dso** %3, align 8
  %55 = getelementptr inbounds %struct.dso, %struct.dso* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @DSO_BINARY_TYPE__NOT_FOUND, align 8
  %57 = load %struct.dso*, %struct.dso** %3, align 8
  %58 = getelementptr inbounds %struct.dso, %struct.dso* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dso*, %struct.dso** %3, align 8
  %60 = getelementptr inbounds %struct.dso, %struct.dso* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.dso*, %struct.dso** %3, align 8
  %62 = getelementptr inbounds %struct.dso, %struct.dso* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.dso*, %struct.dso** %3, align 8
  %64 = getelementptr inbounds %struct.dso, %struct.dso* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @DSO_TYPE_USER, align 4
  %66 = load %struct.dso*, %struct.dso** %3, align 8
  %67 = getelementptr inbounds %struct.dso, %struct.dso* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @DSO_SWAP__UNSET, align 4
  %69 = load %struct.dso*, %struct.dso** %3, align 8
  %70 = getelementptr inbounds %struct.dso, %struct.dso* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dso*, %struct.dso** %3, align 8
  %72 = getelementptr inbounds %struct.dso, %struct.dso* %71, i32 0, i32 0
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  br label %74

74:                                               ; preds = %49, %1
  %75 = load %struct.dso*, %struct.dso** %3, align 8
  ret %struct.dso* %75
}

declare dso_local %struct.dso* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32) #1

declare dso_local i32 @dso__set_short_name(%struct.dso*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
