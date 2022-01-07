; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i32 }
%struct.tcf_proto.0 = type opaque
%struct.tcindex_data = type { i32, %struct.tcindex_filter**, %struct.TYPE_4__* }
%struct.tcindex_filter = type { i32, %struct.tcindex_filter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"tcindex_walk(tp %p,walker %p),p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @tcindex_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcindex_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.tcindex_data*, align 8
  %6 = alloca %struct.tcindex_filter*, align 8
  %7 = alloca %struct.tcindex_filter*, align 8
  %8 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %10 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %9)
  store %struct.tcindex_data* %10, %struct.tcindex_data** %5, align 8
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %12 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %13 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %11, %struct.tcf_walker* %12, %struct.tcindex_data* %13)
  %15 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %16 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %71, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %23 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %20
  %27 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %28 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %71

38:                                               ; preds = %26
  %39 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %40 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %43 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %48 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %47, i32 0, i32 2
  %49 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %48, align 8
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %51 = bitcast %struct.tcf_proto* %50 to %struct.tcf_proto.0*
  %52 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %53 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = ptrtoint %struct.TYPE_4__* %57 to i64
  %59 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %60 = call i64 %49(%struct.tcf_proto.0* %51, i64 %58, %struct.tcf_walker* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %64 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %63, i32 0, i32 3
  store i32 1, i32* %64, align 8
  br label %137

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %68 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %37
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %20

74:                                               ; preds = %20
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %77 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %76, i32 0, i32 1
  %78 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %77, align 8
  %79 = icmp ne %struct.tcindex_filter** %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %137

81:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %134, %81
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %85 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %82
  %89 = load %struct.tcindex_data*, %struct.tcindex_data** %5, align 8
  %90 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %89, i32 0, i32 1
  %91 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.tcindex_filter*, %struct.tcindex_filter** %91, i64 %93
  %95 = load %struct.tcindex_filter*, %struct.tcindex_filter** %94, align 8
  store %struct.tcindex_filter* %95, %struct.tcindex_filter** %6, align 8
  br label %96

96:                                               ; preds = %131, %88
  %97 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %98 = icmp ne %struct.tcindex_filter* %97, null
  br i1 %98, label %99, label %133

99:                                               ; preds = %96
  %100 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %101 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %100, i32 0, i32 1
  %102 = load %struct.tcindex_filter*, %struct.tcindex_filter** %101, align 8
  store %struct.tcindex_filter* %102, %struct.tcindex_filter** %7, align 8
  %103 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %104 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %107 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %99
  %111 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %112 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %111, i32 0, i32 2
  %113 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %112, align 8
  %114 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %115 = bitcast %struct.tcf_proto* %114 to %struct.tcf_proto.0*
  %116 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %117 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %116, i32 0, i32 0
  %118 = ptrtoint i32* %117 to i64
  %119 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %120 = call i64 %113(%struct.tcf_proto.0* %115, i64 %118, %struct.tcf_walker* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %124 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %123, i32 0, i32 3
  store i32 1, i32* %124, align 8
  br label %137

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %99
  %127 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %128 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %126
  %132 = load %struct.tcindex_filter*, %struct.tcindex_filter** %7, align 8
  store %struct.tcindex_filter* %132, %struct.tcindex_filter** %6, align 8
  br label %96

133:                                              ; preds = %96
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %82

137:                                              ; preds = %62, %80, %122, %82
  ret void
}

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, %struct.tcf_walker*, %struct.tcindex_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
