; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_buf = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_printbuf_reset(%struct.print_buf* %0) #0 {
  %2 = alloca %struct.print_buf*, align 8
  store %struct.print_buf* %0, %struct.print_buf** %2, align 8
  %3 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %4 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %9 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %12 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %14 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %18 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.print_buf*, %struct.print_buf** %2, align 8
  %21 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
