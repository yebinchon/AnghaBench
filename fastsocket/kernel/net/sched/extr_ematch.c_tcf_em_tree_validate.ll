; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_ematch.c_tcf_em_tree_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_ematch.c_tcf_em_tree_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.tcf_ematch_tree = type { i32*, i32 }
%struct.tcf_ematch_tree_hdr = type { i32 }
%struct.tcf_ematch = type { i32 }

@TCA_EMATCH_TREE_MAX = common dso_local global i32 0, align 4
@em_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_EMATCH_TREE_HDR = common dso_local global i64 0, align 8
@TCA_EMATCH_TREE_LIST = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_em_tree_validate(%struct.tcf_proto* %0, %struct.nlattr* %1, %struct.tcf_ematch_tree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.tcf_ematch_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.tcf_ematch_tree_hdr*, align 8
  %18 = alloca %struct.tcf_ematch*, align 8
  %19 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.tcf_ematch_tree* %2, %struct.tcf_ematch_tree** %7, align 8
  %20 = load i32, i32* @TCA_EMATCH_TREE_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %26 = call i32 @memset(%struct.tcf_ematch_tree* %25, i32 0, i32 16)
  %27 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %147

30:                                               ; preds = %3
  %31 = load i32, i32* @TCA_EMATCH_TREE_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %33 = load i32, i32* @em_policy, align 4
  %34 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %31, %struct.nlattr* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %140

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* @TCA_EMATCH_TREE_HDR, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  store %struct.nlattr* %43, %struct.nlattr** %15, align 8
  %44 = load i64, i64* @TCA_EMATCH_TREE_LIST, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  store %struct.nlattr* %46, %struct.nlattr** %16, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %48 = icmp eq %struct.nlattr* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %51 = icmp eq %struct.nlattr* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %38
  br label %140

53:                                               ; preds = %49
  %54 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %55 = call i8* @nla_data(%struct.nlattr* %54)
  %56 = bitcast i8* %55 to %struct.tcf_ematch_tree_hdr*
  store %struct.tcf_ematch_tree_hdr* %56, %struct.tcf_ematch_tree_hdr** %17, align 8
  %57 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %58 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %57, i32 0, i32 1
  %59 = load %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch_tree_hdr** %17, align 8
  %60 = call i32 @memcpy(i32* %58, %struct.tcf_ematch_tree_hdr* %59, i32 4)
  %61 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %62 = call i8* @nla_data(%struct.nlattr* %61)
  %63 = bitcast i8* %62 to %struct.nlattr*
  store %struct.nlattr* %63, %struct.nlattr** %14, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %65 = call i32 @nla_len(%struct.nlattr* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch_tree_hdr** %17, align 8
  %67 = getelementptr inbounds %struct.tcf_ematch_tree_hdr, %struct.tcf_ematch_tree_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32* @kzalloc(i32 %72, i32 %73)
  %75 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %76 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %78 = getelementptr inbounds %struct.tcf_ematch_tree, %struct.tcf_ematch_tree* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %53
  br label %140

82:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %127, %82
  %84 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @nla_ok(%struct.nlattr* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  %91 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %92 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %142

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch_tree_hdr** %17, align 8
  %101 = getelementptr inbounds %struct.tcf_ematch_tree_hdr, %struct.tcf_ematch_tree_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %142

105:                                              ; preds = %98
  %106 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %107 = call i32 @nla_len(%struct.nlattr* %106)
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %142

111:                                              ; preds = %105
  %112 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree* %112, i32 %113)
  store %struct.tcf_ematch* %114, %struct.tcf_ematch** %18, align 8
  %115 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %116 = load %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch_tree_hdr** %17, align 8
  %117 = load %struct.tcf_ematch*, %struct.tcf_ematch** %18, align 8
  %118 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @tcf_em_validate(%struct.tcf_proto* %115, %struct.tcf_ematch_tree_hdr* %116, %struct.tcf_ematch* %117, %struct.nlattr* %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %142

124:                                              ; preds = %111
  %125 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %126 = call %struct.nlattr* @nla_next(%struct.nlattr* %125, i32* %9)
  store %struct.nlattr* %126, %struct.nlattr** %14, align 8
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %83

130:                                              ; preds = %83
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch_tree_hdr** %17, align 8
  %133 = getelementptr inbounds %struct.tcf_ematch_tree_hdr, %struct.tcf_ematch_tree_hdr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %142

139:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %139, %81, %52, %37
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %147

142:                                              ; preds = %136, %123, %110, %104, %97
  %143 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %144 = load %struct.tcf_ematch_tree*, %struct.tcf_ematch_tree** %7, align 8
  %145 = call i32 @tcf_em_tree_destroy(%struct.tcf_proto* %143, %struct.tcf_ematch_tree* %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %147

147:                                              ; preds = %142, %140, %29
  %148 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.tcf_ematch_tree*, i32, i32) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @memcpy(i32*, %struct.tcf_ematch_tree_hdr*, i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i64 @nla_ok(%struct.nlattr*, i32) #2

declare dso_local %struct.tcf_ematch* @tcf_em_get_match(%struct.tcf_ematch_tree*, i32) #2

declare dso_local i32 @tcf_em_validate(%struct.tcf_proto*, %struct.tcf_ematch_tree_hdr*, %struct.tcf_ematch*, %struct.nlattr*, i32) #2

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #2

declare dso_local i32 @tcf_em_tree_destroy(%struct.tcf_proto*, %struct.tcf_ematch_tree*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
