; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test__term = type { i32 (%struct.list_head*)*, i32 }
%struct.list_head = type opaque
%struct.list_head.0 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to parse terms '%s', err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test__term*)* @test_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_term(%struct.test__term* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test__term*, align 8
  %4 = alloca %struct.list_head.0*, align 8
  %5 = alloca i32, align 4
  store %struct.test__term* %0, %struct.test__term** %3, align 8
  %6 = call %struct.list_head.0* @malloc(i32 4)
  store %struct.list_head.0* %6, %struct.list_head.0** %4, align 8
  %7 = load %struct.list_head.0*, %struct.list_head.0** %4, align 8
  %8 = icmp ne %struct.list_head.0* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.list_head.0*, %struct.list_head.0** %4, align 8
  %14 = call i32 @INIT_LIST_HEAD(%struct.list_head.0* %13)
  %15 = load %struct.list_head.0*, %struct.list_head.0** %4, align 8
  %16 = load %struct.test__term*, %struct.test__term** %3, align 8
  %17 = getelementptr inbounds %struct.test__term, %struct.test__term* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @parse_events_terms(%struct.list_head.0* %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.test__term*, %struct.test__term** %3, align 8
  %24 = getelementptr inbounds %struct.test__term, %struct.test__term* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %12
  %30 = load %struct.test__term*, %struct.test__term** %3, align 8
  %31 = getelementptr inbounds %struct.test__term, %struct.test__term* %30, i32 0, i32 0
  %32 = load i32 (%struct.list_head*)*, i32 (%struct.list_head*)** %31, align 8
  %33 = load %struct.list_head.0*, %struct.list_head.0** %4, align 8
  %34 = bitcast %struct.list_head.0* %33 to %struct.list_head*
  %35 = call i32 %32(%struct.list_head* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.list_head.0*, %struct.list_head.0** %4, align 8
  %37 = call i32 @parse_events__free_terms(%struct.list_head.0* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %22, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.list_head.0* @malloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head.0*) #1

declare dso_local i32 @parse_events_terms(%struct.list_head.0*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @parse_events__free_terms(%struct.list_head.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
