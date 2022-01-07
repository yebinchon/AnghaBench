; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_cmdline_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_cmdline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.cmdline_list*, %struct.cmdline* }
%struct.cmdline_list = type { %struct.cmdline_list*, i32, i32 }
%struct.cmdline = type { i32, i32 }

@cmdline_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*)* @cmdline_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdline_init(%struct.pevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca %struct.cmdline_list*, align 8
  %5 = alloca %struct.cmdline_list*, align 8
  %6 = alloca %struct.cmdline*, align 8
  %7 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  %8 = load %struct.pevent*, %struct.pevent** %3, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 1
  %10 = load %struct.cmdline_list*, %struct.cmdline_list** %9, align 8
  store %struct.cmdline_list* %10, %struct.cmdline_list** %4, align 8
  %11 = load %struct.pevent*, %struct.pevent** %3, align 8
  %12 = getelementptr inbounds %struct.pevent, %struct.pevent* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.cmdline* @malloc(i32 %16)
  store %struct.cmdline* %17, %struct.cmdline** %6, align 8
  %18 = load %struct.cmdline*, %struct.cmdline** %6, align 8
  %19 = icmp ne %struct.cmdline* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %25, %21
  %23 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  %24 = icmp ne %struct.cmdline_list* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  %27 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cmdline*, %struct.cmdline** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %29, i64 %31
  %33 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %32, i32 0, i32 1
  store i32 %28, i32* %33, align 4
  %34 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  %35 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cmdline*, %struct.cmdline** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %37, i64 %39
  %41 = getelementptr inbounds %struct.cmdline, %struct.cmdline* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  store %struct.cmdline_list* %44, %struct.cmdline_list** %5, align 8
  %45 = load %struct.cmdline_list*, %struct.cmdline_list** %4, align 8
  %46 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %45, i32 0, i32 0
  %47 = load %struct.cmdline_list*, %struct.cmdline_list** %46, align 8
  store %struct.cmdline_list* %47, %struct.cmdline_list** %4, align 8
  %48 = load %struct.cmdline_list*, %struct.cmdline_list** %5, align 8
  %49 = call i32 @free(%struct.cmdline_list* %48)
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.cmdline*, %struct.cmdline** %6, align 8
  %52 = load %struct.pevent*, %struct.pevent** %3, align 8
  %53 = getelementptr inbounds %struct.pevent, %struct.pevent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @cmdline_cmp, align 4
  %56 = call i32 @qsort(%struct.cmdline* %51, i32 %54, i32 8, i32 %55)
  %57 = load %struct.cmdline*, %struct.cmdline** %6, align 8
  %58 = load %struct.pevent*, %struct.pevent** %3, align 8
  %59 = getelementptr inbounds %struct.pevent, %struct.pevent* %58, i32 0, i32 2
  store %struct.cmdline* %57, %struct.cmdline** %59, align 8
  %60 = load %struct.pevent*, %struct.pevent** %3, align 8
  %61 = getelementptr inbounds %struct.pevent, %struct.pevent* %60, i32 0, i32 1
  store %struct.cmdline_list* null, %struct.cmdline_list** %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.cmdline* @malloc(i32) #1

declare dso_local i32 @free(%struct.cmdline_list*) #1

declare dso_local i32 @qsort(%struct.cmdline*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
