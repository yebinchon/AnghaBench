; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.fw_head = type { i32, %struct.fw_filter** }
%struct.fw_filter = type { i32, i32, i32, %struct.tcf_result, %struct.fw_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @fw_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.fw_head*, align 8
  %9 = alloca %struct.fw_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fw_head*
  store %struct.fw_head* %15, %struct.fw_head** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %20 = icmp ne %struct.fw_head* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %23 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load %struct.fw_head*, %struct.fw_head** %8, align 8
  %28 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %27, i32 0, i32 1
  %29 = load %struct.fw_filter**, %struct.fw_filter*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @fw_hash(i32 %30)
  %32 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %29, i64 %31
  %33 = load %struct.fw_filter*, %struct.fw_filter** %32, align 8
  store %struct.fw_filter* %33, %struct.fw_filter** %9, align 8
  br label %34

34:                                               ; preds = %60, %21
  %35 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %36 = icmp ne %struct.fw_filter* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %39 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %45 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %46 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %45, i32 0, i32 3
  %47 = bitcast %struct.tcf_result* %44 to i8*
  %48 = bitcast %struct.tcf_result* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %51 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %50, i32 0, i32 1
  %52 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %53 = call i32 @tcf_exts_exec(%struct.sk_buff* %49, i32* %51, %struct.tcf_result* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %90

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.fw_filter*, %struct.fw_filter** %9, align 8
  %62 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %61, i32 0, i32 4
  %63 = load %struct.fw_filter*, %struct.fw_filter** %62, align 8
  store %struct.fw_filter* %63, %struct.fw_filter** %9, align 8
  br label %34

64:                                               ; preds = %34
  br label %89

65:                                               ; preds = %3
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @TC_H_MAJ(i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %75 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %73, %78
  %80 = call i64 @TC_H_MAJ(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %72, %68
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %85 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %87 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  store i32 0, i32* %4, align 4
  br label %90

88:                                               ; preds = %72, %65
  br label %89

89:                                               ; preds = %88, %64
  store i32 -1, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %82, %57
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @fw_hash(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
