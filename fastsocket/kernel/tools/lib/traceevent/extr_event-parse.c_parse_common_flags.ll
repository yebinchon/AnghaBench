; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_parse_common_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_parse_common_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"common_flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, i8*)* @parse_common_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_common_flags(%struct.pevent* %0, i8* %1) #0 {
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca i8*, align 8
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.pevent*, %struct.pevent** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.pevent*, %struct.pevent** %3, align 8
  %8 = getelementptr inbounds %struct.pevent, %struct.pevent* %7, i32 0, i32 1
  %9 = load %struct.pevent*, %struct.pevent** %3, align 8
  %10 = getelementptr inbounds %struct.pevent, %struct.pevent* %9, i32 0, i32 0
  %11 = call i32 @__parse_common(%struct.pevent* %5, i8* %6, i32* %8, i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret i32 %11
}

declare dso_local i32 @__parse_common(%struct.pevent*, i8*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
