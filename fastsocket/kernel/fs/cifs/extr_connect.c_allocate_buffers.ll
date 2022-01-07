; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"No memory for large SMB response\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No memory for SMB response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_buffers(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %4 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %5 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @cifs_buf_get()
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @msleep(i32 3000)
  store i32 0, i32* %2, align 4
  br label %58

20:                                               ; preds = %8
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (...) @header_size()
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = call i64 (...) @cifs_small_buf_get()
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @msleep(i32 1000)
  store i32 0, i32* %2, align 4
  br label %58

50:                                               ; preds = %38
  br label %57

51:                                               ; preds = %33
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (...) @header_size()
  %56 = call i32 @memset(i8* %54, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %51, %50
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %47, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @cifs_buf_get(...) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @header_size(...) #1

declare dso_local i64 @cifs_small_buf_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
