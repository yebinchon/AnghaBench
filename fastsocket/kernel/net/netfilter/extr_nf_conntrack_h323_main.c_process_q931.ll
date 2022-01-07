; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_q931.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_q931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"nf_ct_q931: Q.931 signal %d\0A\00", align 1
@eH323_UU_PDU_h245Control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, %struct.TYPE_10__*)* @process_q931 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_q931(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %14, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %84 [
    i32 128, label %24
    i32 132, label %34
    i32 131, label %44
    i32 133, label %54
    i32 130, label %64
    i32 129, label %74
  ]

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8**, i8*** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  %33 = call i32 @process_setup(%struct.sk_buff* %25, %struct.nf_conn* %26, i32 %27, i8** %28, i32 %29, i32* %32)
  store i32 %33, i32* %16, align 4
  br label %90

34:                                               ; preds = %6
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i8**, i8*** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = call i32 @process_callproceeding(%struct.sk_buff* %35, %struct.nf_conn* %36, i32 %37, i8** %38, i32 %39, i32* %42)
  store i32 %43, i32* %16, align 4
  br label %90

44:                                               ; preds = %6
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i8**, i8*** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = call i32 @process_connect(%struct.sk_buff* %45, %struct.nf_conn* %46, i32 %47, i8** %48, i32 %49, i32* %52)
  store i32 %53, i32* %16, align 4
  br label %90

54:                                               ; preds = %6
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8**, i8*** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = call i32 @process_alerting(%struct.sk_buff* %55, %struct.nf_conn* %56, i32 %57, i8** %58, i32 %59, i32* %62)
  store i32 %63, i32* %16, align 4
  br label %90

64:                                               ; preds = %6
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i8**, i8*** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = call i32 @process_facility(%struct.sk_buff* %65, %struct.nf_conn* %66, i32 %67, i8** %68, i32 %69, i32* %72)
  store i32 %73, i32* %16, align 4
  br label %90

74:                                               ; preds = %6
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i8**, i8*** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = call i32 @process_progress(%struct.sk_buff* %75, %struct.nf_conn* %76, i32 %77, i8** %78, i32 %79, i32* %82)
  store i32 %83, i32* %16, align 4
  br label %90

84:                                               ; preds = %6
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %74, %64, %54, %44, %34, %24
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 -1, i32* %7, align 4
  br label %132

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @eH323_UU_PDU_h245Control, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %94
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %127, %101
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i8**, i8*** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @process_h245(%struct.sk_buff* %110, %struct.nf_conn* %111, i32 %112, i8** %113, i32 %114, i32* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  store i32 -1, i32* %7, align 4
  br label %132

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %102

130:                                              ; preds = %102
  br label %131

131:                                              ; preds = %130, %94
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %125, %93
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @process_setup(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_callproceeding(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_connect(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_alerting(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_facility(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_progress(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @process_h245(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
