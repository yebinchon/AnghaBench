; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c___relay_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c___relay_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, %struct.TYPE_4__*, i64*, i64, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rchan_buf*, i32, i32*, i32)* }

@wakeup_readers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan_buf*, i32)* @__relay_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__relay_reset(%struct.rchan_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.rchan_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %10 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %9, i32 0, i32 11
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 10
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %16 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %15, i32 0, i32 9
  %17 = load i32, i32* @wakeup_readers, align 4
  %18 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %19 = ptrtoint %struct.rchan_buf* %18 to i64
  %20 = call i32 @setup_timer(i32* %16, i32 %17, i64 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %23 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %22, i32 0, i32 9
  %24 = call i32 @del_timer_sync(i32* %23)
  br label %25

25:                                               ; preds = %21, %8
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %29 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %31 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %33 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %35 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %38 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %40 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %55, %25
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %44 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %51 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %60 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.rchan_buf*, i32, i32*, i32)*, i32 (%struct.rchan_buf*, i32, i32*, i32)** %64, align 8
  %66 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %67 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %68 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %65(%struct.rchan_buf* %66, i32 %69, i32* null, i32 0)
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
