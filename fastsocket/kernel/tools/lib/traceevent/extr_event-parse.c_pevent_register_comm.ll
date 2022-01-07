; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_register_comm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_register_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.cmdline_list*, i64 }
%struct.cmdline_list = type { i32, %struct.cmdline_list*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_register_comm(%struct.pevent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pevent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdline_list*, align 8
  store %struct.pevent* %0, %struct.pevent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pevent*, %struct.pevent** %5, align 8
  %10 = getelementptr inbounds %struct.pevent, %struct.pevent* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pevent*, %struct.pevent** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @add_new_comm(%struct.pevent* %14, i8* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = call %struct.cmdline_list* @malloc(i32 24)
  store %struct.cmdline_list* %19, %struct.cmdline_list** %8, align 8
  %20 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %21 = icmp ne %struct.cmdline_list* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %51

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strdup(i8* %24)
  %26 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %27 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %29 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %34 = call i32 @free(%struct.cmdline_list* %33)
  store i32 -1, i32* %4, align 4
  br label %51

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %38 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pevent*, %struct.pevent** %5, align 8
  %40 = getelementptr inbounds %struct.pevent, %struct.pevent* %39, i32 0, i32 1
  %41 = load %struct.cmdline_list*, %struct.cmdline_list** %40, align 8
  %42 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %43 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %42, i32 0, i32 1
  store %struct.cmdline_list* %41, %struct.cmdline_list** %43, align 8
  %44 = load %struct.cmdline_list*, %struct.cmdline_list** %8, align 8
  %45 = load %struct.pevent*, %struct.pevent** %5, align 8
  %46 = getelementptr inbounds %struct.pevent, %struct.pevent* %45, i32 0, i32 1
  store %struct.cmdline_list* %44, %struct.cmdline_list** %46, align 8
  %47 = load %struct.pevent*, %struct.pevent** %5, align 8
  %48 = getelementptr inbounds %struct.pevent, %struct.pevent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %32, %22, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @add_new_comm(%struct.pevent*, i8*, i32) #1

declare dso_local %struct.cmdline_list* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(%struct.cmdline_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
