; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_facility.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"nf_ct_q931: Facility\0A\00", align 1
@eFacilityReason_callForwarded = common dso_local global i64 0, align 8
@eFacility_UUIE_alternativeAddress = common dso_local global i32 0, align 4
@eFacility_UUIE_h245Address = common dso_local global i32 0, align 4
@eFacility_UUIE_fastStart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, %struct.TYPE_7__*)* @process_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_facility(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @eFacilityReason_callForwarded, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @eFacility_UUIE_alternativeAddress, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8**, i8*** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = call i32 @expect_callforwarding(%struct.sk_buff* %31, %struct.nf_conn* %32, i32 %33, i8** %34, i32 %35, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %98

39:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %98

40:                                               ; preds = %6
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @eFacility_UUIE_h245Address, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8**, i8*** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = call i32 @expect_h245(%struct.sk_buff* %48, %struct.nf_conn* %49, i32 %50, i8** %51, i32 %52, i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 -1, i32* %7, align 4
  br label %98

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @eFacility_UUIE_fastStart, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8**, i8*** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @process_olc(%struct.sk_buff* %76, %struct.nf_conn* %77, i32 %78, i8** %79, i32 %80, i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i32 -1, i32* %7, align 4
  br label %98

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %68

96:                                               ; preds = %68
  br label %97

97:                                               ; preds = %96, %60
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %91, %58, %39, %30
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @expect_callforwarding(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_h245(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @process_olc(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
