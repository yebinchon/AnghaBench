; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_proc_kallsyms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_proc_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pevent*)* @read_proc_kallsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_proc_kallsyms(%struct.pevent* %0) #0 {
  %2 = alloca %struct.pevent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.pevent* %0, %struct.pevent** %2, align 8
  %5 = load %struct.pevent*, %struct.pevent** %2, align 8
  %6 = call i32 @read4(%struct.pevent* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add i32 %11, 1
  %13 = call i8* @malloc_or_die(i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @read_or_die(i8* %14, i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load %struct.pevent*, %struct.pevent** %2, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @parse_proc_kallsyms(%struct.pevent* %21, i8* %22, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @read4(%struct.pevent*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @read_or_die(i8*, i32) #1

declare dso_local i32 @parse_proc_kallsyms(%struct.pevent*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
