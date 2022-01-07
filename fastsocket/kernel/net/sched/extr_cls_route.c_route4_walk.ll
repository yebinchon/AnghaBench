; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.route4_head* }
%struct.route4_head = type { %struct.route4_bucket** }
%struct.route4_bucket = type { %struct.route4_filter** }
%struct.route4_filter = type { %struct.route4_filter* }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @route4_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.route4_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.route4_bucket*, align 8
  %9 = alloca %struct.route4_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.route4_head*, %struct.route4_head** %11, align 8
  store %struct.route4_head* %12, %struct.route4_head** %5, align 8
  %13 = load %struct.route4_head*, %struct.route4_head** %5, align 8
  %14 = icmp eq %struct.route4_head* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %17 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %20 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %98

24:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %95, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp ule i32 %26, 256
  br i1 %27, label %28, label %98

28:                                               ; preds = %25
  %29 = load %struct.route4_head*, %struct.route4_head** %5, align 8
  %30 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %29, i32 0, i32 0
  %31 = load %struct.route4_bucket**, %struct.route4_bucket*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %31, i64 %33
  %35 = load %struct.route4_bucket*, %struct.route4_bucket** %34, align 8
  store %struct.route4_bucket* %35, %struct.route4_bucket** %8, align 8
  %36 = load %struct.route4_bucket*, %struct.route4_bucket** %8, align 8
  %37 = icmp ne %struct.route4_bucket* %36, null
  br i1 %37, label %38, label %94

38:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %90, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp ule i32 %40, 32
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = load %struct.route4_bucket*, %struct.route4_bucket** %8, align 8
  %44 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %43, i32 0, i32 0
  %45 = load %struct.route4_filter**, %struct.route4_filter*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %45, i64 %47
  %49 = load %struct.route4_filter*, %struct.route4_filter** %48, align 8
  store %struct.route4_filter* %49, %struct.route4_filter** %9, align 8
  br label %50

50:                                               ; preds = %85, %42
  %51 = load %struct.route4_filter*, %struct.route4_filter** %9, align 8
  %52 = icmp ne %struct.route4_filter* %51, null
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %55 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %58 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %63 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %85

66:                                               ; preds = %53
  %67 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %68 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %67, i32 0, i32 3
  %69 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %68, align 8
  %70 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %71 = bitcast %struct.tcf_proto* %70 to %struct.tcf_proto.0*
  %72 = load %struct.route4_filter*, %struct.route4_filter** %9, align 8
  %73 = ptrtoint %struct.route4_filter* %72 to i64
  %74 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %75 = call i64 %69(%struct.tcf_proto.0* %71, i64 %73, %struct.tcf_walker* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %79 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %98

80:                                               ; preds = %66
  %81 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %82 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %80, %61
  %86 = load %struct.route4_filter*, %struct.route4_filter** %9, align 8
  %87 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %86, i32 0, i32 0
  %88 = load %struct.route4_filter*, %struct.route4_filter** %87, align 8
  store %struct.route4_filter* %88, %struct.route4_filter** %9, align 8
  br label %50

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %39

93:                                               ; preds = %39
  br label %94

94:                                               ; preds = %93, %28
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %25

98:                                               ; preds = %23, %77, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
