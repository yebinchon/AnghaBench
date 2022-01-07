; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xs_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xs_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i8*, i8* }

@XBT_NIL = common dso_local global i32 0, align 4
@XS_WATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @xs_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_watch(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x %struct.kvec], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strlen(i8* %9)
  %11 = getelementptr i8, i8* %10, i64 1
  %12 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 16
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 1
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strlen(i8* %17)
  %19 = getelementptr i8, i8* %18, i64 1
  %20 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 1
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 16
  %22 = load i32, i32* @XBT_NIL, align 4
  %23 = load i32, i32* @XS_WATCH, align 4
  %24 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%struct.kvec* %25)
  %27 = call i32 @xs_talkv(i32 %22, i32 %23, %struct.kvec* %24, i32 %26, i32* null)
  %28 = call i32 @xs_error(i32 %27)
  ret i32 %28
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @xs_error(i32) #1

declare dso_local i32 @xs_talkv(i32, i32, %struct.kvec*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
