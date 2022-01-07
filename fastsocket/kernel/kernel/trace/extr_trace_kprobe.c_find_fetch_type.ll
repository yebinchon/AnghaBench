; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_find_fetch_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_find_fetch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32 }

@DEFAULT_FETCH_TYPE_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@fetch_type_table = common dso_local global %struct.fetch_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fetch_type* (i8*)* @find_fetch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fetch_type* @find_fetch_type(i8* %0) #0 {
  %2 = alloca %struct.fetch_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @DEFAULT_FETCH_TYPE_STR, align 8
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 98
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %65

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strict_strtoul(i8* %24, i32 0, i64* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %65

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  switch i64 %29, label %38 [
    i64 8, label %30
    i64 16, label %32
    i64 32, label %34
    i64 64, label %36
  ]

30:                                               ; preds = %28
  %31 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.fetch_type* %31, %struct.fetch_type** %2, align 8
  br label %66

32:                                               ; preds = %28
  %33 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fetch_type* %33, %struct.fetch_type** %2, align 8
  br label %66

34:                                               ; preds = %28
  %35 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fetch_type* %35, %struct.fetch_type** %2, align 8
  br label %66

36:                                               ; preds = %28
  %37 = call %struct.fetch_type* @find_fetch_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fetch_type* %37, %struct.fetch_type** %2, align 8
  br label %66

38:                                               ; preds = %28
  br label %65

39:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.fetch_type*, %struct.fetch_type** @fetch_type_table, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.fetch_type* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.fetch_type*, %struct.fetch_type** @fetch_type_table, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %47, i64 %49
  %51 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i8* %46, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.fetch_type*, %struct.fetch_type** @fetch_type_table, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %56, i64 %58
  store %struct.fetch_type* %59, %struct.fetch_type** %2, align 8
  br label %66

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %38, %27, %20
  store %struct.fetch_type* null, %struct.fetch_type** %2, align 8
  br label %66

66:                                               ; preds = %65, %55, %36, %34, %32, %30
  %67 = load %struct.fetch_type*, %struct.fetch_type** %2, align 8
  ret %struct.fetch_type* %67
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fetch_type*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
