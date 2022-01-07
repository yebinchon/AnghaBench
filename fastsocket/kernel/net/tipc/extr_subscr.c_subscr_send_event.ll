; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_subscr.c_subscr_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscription = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.iovec = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subscription*, i32, i32, i32, i32, i32)* @subscr_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscr_send_event(%struct.subscription* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.subscription*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iovec, align 8
  store %struct.subscription* %0, %struct.subscription** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.subscription*, %struct.subscription** %7, align 8
  %15 = getelementptr inbounds %struct.subscription, %struct.subscription* %14, i32 0, i32 2
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.subscription*, %struct.subscription** %7, align 8
  %21 = getelementptr inbounds %struct.subscription, %struct.subscription* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @htohl(i32 %19, i32 %22)
  %24 = load %struct.subscription*, %struct.subscription** %7, align 8
  %25 = getelementptr inbounds %struct.subscription, %struct.subscription* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.subscription*, %struct.subscription** %7, align 8
  %29 = getelementptr inbounds %struct.subscription, %struct.subscription* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @htohl(i32 %27, i32 %30)
  %32 = load %struct.subscription*, %struct.subscription** %7, align 8
  %33 = getelementptr inbounds %struct.subscription, %struct.subscription* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.subscription*, %struct.subscription** %7, align 8
  %37 = getelementptr inbounds %struct.subscription, %struct.subscription* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htohl(i32 %35, i32 %38)
  %40 = load %struct.subscription*, %struct.subscription** %7, align 8
  %41 = getelementptr inbounds %struct.subscription, %struct.subscription* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.subscription*, %struct.subscription** %7, align 8
  %45 = getelementptr inbounds %struct.subscription, %struct.subscription* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @htohl(i32 %43, i32 %46)
  %48 = load %struct.subscription*, %struct.subscription** %7, align 8
  %49 = getelementptr inbounds %struct.subscription, %struct.subscription* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.subscription*, %struct.subscription** %7, align 8
  %54 = getelementptr inbounds %struct.subscription, %struct.subscription* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @htohl(i32 %52, i32 %55)
  %57 = load %struct.subscription*, %struct.subscription** %7, align 8
  %58 = getelementptr inbounds %struct.subscription, %struct.subscription* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load %struct.subscription*, %struct.subscription** %7, align 8
  %62 = getelementptr inbounds %struct.subscription, %struct.subscription* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @tipc_send(i32 %63, i32 1, %struct.iovec* %13)
  ret void
}

declare dso_local i8* @htohl(i32, i32) #1

declare dso_local i32 @tipc_send(i32, i32, %struct.iovec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
