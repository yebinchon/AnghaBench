; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_exec_cmd.c_add_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_exec_cmd.c_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@PATH_SEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_path(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @is_absolute_path(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strbuf_addstr(%struct.strbuf* %17, i8* %18)
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @make_nonrelative_path(i8* %22)
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %21, i8* %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %27 = load i32, i32* @PATH_SEP, align 4
  %28 = call i32 @strbuf_addch(%struct.strbuf* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %7, %2
  ret void
}

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @make_nonrelative_path(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
