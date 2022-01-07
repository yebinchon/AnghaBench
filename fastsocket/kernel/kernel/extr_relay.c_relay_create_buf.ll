; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_create_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_create_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { %struct.rchan_buf*, %struct.rchan*, i32 }
%struct.rchan = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rchan_buf* (%struct.rchan*)* @relay_create_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rchan_buf* @relay_create_buf(%struct.rchan* %0) #0 {
  %2 = alloca %struct.rchan_buf*, align 8
  %3 = alloca %struct.rchan*, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  store %struct.rchan* %0, %struct.rchan** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.rchan_buf* @kzalloc(i32 24, i32 %5)
  store %struct.rchan_buf* %6, %struct.rchan_buf** %4, align 8
  %7 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %8 = icmp ne %struct.rchan_buf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.rchan_buf* null, %struct.rchan_buf** %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.rchan*, %struct.rchan** %3, align 8
  %12 = getelementptr inbounds %struct.rchan, %struct.rchan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rchan_buf* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %20 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %19, i32 0, i32 0
  store %struct.rchan_buf* %18, %struct.rchan_buf** %20, align 8
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %22 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %21, i32 0, i32 0
  %23 = load %struct.rchan_buf*, %struct.rchan_buf** %22, align 8
  %24 = icmp ne %struct.rchan_buf* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  br label %48

26:                                               ; preds = %10
  %27 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %28 = load %struct.rchan*, %struct.rchan** %3, align 8
  %29 = getelementptr inbounds %struct.rchan, %struct.rchan* %28, i32 0, i32 2
  %30 = call i32 @relay_alloc_buf(%struct.rchan_buf* %27, i32* %29)
  %31 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %32 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %34 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %48

38:                                               ; preds = %26
  %39 = load %struct.rchan*, %struct.rchan** %3, align 8
  %40 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %41 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %40, i32 0, i32 1
  store %struct.rchan* %39, %struct.rchan** %41, align 8
  %42 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %43 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %42, i32 0, i32 1
  %44 = load %struct.rchan*, %struct.rchan** %43, align 8
  %45 = getelementptr inbounds %struct.rchan, %struct.rchan* %44, i32 0, i32 1
  %46 = call i32 @kref_get(i32* %45)
  %47 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  store %struct.rchan_buf* %47, %struct.rchan_buf** %2, align 8
  br label %55

48:                                               ; preds = %37, %25
  %49 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %50 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %49, i32 0, i32 0
  %51 = load %struct.rchan_buf*, %struct.rchan_buf** %50, align 8
  %52 = call i32 @kfree(%struct.rchan_buf* %51)
  %53 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %54 = call i32 @kfree(%struct.rchan_buf* %53)
  store %struct.rchan_buf* null, %struct.rchan_buf** %2, align 8
  br label %55

55:                                               ; preds = %48, %38, %9
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  ret %struct.rchan_buf* %56
}

declare dso_local %struct.rchan_buf* @kzalloc(i32, i32) #1

declare dso_local %struct.rchan_buf* @kmalloc(i32, i32) #1

declare dso_local i32 @relay_alloc_buf(%struct.rchan_buf*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kfree(%struct.rchan_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
