; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp_frame.c_irlmp_find_lsap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp_frame.c_irlmp_find_lsap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsap_cb = type { i64, i64 }
%struct.lap_cb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.lsap_cb*, i64 }
%struct.TYPE_7__ = type { i32 }

@CONNECT_CMD = common dso_local global i32 0, align 4
@LSAP_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lsap_cb* (%struct.lap_cb*, i64, i64, i32, %struct.TYPE_7__*)* @irlmp_find_lsap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lsap_cb* @irlmp_find_lsap(%struct.lap_cb* %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca %struct.lap_cb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.lsap_cb*, align 8
  %12 = alloca i64, align 8
  store %struct.lap_cb* %0, %struct.lap_cb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %12, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = call i64 @hashbin_get_first(%struct.TYPE_7__* %17)
  %19 = inttoptr i64 %18 to %struct.lsap_cb*
  store %struct.lsap_cb* %19, %struct.lsap_cb** %11, align 8
  br label %20

20:                                               ; preds = %56, %5
  %21 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %22 = icmp ne %struct.lsap_cb* %21, null
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CONNECT_CMD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %29 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %35 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LSAP_ANY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %42 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %60

43:                                               ; preds = %33, %27, %23
  %44 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %45 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  %51 = getelementptr inbounds %struct.lsap_cb, %struct.lsap_cb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49, %43
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = call i64 @hashbin_get_next(%struct.TYPE_7__* %57)
  %59 = inttoptr i64 %58 to %struct.lsap_cb*
  store %struct.lsap_cb* %59, %struct.lsap_cb** %11, align 8
  br label %20

60:                                               ; preds = %55, %39, %20
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.lsap_cb*, %struct.lsap_cb** %11, align 8
  ret %struct.lsap_cb* %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hashbin_get_first(%struct.TYPE_7__*) #1

declare dso_local i64 @hashbin_get_next(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
