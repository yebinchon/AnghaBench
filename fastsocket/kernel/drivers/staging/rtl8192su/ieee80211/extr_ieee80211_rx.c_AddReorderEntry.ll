; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_AddReorderEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_AddReorderEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.TYPE_6__ = type { %struct.list_head, i32 }

@RX_REORDER_ENTRY = common dso_local global i32 0, align 4
@List = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddReorderEntry(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.list_head* %8, %struct.list_head** %6, align 8
  br label %9

9:                                                ; preds = %52, %2
  %10 = load %struct.list_head*, %struct.list_head** %6, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = icmp ne %struct.list_head* %12, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %9
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i32 0, i32 0
  %22 = load %struct.list_head*, %struct.list_head** %21, align 8
  %23 = load i32, i32* @RX_REORDER_ENTRY, align 4
  %24 = load i32, i32* @List, align 4
  %25 = call i64 @list_entry(%struct.list_head* %22, i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @SN_LESS(i32 %19, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8
  store %struct.list_head* %34, %struct.list_head** %6, align 8
  br label %52

35:                                               ; preds = %16
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.list_head*, %struct.list_head** %6, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i32 0, i32 0
  %41 = load %struct.list_head*, %struct.list_head** %40, align 8
  %42 = load i32, i32* @RX_REORDER_ENTRY, align 4
  %43 = load i32, i32* @List, align 4
  %44 = call i64 @list_entry(%struct.list_head* %41, i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @SN_EQUAL(i32 %38, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %75

51:                                               ; preds = %35
  br label %53

52:                                               ; preds = %31
  br label %9

53:                                               ; preds = %51, %9
  %54 = load %struct.list_head*, %struct.list_head** %6, align 8
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %54, i32 0, i32 0
  %56 = load %struct.list_head*, %struct.list_head** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.list_head, %struct.list_head* %58, i32 0, i32 0
  store %struct.list_head* %56, %struct.list_head** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.list_head, %struct.list_head* %63, i32 0, i32 0
  %65 = load %struct.list_head*, %struct.list_head** %64, align 8
  %66 = getelementptr inbounds %struct.list_head, %struct.list_head* %65, i32 0, i32 1
  store %struct.list_head* %61, %struct.list_head** %66, align 8
  %67 = load %struct.list_head*, %struct.list_head** %6, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.list_head, %struct.list_head* %69, i32 0, i32 1
  store %struct.list_head* %67, %struct.list_head** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.list_head*, %struct.list_head** %6, align 8
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i32 0, i32 0
  store %struct.list_head* %72, %struct.list_head** %74, align 8
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %53, %50
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @SN_LESS(i32, i32) #1

declare dso_local i64 @list_entry(%struct.list_head*, i32, i32) #1

declare dso_local i64 @SN_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
