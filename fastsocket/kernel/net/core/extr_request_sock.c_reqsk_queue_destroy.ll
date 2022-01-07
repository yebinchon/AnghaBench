; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock_queue = type { i32 }
%struct.listen_sock = type { i32, i64, %struct.request_sock** }
%struct.request_sock = type { %struct.request_sock* }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reqsk_queue_destroy(%struct.request_sock_queue* %0) #0 {
  %2 = alloca %struct.request_sock_queue*, align 8
  %3 = alloca %struct.listen_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_sock*, align 8
  store %struct.request_sock_queue* %0, %struct.request_sock_queue** %2, align 8
  %7 = load %struct.request_sock_queue*, %struct.request_sock_queue** %2, align 8
  %8 = call %struct.listen_sock* @reqsk_queue_yank_listen_sk(%struct.request_sock_queue* %7)
  store %struct.listen_sock* %8, %struct.listen_sock** %3, align 8
  %9 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %10 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = add i64 24, %13
  store i64 %14, i64* %4, align 8
  %15 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %16 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %23 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %36, %26
  %28 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %29 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %28, i32 0, i32 2
  %30 = load %struct.request_sock**, %struct.request_sock*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.request_sock*, %struct.request_sock** %30, i64 %32
  %34 = load %struct.request_sock*, %struct.request_sock** %33, align 8
  store %struct.request_sock* %34, %struct.request_sock** %6, align 8
  %35 = icmp ne %struct.request_sock* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %38 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %37, i32 0, i32 0
  %39 = load %struct.request_sock*, %struct.request_sock** %38, align 8
  %40 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %41 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %40, i32 0, i32 2
  %42 = load %struct.request_sock**, %struct.request_sock*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.request_sock*, %struct.request_sock** %42, i64 %44
  store %struct.request_sock* %39, %struct.request_sock** %45, align 8
  %46 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %47 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %51 = call i32 @reqsk_free(%struct.request_sock* %50)
  br label %27

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %20

56:                                               ; preds = %20
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %59 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %69 = call i32 @vfree(%struct.listen_sock* %68)
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.listen_sock*, %struct.listen_sock** %3, align 8
  %72 = call i32 @kfree(%struct.listen_sock* %71)
  br label %73

73:                                               ; preds = %70, %67
  ret void
}

declare dso_local %struct.listen_sock* @reqsk_queue_yank_listen_sk(%struct.request_sock_queue*) #1

declare dso_local i32 @reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfree(%struct.listen_sock*) #1

declare dso_local i32 @kfree(%struct.listen_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
