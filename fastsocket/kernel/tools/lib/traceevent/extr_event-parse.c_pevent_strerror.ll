; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_strerror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }

@__PEVENT_ERRNO__START = common dso_local global i32 0, align 4
@__PEVENT_ERRNO__END = common dso_local global i32 0, align 4
@pevent_error_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_strerror(%struct.pevent* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.pevent* %0, %struct.pevent** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp uge i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i8* @strerror_r(i32 %16, i8* %17, i64 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %15
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub i64 %28, 1
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @min(i64 %29, i64 %30)
  %32 = call i32 @memcpy(i8* %26, i8* %27, i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %34, 1
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @min(i64 %35, i64 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %23, %15
  store i32 0, i32* %5, align 4
  br label %68

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @__PEVENT_ERRNO__START, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @__PEVENT_ERRNO__END, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i32 -1, i32* %5, align 4
  br label %68

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @__PEVENT_ERRNO__START, align 4
  %53 = sub i32 %51, %52
  %54 = sub i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i8**, i8*** @pevent_error_str, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %66 [
    i32 133, label %61
    i32 131, label %61
    i32 129, label %61
    i32 130, label %61
    i32 128, label %61
    i32 132, label %61
  ]

61:                                               ; preds = %50, %50, %50, %50, %50, %50
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %67

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %61
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %49, %40
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @strerror_r(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
