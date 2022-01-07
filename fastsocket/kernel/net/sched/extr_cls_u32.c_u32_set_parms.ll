; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_set_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tc_u_hnode = type { i32, i32 }
%struct.tc_u_knode = type { i32, i32, %struct.TYPE_2__, %struct.tc_u_hnode* }
%struct.TYPE_2__ = type { i8* }
%struct.nlattr = type { i32 }
%struct.tcf_exts = type { i32 }

@u32_ext_map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_U32_LINK = common dso_local global i64 0, align 8
@TCA_U32_CLASSID = common dso_local global i64 0, align 8
@TCA_U32_INDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.tc_u_hnode*, %struct.tc_u_knode*, %struct.nlattr**, %struct.nlattr*)* @u32_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_set_parms(%struct.tcf_proto* %0, i64 %1, %struct.tc_u_hnode* %2, %struct.tc_u_knode* %3, %struct.nlattr** %4, %struct.nlattr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcf_proto*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc_u_hnode*, align 8
  %11 = alloca %struct.tc_u_knode*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcf_exts, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.tc_u_hnode*, align 8
  %18 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.tc_u_hnode* %2, %struct.tc_u_hnode** %10, align 8
  store %struct.tc_u_knode* %3, %struct.tc_u_knode** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.nlattr* %5, %struct.nlattr** %13, align 8
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %22 = call i32 @tcf_exts_validate(%struct.tcf_proto* %19, %struct.nlattr** %20, %struct.nlattr* %21, %struct.tcf_exts* %15, i32* @u32_ext_map)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %7, align 4
  br label %110

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %31 = load i64, i64* @TCA_U32_LINK, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %81

35:                                               ; preds = %27
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load i64, i64* @TCA_U32_LINK, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i8* @nla_get_u32(%struct.nlattr* %39)
  store i8* %40, i8** %16, align 8
  store %struct.tc_u_hnode* null, %struct.tc_u_hnode** %17, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @TC_U32_KEY(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %106

45:                                               ; preds = %35
  %46 = load i8*, i8** %16, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %50 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = call %struct.tc_u_hnode* @u32_lookup_ht(i32 %51, i8* %52)
  store %struct.tc_u_hnode* %53, %struct.tc_u_hnode** %17, align 8
  %54 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %17, align 8
  %55 = icmp eq %struct.tc_u_hnode* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %106

57:                                               ; preds = %48
  %58 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %17, align 8
  %59 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %45
  %63 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %64 = call i32 @tcf_tree_lock(%struct.tcf_proto* %63)
  %65 = load %struct.tc_u_knode*, %struct.tc_u_knode** %11, align 8
  %66 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %65, i32 0, i32 3
  %67 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %66, align 8
  store %struct.tc_u_hnode* %67, %struct.tc_u_hnode** %18, align 8
  %68 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %17, align 8
  %69 = load %struct.tc_u_knode*, %struct.tc_u_knode** %11, align 8
  %70 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %69, i32 0, i32 3
  store %struct.tc_u_hnode* %68, %struct.tc_u_hnode** %70, align 8
  %71 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %72 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %71)
  %73 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %18, align 8
  %74 = icmp ne %struct.tc_u_hnode* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %18, align 8
  %77 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %62
  br label %81

81:                                               ; preds = %80, %27
  %82 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %83 = load i64, i64* @TCA_U32_CLASSID, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %89 = load i64, i64* @TCA_U32_CLASSID, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i8* @nla_get_u32(%struct.nlattr* %91)
  %93 = load %struct.tc_u_knode*, %struct.tc_u_knode** %11, align 8
  %94 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %97 = load %struct.tc_u_knode*, %struct.tc_u_knode** %11, align 8
  %98 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %97, i32 0, i32 2
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @tcf_bind_filter(%struct.tcf_proto* %96, %struct.TYPE_2__* %98, i64 %99)
  br label %101

101:                                              ; preds = %87, %81
  %102 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %103 = load %struct.tc_u_knode*, %struct.tc_u_knode** %11, align 8
  %104 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %103, i32 0, i32 0
  %105 = call i32 @tcf_exts_change(%struct.tcf_proto* %102, i32* %104, %struct.tcf_exts* %15)
  store i32 0, i32* %7, align 4
  br label %110

106:                                              ; preds = %56, %44
  %107 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %108 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %107, %struct.tcf_exts* %15)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %101, %25
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @tcf_exts_validate(%struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, %struct.tcf_exts*, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @TC_U32_KEY(i8*) #1

declare dso_local %struct.tc_u_hnode* @u32_lookup_ht(i32, i8*) #1

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_exts_change(%struct.tcf_proto*, i32*, %struct.tcf_exts*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, %struct.tcf_exts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
