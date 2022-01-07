; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_build-id.c_dso__build_id_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_build-id.c_dso__build_id_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }

@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/.build-id/%.2s/%s\00", align 1
@buildid_dir = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dso__build_id_filename(%struct.dso* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @BUILD_ID_SIZE, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.dso*, %struct.dso** %5, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.dso*, %struct.dso** %5, align 8
  %24 = getelementptr inbounds %struct.dso, %struct.dso* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @build_id__sprintf(i32 %25, i32 4, i8* %16)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i8*, i8** @buildid_dir, align 8
  %31 = getelementptr inbounds i8, i8* %16, i64 2
  %32 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %16, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %44

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** @buildid_dir, align 8
  %40 = getelementptr inbounds i8, i8* %16, i64 2
  %41 = call i32 @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %16, i8* %40)
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %34, %21
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #2

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
