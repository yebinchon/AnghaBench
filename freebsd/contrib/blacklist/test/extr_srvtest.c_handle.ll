; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_srvtest.c_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_srvtest.c_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = bitcast %struct.sockaddr_storage* %5 to i8*
  %14 = call i32 @accept(i32 %12, i8* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = call i32 (...) @fork()
  switch i32 %22, label %36 [
    i32 -1, label %23
    i32 0, label %25
  ]

23:                                               ; preds = %21
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %23
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @process_udp(i32 %30)
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @process_tcp(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @accept(i32, i8*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @process_udp(i32) #1

declare dso_local i32 @process_tcp(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
