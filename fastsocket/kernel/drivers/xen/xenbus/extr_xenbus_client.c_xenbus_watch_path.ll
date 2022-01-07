; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_watch_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_watch_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_watch = type { i8*, void (%struct.xenbus_watch*, i8**, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"adding watch on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_watch_path(%struct.xenbus_device* %0, i8* %1, %struct.xenbus_watch* %2, void (%struct.xenbus_watch*, i8**, i32)* %3) #0 {
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_watch*, align 8
  %8 = alloca void (%struct.xenbus_watch*, i8**, i32)*, align 8
  %9 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.xenbus_watch* %2, %struct.xenbus_watch** %7, align 8
  store void (%struct.xenbus_watch*, i8**, i32)* %3, void (%struct.xenbus_watch*, i8**, i32)** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.xenbus_watch*, %struct.xenbus_watch** %7, align 8
  %12 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load void (%struct.xenbus_watch*, i8**, i32)*, void (%struct.xenbus_watch*, i8**, i32)** %8, align 8
  %14 = load %struct.xenbus_watch*, %struct.xenbus_watch** %7, align 8
  %15 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %14, i32 0, i32 1
  store void (%struct.xenbus_watch*, i8**, i32)* %13, void (%struct.xenbus_watch*, i8**, i32)** %15, align 8
  %16 = load %struct.xenbus_watch*, %struct.xenbus_watch** %7, align 8
  %17 = call i32 @register_xenbus_watch(%struct.xenbus_watch* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.xenbus_watch*, %struct.xenbus_watch** %7, align 8
  %22 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %21, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = load %struct.xenbus_watch*, %struct.xenbus_watch** %7, align 8
  %24 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %23, i32 0, i32 1
  store void (%struct.xenbus_watch*, i8**, i32)* null, void (%struct.xenbus_watch*, i8**, i32)** %24, align 8
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %25, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %20, %4
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @register_xenbus_watch(%struct.xenbus_watch*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
