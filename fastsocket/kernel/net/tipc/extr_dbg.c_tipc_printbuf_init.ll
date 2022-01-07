; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_buf = type { i8*, i8*, i32, i64 }

@TIPC_PB_MIN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_printbuf_init(%struct.print_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.print_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.print_buf* %0, %struct.print_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %9 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %12 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %15 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %17 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TIPC_PB_MIN_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %23 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %22, i32 0, i32 0
  store i8* null, i8** %23, align 8
  br label %40

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %29 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.print_buf*, %struct.print_buf** %4, align 8
  %33 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 -1, i8* %38, align 1
  br label %39

39:                                               ; preds = %27, %24
  br label %40

40:                                               ; preds = %39, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
