; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.tcindex_data = type { i32 }
%struct.tcindex_filter_result = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_TCINDEX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"tcindex_change(tp %p,handle 0x%08x,tca %p,arg %p),opt %p,p %p,r %p,*arg 0x%lx\0A\00", align 1
@tcindex_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i32, %struct.nlattr**, i64*)* @tcindex_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcindex_change(%struct.tcf_proto* %0, i64 %1, i32 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tcindex_data*, align 8
  %16 = alloca %struct.tcindex_filter_result*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %20 = load i64, i64* @TCA_OPTIONS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  store %struct.nlattr* %22, %struct.nlattr** %12, align 8
  %23 = load i32, i32* @TCA_TCINDEX_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %29 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %28)
  store %struct.tcindex_data* %29, %struct.tcindex_data** %15, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.tcindex_filter_result*
  store %struct.tcindex_filter_result* %32, %struct.tcindex_filter_result** %16, align 8
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %38 = load %struct.tcindex_data*, %struct.tcindex_data** %15, align 8
  %39 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %16, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  br label %46

45:                                               ; preds = %5
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i64 [ %44, %42 ], [ 0, %45 ]
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %33, i32 %34, %struct.nlattr** %35, i64* %36, %struct.nlattr* %37, %struct.tcindex_data* %38, %struct.tcindex_filter_result* %39, i64 %47)
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %72

52:                                               ; preds = %46
  %53 = load i32, i32* @TCA_TCINDEX_MAX, align 4
  %54 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %55 = load i32, i32* @tcindex_policy, align 4
  %56 = call i32 @nla_parse_nested(%struct.nlattr** %27, i32 %53, %struct.nlattr* %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %72

61:                                               ; preds = %52
  %62 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.tcindex_data*, %struct.tcindex_data** %15, align 8
  %66 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %16, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %68 = load i64, i64* @TCA_RATE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @tcindex_set_parms(%struct.tcf_proto* %62, i64 %63, i32 %64, %struct.tcindex_data* %65, %struct.tcindex_filter_result* %66, %struct.nlattr** %27, %struct.nlattr* %70)
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %61, %59, %51
  %73 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #2

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, i32, %struct.nlattr**, i64*, %struct.nlattr*, %struct.tcindex_data*, %struct.tcindex_filter_result*, i64) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @tcindex_set_parms(%struct.tcf_proto*, i64, i32, %struct.tcindex_data*, %struct.tcindex_filter_result*, %struct.nlattr**, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
