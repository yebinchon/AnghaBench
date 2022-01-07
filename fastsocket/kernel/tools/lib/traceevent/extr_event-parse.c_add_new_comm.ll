; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_add_new_comm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_add_new_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.cmdline* }
%struct.cmdline = type { i32, i64 }

@cmdline_cmp = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, i8*, i32)* @add_new_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_comm(%struct.pevent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pevent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdline*, align 8
  %9 = alloca %struct.cmdline*, align 8
  %10 = alloca %struct.cmdline, align 8
  store %struct.pevent* %0, %struct.pevent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pevent*, %struct.pevent** %5, align 8
  %12 = getelementptr inbounds %struct.pevent, %struct.pevent* %11, i32 0, i32 1
  %13 = load %struct.cmdline*, %struct.cmdline** %12, align 8
  store %struct.cmdline* %13, %struct.cmdline** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.pevent*, %struct.pevent** %5, align 8
  %21 = getelementptr inbounds %struct.pevent, %struct.pevent* %20, i32 0, i32 1
  %22 = load %struct.cmdline*, %struct.cmdline** %21, align 8
  %23 = load %struct.pevent*, %struct.pevent** %5, align 8
  %24 = getelementptr inbounds %struct.pevent, %struct.pevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @cmdline_cmp, align 4
  %27 = call %struct.cmdline* @bsearch(%struct.cmdline* %10, %struct.cmdline* %22, i32 %25, i32 16, i32 %26)
  store %struct.cmdline* %27, %struct.cmdline** %9, align 8
  %28 = load %struct.cmdline*, %struct.cmdline** %9, align 8
  %29 = icmp ne %struct.cmdline* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @EEXIST, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %103

32:                                               ; preds = %17
  %33 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %34 = load %struct.pevent*, %struct.pevent** %5, align 8
  %35 = getelementptr inbounds %struct.pevent, %struct.pevent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 16, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.cmdline* @realloc(%struct.cmdline* %33, i32 %40)
  store %struct.cmdline* %41, %struct.cmdline** %8, align 8
  %42 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %43 = icmp ne %struct.cmdline* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %103

46:                                               ; preds = %32
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strdup(i8* %47)
  %49 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %50 = load %struct.pevent*, %struct.pevent** %5, align 8
  %51 = getelementptr inbounds %struct.pevent, %struct.pevent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %49, i64 %53
  %55 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %54, i32 0, i32 1
  store i64 %48, i64* %55, align 8
  %56 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %57 = load %struct.pevent*, %struct.pevent** %5, align 8
  %58 = getelementptr inbounds %struct.pevent, %struct.pevent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %56, i64 %60
  %62 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %46
  %66 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %67 = call i32 @free(%struct.cmdline* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %103

69:                                               ; preds = %46
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %72 = load %struct.pevent*, %struct.pevent** %5, align 8
  %73 = getelementptr inbounds %struct.pevent, %struct.pevent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %71, i64 %75
  %77 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 8
  %78 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %79 = load %struct.pevent*, %struct.pevent** %5, align 8
  %80 = getelementptr inbounds %struct.pevent, %struct.pevent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %78, i64 %82
  %84 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = load %struct.pevent*, %struct.pevent** %5, align 8
  %89 = getelementptr inbounds %struct.pevent, %struct.pevent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %69
  %93 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %94 = load %struct.pevent*, %struct.pevent** %5, align 8
  %95 = getelementptr inbounds %struct.pevent, %struct.pevent* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* @cmdline_cmp, align 4
  %99 = call i32 @qsort(%struct.cmdline* %93, i64 %97, i32 16, i32 %98)
  %100 = load %struct.cmdline*, %struct.cmdline** %8, align 8
  %101 = load %struct.pevent*, %struct.pevent** %5, align 8
  %102 = getelementptr inbounds %struct.pevent, %struct.pevent* %101, i32 0, i32 1
  store %struct.cmdline* %100, %struct.cmdline** %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %65, %44, %30, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.cmdline* @bsearch(%struct.cmdline*, %struct.cmdline*, i32, i32, i32) #1

declare dso_local %struct.cmdline* @realloc(%struct.cmdline*, i32) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @free(%struct.cmdline*) #1

declare dso_local i32 @qsort(%struct.cmdline*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
