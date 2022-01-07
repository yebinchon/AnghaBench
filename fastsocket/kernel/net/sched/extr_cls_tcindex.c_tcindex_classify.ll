; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tcf_result = type { i32, i64 }
%struct.tcindex_data = type { i32, i32, i32 }
%struct.tcindex_filter_result = type { i32, %struct.tcf_result }

@.str = private unnamed_addr constant [44 x i8] c"tcindex_classify(skb %p,tp %p,res %p),p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alg 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"map 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @tcindex_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcindex_data*, align 8
  %9 = alloca %struct.tcindex_filter_result*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %12 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %11)
  store %struct.tcindex_data* %12, %struct.tcindex_data** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %17 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %21 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %19, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %26 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %27 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %28 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %24, %struct.tcf_proto* %25, %struct.tcf_result* %26, %struct.tcindex_data* %27)
  %29 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data* %29, i32 %30)
  store %struct.tcindex_filter_result* %31, %struct.tcindex_filter_result** %9, align 8
  %32 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %33 = icmp ne %struct.tcindex_filter_result* %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %3
  %35 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %36 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %42 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TC_H_MAJ(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @TC_H_MAKE(i32 %46, i32 %47)
  %49 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %50 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %52 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %54 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.sk_buff*
  %58 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %57)
  store i32 0, i32* %4, align 4
  br label %76

59:                                               ; preds = %3
  %60 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %61 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %62 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %61, i32 0, i32 1
  %63 = bitcast %struct.tcf_result* %60 to i8*
  %64 = bitcast %struct.tcf_result* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %66 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.sk_buff*
  %70 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %73 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %72, i32 0, i32 0
  %74 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %75 = call i32 @tcf_exts_exec(%struct.sk_buff* %71, i32* %73, %struct.tcf_result* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %59, %40, %39
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*, ...) #1

declare dso_local %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
