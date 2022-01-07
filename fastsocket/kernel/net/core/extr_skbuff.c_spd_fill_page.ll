; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_spd_fill_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_spd_fill_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splice_pipe_desc = type { i64, %struct.TYPE_2__*, %struct.page** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@PIPE_BUFFERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.splice_pipe_desc*, %struct.page*, i32*, i32, %struct.sk_buff*, i32, %struct.sock*)* @spd_fill_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spd_fill_page(%struct.splice_pipe_desc* %0, %struct.page* %1, i32* %2, i32 %3, %struct.sk_buff* %4, i32 %5, %struct.sock* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.splice_pipe_desc*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sock*, align 8
  store %struct.splice_pipe_desc* %0, %struct.splice_pipe_desc** %9, align 8
  store %struct.page* %1, %struct.page** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.sock* %6, %struct.sock** %15, align 8
  %16 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %17 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PIPE_BUFFERS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %73

25:                                               ; preds = %7
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = load %struct.sock*, %struct.sock** %15, align 8
  %33 = call %struct.page* @linear_to_page(%struct.page* %29, i32* %30, i32* %12, %struct.sk_buff* %31, %struct.sock* %32)
  store %struct.page* %33, %struct.page** %10, align 8
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %73

37:                                               ; preds = %28
  br label %41

38:                                               ; preds = %25
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = call i32 @get_page(%struct.page* %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %44 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %43, i32 0, i32 2
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %47 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %48
  store %struct.page* %42, %struct.page** %49, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %53 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %56 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %62 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %65 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %60, i32* %68, align 4
  %69 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %70 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %41, %36, %24
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @linear_to_page(%struct.page*, i32*, i32*, %struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
