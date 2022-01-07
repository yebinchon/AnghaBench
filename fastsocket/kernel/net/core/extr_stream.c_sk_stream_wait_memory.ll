; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_wait_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_wait_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_stream_wait_memory(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i64 @sk_stream_memory_free(%struct.sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = call i32 (...) @net_random()
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 5
  %19 = srem i32 %16, %18
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %15, %2
  br label %23

23:                                               ; preds = %22, %127
  %24 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %24, i32* %28)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %34 = call i32 @prepare_to_wait(i32 %32, i32* @wait, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %23
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SEND_SHUTDOWN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %23
  br label %137

47:                                               ; preds = %39
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %140

52:                                               ; preds = %47
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %143

57:                                               ; preds = %52
  %58 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %58, i32* %62)
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call i64 @sk_stream_memory_free(%struct.sock* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %130

71:                                               ; preds = %67, %57
  %72 = load i32, i32* @SOCK_NOSPACE, align 4
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %72, i32* %76)
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %71
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SEND_SHUTDOWN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i64 @sk_stream_memory_free(%struct.sock* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %98, %94, %87, %71
  %102 = phi i1 [ false, %94 ], [ false, %87 ], [ false, %71 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @sk_wait_event(%struct.sock* %82, i64* %7, i32 %103)
  %105 = load %struct.sock*, %struct.sock** %3, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %101
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %6, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub nsw i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i64 0, i64* %7, align 8
  br label %126

126:                                              ; preds = %125, %120, %111
  store i64 0, i64* %6, align 8
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i64, i64* %7, align 8
  %129 = load i64*, i64** %4, align 8
  store i64 %128, i64* %129, align 8
  br label %23

130:                                              ; preds = %70
  br label %131

131:                                              ; preds = %143, %140, %137, %130
  %132 = load %struct.sock*, %struct.sock** %3, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @finish_wait(i32 %134, i32* @wait)
  %136 = load i32, i32* %5, align 4
  ret i32 %136

137:                                              ; preds = %46
  %138 = load i32, i32* @EPIPE, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %131

140:                                              ; preds = %51
  %141 = load i32, i32* @EAGAIN, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %131

143:                                              ; preds = %56
  %144 = load i64*, i64** %4, align 8
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @sock_intr_errno(i64 %145)
  store i32 %146, i32* %5, align 4
  br label %131
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
