; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_open_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_open_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32 }
%struct.rchan = type { %struct.rchan_buf**, i64, i64 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rchan_buf* (%struct.rchan*, i32)* @relay_open_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rchan_buf* @relay_open_buf(%struct.rchan* %0, i32 %1) #0 {
  %3 = alloca %struct.rchan_buf*, align 8
  %4 = alloca %struct.rchan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rchan_buf*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.rchan* %0, %struct.rchan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rchan_buf* null, %struct.rchan_buf** %6, align 8
  %8 = load %struct.rchan*, %struct.rchan** %4, align 8
  %9 = getelementptr inbounds %struct.rchan, %struct.rchan* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rchan*, %struct.rchan** %4, align 8
  %14 = getelementptr inbounds %struct.rchan, %struct.rchan* %13, i32 0, i32 0
  %15 = load %struct.rchan_buf**, %struct.rchan_buf*** %14, align 8
  %16 = getelementptr inbounds %struct.rchan_buf*, %struct.rchan_buf** %15, i64 0
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %16, align 8
  store %struct.rchan_buf* %17, %struct.rchan_buf** %3, align 8
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.rchan*, %struct.rchan** %4, align 8
  %20 = call %struct.rchan_buf* @relay_create_buf(%struct.rchan* %19)
  store %struct.rchan_buf* %20, %struct.rchan_buf** %6, align 8
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %22 = icmp ne %struct.rchan_buf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.rchan_buf* null, %struct.rchan_buf** %3, align 8
  br label %64

24:                                               ; preds = %18
  %25 = load %struct.rchan*, %struct.rchan** %4, align 8
  %26 = getelementptr inbounds %struct.rchan, %struct.rchan* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.rchan*, %struct.rchan** %4, align 8
  %31 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.dentry* @relay_create_buf_file(%struct.rchan* %30, %struct.rchan_buf* %31, i32 %32)
  store %struct.dentry* %33, %struct.dentry** %7, align 8
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @relay_set_buf_dentry(%struct.rchan_buf* %38, %struct.dentry* %39)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %44 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %46 = call i32 @__relay_reset(%struct.rchan_buf* %45, i32 1)
  %47 = load %struct.rchan*, %struct.rchan** %4, align 8
  %48 = getelementptr inbounds %struct.rchan, %struct.rchan* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %53 = load %struct.rchan*, %struct.rchan** %4, align 8
  %54 = getelementptr inbounds %struct.rchan, %struct.rchan* %53, i32 0, i32 0
  %55 = load %struct.rchan_buf**, %struct.rchan_buf*** %54, align 8
  %56 = getelementptr inbounds %struct.rchan_buf*, %struct.rchan_buf** %55, i64 0
  store %struct.rchan_buf* %52, %struct.rchan_buf** %56, align 8
  %57 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %58 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  store %struct.rchan_buf* %60, %struct.rchan_buf** %3, align 8
  br label %64

61:                                               ; preds = %36
  %62 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %63 = call i32 @relay_destroy_buf(%struct.rchan_buf* %62)
  store %struct.rchan_buf* null, %struct.rchan_buf** %3, align 8
  br label %64

64:                                               ; preds = %61, %59, %23, %12
  %65 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  ret %struct.rchan_buf* %65
}

declare dso_local %struct.rchan_buf* @relay_create_buf(%struct.rchan*) #1

declare dso_local %struct.dentry* @relay_create_buf_file(%struct.rchan*, %struct.rchan_buf*, i32) #1

declare dso_local i32 @relay_set_buf_dentry(%struct.rchan_buf*, %struct.dentry*) #1

declare dso_local i32 @__relay_reset(%struct.rchan_buf*, i32) #1

declare dso_local i32 @relay_destroy_buf(%struct.rchan_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
