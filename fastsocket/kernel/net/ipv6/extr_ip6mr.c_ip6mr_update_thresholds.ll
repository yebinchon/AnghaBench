; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_update_thresholds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6mr.c_ip6mr_update_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAXMIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfc6_cache*, i8*)* @ip6mr_update_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6mr_update_thresholds(%struct.mfc6_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.mfc6_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.mfc6_cache* %0, %struct.mfc6_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %8 = call %struct.net* @mfc6_net(%struct.mfc6_cache* %7)
  store %struct.net* %8, %struct.net** %6, align 8
  %9 = load i32, i32* @MAXMIFS, align 4
  %10 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %11 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 8
  %14 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %15 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %19 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @MAXMIFS, align 4
  %24 = call i32 @memset(i8* %22, i32 255, i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %97, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %25
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @MIF_EXISTS(%struct.net* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %96

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 255
  br i1 %52, label %53, label %96

53:                                               ; preds = %45
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %60 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %58, i8* %66, align 1
  %67 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %68 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %53
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %77 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %53
  %81 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %82 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.mfc6_cache*, %struct.mfc6_cache** %3, align 8
  %92 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %80
  br label %96

96:                                               ; preds = %95, %45, %37, %32
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %25

100:                                              ; preds = %25
  ret void
}

declare dso_local %struct.net* @mfc6_net(%struct.mfc6_cache*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @MIF_EXISTS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
