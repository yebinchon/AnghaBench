; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.route4_head = type { %struct.route4_bucket** }
%struct.route4_bucket = type { %struct.route4_filter** }
%struct.route4_filter = type { i32, %struct.route4_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcf_proto*, i32)* @route4_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @route4_get(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.route4_head*, align 8
  %7 = alloca %struct.route4_bucket*, align 8
  %8 = alloca %struct.route4_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %12 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.route4_head*
  store %struct.route4_head* %14, %struct.route4_head** %6, align 8
  %15 = load %struct.route4_head*, %struct.route4_head** %6, align 8
  %16 = icmp ne %struct.route4_head* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %67

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @to_hash(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %21, 256
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %67

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 16
  %27 = call i32 @from_hash(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ugt i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.route4_head*, %struct.route4_head** %6, align 8
  %33 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %32, i32 0, i32 0
  %34 = load %struct.route4_bucket**, %struct.route4_bucket*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %34, i64 %36
  %38 = load %struct.route4_bucket*, %struct.route4_bucket** %37, align 8
  store %struct.route4_bucket* %38, %struct.route4_bucket** %7, align 8
  %39 = icmp ne %struct.route4_bucket* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %31
  %41 = load %struct.route4_bucket*, %struct.route4_bucket** %7, align 8
  %42 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %41, i32 0, i32 0
  %43 = load %struct.route4_filter**, %struct.route4_filter*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %43, i64 %45
  %47 = load %struct.route4_filter*, %struct.route4_filter** %46, align 8
  store %struct.route4_filter* %47, %struct.route4_filter** %8, align 8
  br label %48

48:                                               ; preds = %61, %40
  %49 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %50 = icmp ne %struct.route4_filter* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %53 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %59 = ptrtoint %struct.route4_filter* %58 to i64
  store i64 %59, i64* %3, align 8
  br label %67

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %63 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %62, i32 0, i32 1
  %64 = load %struct.route4_filter*, %struct.route4_filter** %63, align 8
  store %struct.route4_filter* %64, %struct.route4_filter** %8, align 8
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %31
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %66, %57, %30, %23, %17
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @to_hash(i32) #1

declare dso_local i32 @from_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
