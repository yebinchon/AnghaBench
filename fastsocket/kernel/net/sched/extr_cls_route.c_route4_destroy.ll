; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.route4_head* }
%struct.route4_head = type { %struct.route4_filter**, %struct.route4_head** }
%struct.route4_filter = type { %struct.route4_filter* }
%struct.route4_bucket = type { %struct.route4_filter**, %struct.route4_bucket** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*)* @route4_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_destroy(%struct.tcf_proto* %0) #0 {
  %2 = alloca %struct.tcf_proto*, align 8
  %3 = alloca %struct.route4_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.route4_bucket*, align 8
  %7 = alloca %struct.route4_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %2, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load %struct.route4_head*, %struct.route4_head** %9, align 8
  store %struct.route4_head* %10, %struct.route4_head** %3, align 8
  %11 = load %struct.route4_head*, %struct.route4_head** %3, align 8
  %12 = icmp eq %struct.route4_head* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %64, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 256
  br i1 %17, label %18, label %67

18:                                               ; preds = %15
  %19 = load %struct.route4_head*, %struct.route4_head** %3, align 8
  %20 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %19, i32 0, i32 1
  %21 = load %struct.route4_head**, %struct.route4_head*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.route4_head*, %struct.route4_head** %21, i64 %23
  %25 = load %struct.route4_head*, %struct.route4_head** %24, align 8
  %26 = bitcast %struct.route4_head* %25 to %struct.route4_bucket*
  store %struct.route4_bucket* %26, %struct.route4_bucket** %6, align 8
  %27 = icmp ne %struct.route4_bucket* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 32
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %42, %32
  %34 = load %struct.route4_bucket*, %struct.route4_bucket** %6, align 8
  %35 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %34, i32 0, i32 0
  %36 = load %struct.route4_filter**, %struct.route4_filter*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %36, i64 %38
  %40 = load %struct.route4_filter*, %struct.route4_filter** %39, align 8
  store %struct.route4_filter* %40, %struct.route4_filter** %7, align 8
  %41 = icmp ne %struct.route4_filter* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.route4_filter*, %struct.route4_filter** %7, align 8
  %44 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %43, i32 0, i32 0
  %45 = load %struct.route4_filter*, %struct.route4_filter** %44, align 8
  %46 = load %struct.route4_bucket*, %struct.route4_bucket** %6, align 8
  %47 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %46, i32 0, i32 0
  %48 = load %struct.route4_filter**, %struct.route4_filter*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %48, i64 %50
  store %struct.route4_filter* %45, %struct.route4_filter** %51, align 8
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %53 = load %struct.route4_filter*, %struct.route4_filter** %7, align 8
  %54 = call i32 @route4_delete_filter(%struct.tcf_proto* %52, %struct.route4_filter* %53)
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.route4_bucket*, %struct.route4_bucket** %6, align 8
  %61 = bitcast %struct.route4_bucket* %60 to %struct.route4_head*
  %62 = call i32 @kfree(%struct.route4_head* %61)
  br label %63

63:                                               ; preds = %59, %18
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %15

67:                                               ; preds = %15
  %68 = load %struct.route4_head*, %struct.route4_head** %3, align 8
  %69 = call i32 @kfree(%struct.route4_head* %68)
  br label %70

70:                                               ; preds = %67, %13
  ret void
}

declare dso_local i32 @route4_delete_filter(%struct.tcf_proto*, %struct.route4_filter*) #1

declare dso_local i32 @kfree(%struct.route4_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
