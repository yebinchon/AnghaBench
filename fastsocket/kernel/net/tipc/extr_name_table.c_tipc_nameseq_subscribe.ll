; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nameseq_subscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nameseq_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_seq = type { i64, %struct.sub_seq*, i32 }
%struct.sub_seq = type { i32, i32, %struct.publication* }
%struct.publication = type { %struct.publication*, i32, i32 }
%struct.subscription = type { i32 }

@TIPC_PUBLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.name_seq*, %struct.subscription*)* @tipc_nameseq_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_nameseq_subscribe(%struct.name_seq* %0, %struct.subscription* %1) #0 {
  %3 = alloca %struct.name_seq*, align 8
  %4 = alloca %struct.subscription*, align 8
  %5 = alloca %struct.sub_seq*, align 8
  %6 = alloca %struct.publication*, align 8
  %7 = alloca %struct.publication*, align 8
  %8 = alloca i32, align 4
  store %struct.name_seq* %0, %struct.name_seq** %3, align 8
  store %struct.subscription* %1, %struct.subscription** %4, align 8
  %9 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %10 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %9, i32 0, i32 1
  %11 = load %struct.sub_seq*, %struct.sub_seq** %10, align 8
  store %struct.sub_seq* %11, %struct.sub_seq** %5, align 8
  %12 = load %struct.subscription*, %struct.subscription** %4, align 8
  %13 = getelementptr inbounds %struct.subscription, %struct.subscription* %12, i32 0, i32 0
  %14 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %15 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %14, i32 0, i32 2
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %18 = icmp ne %struct.sub_seq* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %77

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %74, %20
  %22 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %23 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %24 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %23, i32 0, i32 1
  %25 = load %struct.sub_seq*, %struct.sub_seq** %24, align 8
  %26 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %27 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %25, i64 %28
  %30 = icmp ne %struct.sub_seq* %22, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %21
  %32 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %33 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %32, i32 0, i32 2
  %34 = load %struct.publication*, %struct.publication** %33, align 8
  store %struct.publication* %34, %struct.publication** %6, align 8
  %35 = load %struct.publication*, %struct.publication** %6, align 8
  %36 = icmp ne %struct.publication* %35, null
  br i1 %36, label %37, label %74

37:                                               ; preds = %31
  %38 = load %struct.subscription*, %struct.subscription** %4, align 8
  %39 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %40 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %43 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @tipc_subscr_overlap(%struct.subscription* %38, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %37
  %48 = load %struct.publication*, %struct.publication** %6, align 8
  store %struct.publication* %48, %struct.publication** %7, align 8
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %69, %47
  %50 = load %struct.subscription*, %struct.subscription** %4, align 8
  %51 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %52 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %55 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TIPC_PUBLISHED, align 4
  %58 = load %struct.publication*, %struct.publication** %7, align 8
  %59 = getelementptr inbounds %struct.publication, %struct.publication* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.publication*, %struct.publication** %7, align 8
  %62 = getelementptr inbounds %struct.publication, %struct.publication* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @tipc_subscr_report_overlap(%struct.subscription* %50, i32 %53, i32 %56, i32 %57, i32 %60, i32 %63, i32 %64)
  store i32 0, i32* %8, align 4
  %66 = load %struct.publication*, %struct.publication** %7, align 8
  %67 = getelementptr inbounds %struct.publication, %struct.publication* %66, i32 0, i32 0
  %68 = load %struct.publication*, %struct.publication** %67, align 8
  store %struct.publication* %68, %struct.publication** %7, align 8
  br label %69

69:                                               ; preds = %49
  %70 = load %struct.publication*, %struct.publication** %7, align 8
  %71 = load %struct.publication*, %struct.publication** %6, align 8
  %72 = icmp ne %struct.publication* %70, %71
  br i1 %72, label %49, label %73

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %37, %31
  %75 = load %struct.sub_seq*, %struct.sub_seq** %5, align 8
  %76 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %75, i32 1
  store %struct.sub_seq* %76, %struct.sub_seq** %5, align 8
  br label %21

77:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @tipc_subscr_overlap(%struct.subscription*, i32, i32) #1

declare dso_local i32 @tipc_subscr_report_overlap(%struct.subscription*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
