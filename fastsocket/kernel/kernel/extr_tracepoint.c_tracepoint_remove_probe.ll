; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_remove_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_remove_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @tracepoint_remove_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tracepoint_remove_probe(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tracepoint_entry*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.tracepoint_entry* @get_tracepoint(i8* %8)
  store %struct.tracepoint_entry* %9, %struct.tracepoint_entry** %6, align 8
  %10 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %11 = icmp ne %struct.tracepoint_entry* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @tracepoint_entry_remove_probe(%struct.tracepoint_entry* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %3, align 8
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %27 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %6, align 8
  %32 = call i32 @remove_tracepoint(%struct.tracepoint_entry* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %33, %23, %12
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local %struct.tracepoint_entry* @get_tracepoint(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @tracepoint_entry_remove_probe(%struct.tracepoint_entry*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @remove_tracepoint(%struct.tracepoint_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
