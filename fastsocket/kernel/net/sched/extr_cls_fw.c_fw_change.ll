; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.fw_head* }
%struct.fw_head = type { %struct.fw_filter**, i64 }
%struct.fw_filter = type { i64, %struct.fw_filter* }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_FW_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fw_policy = common dso_local global i32 0, align 4
@TCA_FW_MASK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i64, %struct.nlattr**, i64*)* @fw_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_change(%struct.tcf_proto* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.fw_head*, align 8
  %13 = alloca %struct.fw_filter*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %21 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %20, i32 0, i32 0
  %22 = load %struct.fw_head*, %struct.fw_head** %21, align 8
  store %struct.fw_head* %22, %struct.fw_head** %12, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.fw_filter*
  store %struct.fw_filter* %25, %struct.fw_filter** %13, align 8
  %26 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %27 = load i64, i64* @TCA_OPTIONS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  store %struct.nlattr* %29, %struct.nlattr** %14, align 8
  %30 = load i32, i32* @TCA_FW_MAX, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %15, align 8
  %34 = alloca %struct.nlattr*, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

46:                                               ; preds = %5
  %47 = load i32, i32* @TCA_FW_MAX, align 4
  %48 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %49 = load i32, i32* @fw_policy, align 4
  %50 = call i32 @nla_parse_nested(%struct.nlattr** %34, i32 %47, %struct.nlattr* %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

55:                                               ; preds = %46
  %56 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %57 = icmp ne %struct.fw_filter* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %60 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

70:                                               ; preds = %64, %58
  %71 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %72 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %73 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @fw_change_attrs(%struct.tcf_proto* %71, %struct.fw_filter* %72, %struct.nlattr** %34, %struct.nlattr** %73, i64 %74)
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

76:                                               ; preds = %55
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

82:                                               ; preds = %76
  %83 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %84 = icmp eq %struct.fw_head* %83, null
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  store i64 4294967295, i64* %19, align 8
  %86 = load i64, i64* @TCA_FW_MASK, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i64, i64* @TCA_FW_MASK, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i64 @nla_get_u32(%struct.nlattr* %93)
  store i64 %94, i64* %19, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kzalloc(i32 16, i32 %96)
  %98 = bitcast i8* %97 to %struct.fw_head*
  store %struct.fw_head* %98, %struct.fw_head** %12, align 8
  %99 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %100 = icmp eq %struct.fw_head* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOBUFS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

104:                                              ; preds = %95
  %105 = load i64, i64* %19, align 8
  %106 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %107 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %109 = call i32 @tcf_tree_lock(%struct.tcf_proto* %108)
  %110 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %111 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %112 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %111, i32 0, i32 0
  store %struct.fw_head* %110, %struct.fw_head** %112, align 8
  %113 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %114 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %113)
  br label %115

115:                                              ; preds = %104, %82
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i8* @kzalloc(i32 16, i32 %116)
  %118 = bitcast i8* %117 to %struct.fw_filter*
  store %struct.fw_filter* %118, %struct.fw_filter** %13, align 8
  %119 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %120 = icmp eq %struct.fw_filter* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @ENOBUFS, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

124:                                              ; preds = %115
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %127 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %129 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %130 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @fw_change_attrs(%struct.tcf_proto* %128, %struct.fw_filter* %129, %struct.nlattr** %34, %struct.nlattr** %130, i64 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %160

136:                                              ; preds = %124
  %137 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %138 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %137, i32 0, i32 0
  %139 = load %struct.fw_filter**, %struct.fw_filter*** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i64 @fw_hash(i64 %140)
  %142 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %139, i64 %141
  %143 = load %struct.fw_filter*, %struct.fw_filter** %142, align 8
  %144 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %145 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %144, i32 0, i32 1
  store %struct.fw_filter* %143, %struct.fw_filter** %145, align 8
  %146 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %147 = call i32 @tcf_tree_lock(%struct.tcf_proto* %146)
  %148 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %149 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %150 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %149, i32 0, i32 0
  %151 = load %struct.fw_filter**, %struct.fw_filter*** %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @fw_hash(i64 %152)
  %154 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %151, i64 %153
  store %struct.fw_filter* %148, %struct.fw_filter** %154, align 8
  %155 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %156 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %155)
  %157 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %158 = ptrtoint %struct.fw_filter* %157 to i64
  %159 = load i64*, i64** %11, align 8
  store i64 %158, i64* %159, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

160:                                              ; preds = %135
  %161 = load %struct.fw_filter*, %struct.fw_filter** %13, align 8
  %162 = call i32 @kfree(%struct.fw_filter* %161)
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %164

164:                                              ; preds = %160, %136, %121, %101, %79, %70, %67, %53, %44
  %165 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @fw_change_attrs(%struct.tcf_proto*, %struct.fw_filter*, %struct.nlattr**, %struct.nlattr**, i64) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #2

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #2

declare dso_local i64 @fw_hash(i64) #2

declare dso_local i32 @kfree(%struct.fw_filter*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
