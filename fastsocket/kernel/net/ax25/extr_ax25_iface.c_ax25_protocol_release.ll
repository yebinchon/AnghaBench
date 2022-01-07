; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_iface.c_ax25_protocol_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_iface.c_ax25_protocol_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ax25_protocol = type { i32, %struct.ax25_protocol* }

@protocol_list_lock = common dso_local global i32 0, align 4
@protocol_list = common dso_local global %struct.ax25_protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_protocol_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ax25_protocol*, align 8
  %4 = alloca %struct.ax25_protocol*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 @write_lock_bh(i32* @protocol_list_lock)
  %6 = load %struct.ax25_protocol*, %struct.ax25_protocol** @protocol_list, align 8
  store %struct.ax25_protocol* %6, %struct.ax25_protocol** %4, align 8
  %7 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %8 = icmp eq %struct.ax25_protocol* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %12 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %18 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %17, i32 0, i32 1
  %19 = load %struct.ax25_protocol*, %struct.ax25_protocol** %18, align 8
  store %struct.ax25_protocol* %19, %struct.ax25_protocol** @protocol_list, align 8
  br label %55

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %50, %20
  %22 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %23 = icmp ne %struct.ax25_protocol* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %26 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %25, i32 0, i32 1
  %27 = load %struct.ax25_protocol*, %struct.ax25_protocol** %26, align 8
  %28 = icmp ne %struct.ax25_protocol* %27, null
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %54

31:                                               ; preds = %29
  %32 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %33 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %32, i32 0, i32 1
  %34 = load %struct.ax25_protocol*, %struct.ax25_protocol** %33, align 8
  %35 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %41 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %40, i32 0, i32 1
  %42 = load %struct.ax25_protocol*, %struct.ax25_protocol** %41, align 8
  store %struct.ax25_protocol* %42, %struct.ax25_protocol** %3, align 8
  %43 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %44 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %43, i32 0, i32 1
  %45 = load %struct.ax25_protocol*, %struct.ax25_protocol** %44, align 8
  %46 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %45, i32 0, i32 1
  %47 = load %struct.ax25_protocol*, %struct.ax25_protocol** %46, align 8
  %48 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %49 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %48, i32 0, i32 1
  store %struct.ax25_protocol* %47, %struct.ax25_protocol** %49, align 8
  br label %55

50:                                               ; preds = %31
  %51 = load %struct.ax25_protocol*, %struct.ax25_protocol** %4, align 8
  %52 = getelementptr inbounds %struct.ax25_protocol, %struct.ax25_protocol* %51, i32 0, i32 1
  %53 = load %struct.ax25_protocol*, %struct.ax25_protocol** %52, align 8
  store %struct.ax25_protocol* %53, %struct.ax25_protocol** %4, align 8
  br label %21

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %39, %16, %9
  %56 = call i32 @write_unlock_bh(i32* @protocol_list_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
