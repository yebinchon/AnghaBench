; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_dumpreq_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_dumpreq_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line6_dump_request = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line6_dumpreq_destruct(%struct.line6_dump_request* %0) #0 {
  %2 = alloca %struct.line6_dump_request*, align 8
  store %struct.line6_dump_request* %0, %struct.line6_dump_request** %2, align 8
  %3 = load %struct.line6_dump_request*, %struct.line6_dump_request** %2, align 8
  %4 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.line6_dump_request*, %struct.line6_dump_request** %2, align 8
  %13 = call i32 @line6_dumpreq_destructbuf(%struct.line6_dump_request* %12, i32 0)
  %14 = load %struct.line6_dump_request*, %struct.line6_dump_request** %2, align 8
  %15 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.line6_dump_request*, %struct.line6_dump_request** %2, align 8
  %17 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %16, i32 0, i32 1
  %18 = call i32 @del_timer_sync(i32* %17)
  br label %19

19:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @line6_dumpreq_destructbuf(%struct.line6_dump_request*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
