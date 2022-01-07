; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_build_zonelists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_build_zonelists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.zonelist* }
%struct.zonelist = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32* }

@MAX_NR_ZONES = common dso_local global i64 0, align 8
@MAX_NUMNODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @build_zonelists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_zonelists(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zonelist*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.zonelist*, %struct.zonelist** %11, align 8
  %13 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %12, i64 0
  store %struct.zonelist* %13, %struct.zonelist** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %16 = load i64, i64* @MAX_NR_ZONES, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @build_zonelists_node(%struct.TYPE_7__* %14, %struct.zonelist* %15, i32 0, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MAX_NUMNODES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @node_online(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_7__* @NODE_DATA(i32 %31)
  %33 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* @MAX_NR_ZONES, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @build_zonelists_node(%struct.TYPE_7__* %32, %struct.zonelist* %33, i32 %34, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @node_online(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = call %struct.TYPE_7__* @NODE_DATA(i32 %52)
  %54 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i64, i64* @MAX_NR_ZONES, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @build_zonelists_node(%struct.TYPE_7__* %53, %struct.zonelist* %54, i32 %55, i64 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %64 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %71 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  ret void
}

declare dso_local i32 @build_zonelists_node(%struct.TYPE_7__*, %struct.zonelist*, i32, i64) #1

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.TYPE_7__* @NODE_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
