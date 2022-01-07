; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_init_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_init_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tc_action_ops* }
%struct.tc_action_ops = type { i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action.0*, i32, i32)*, i32 }
%struct.nlattr = type opaque
%struct.tc_action.0 = type opaque
%struct.nlattr.1 = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@TCA_ACT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TCA_ACT_OPTIONS = common dso_local global i64 0, align 8
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tc_action* @tcf_action_init_1(%struct.nlattr.1* %0, %struct.nlattr.1* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.nlattr.1*, align 8
  %8 = alloca %struct.nlattr.1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tc_action*, align 8
  %13 = alloca %struct.tc_action_ops*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nlattr.1*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlattr.1* %0, %struct.nlattr.1** %7, align 8
  store %struct.nlattr.1* %1, %struct.nlattr.1** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @TCA_ACT_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.nlattr.1*, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %5
  %31 = load i32, i32* @TCA_ACT_MAX, align 4
  %32 = load %struct.nlattr.1*, %struct.nlattr.1** %7, align 8
  %33 = call i32 @nla_parse_nested(%struct.nlattr.1** %27, i32 %31, %struct.nlattr.1* %32, i32* null)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %136

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  %40 = load i64, i64* @TCA_ACT_KIND, align 8
  %41 = getelementptr inbounds %struct.nlattr.1*, %struct.nlattr.1** %27, i64 %40
  %42 = load %struct.nlattr.1*, %struct.nlattr.1** %41, align 8
  store %struct.nlattr.1* %42, %struct.nlattr.1** %17, align 8
  %43 = load %struct.nlattr.1*, %struct.nlattr.1** %17, align 8
  %44 = icmp eq %struct.nlattr.1* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %136

46:                                               ; preds = %37
  %47 = load %struct.nlattr.1*, %struct.nlattr.1** %17, align 8
  %48 = load i32, i32* @IFNAMSIZ, align 4
  %49 = call i32 @nla_strlcpy(i8* %23, %struct.nlattr.1* %47, i32 %48)
  %50 = load i32, i32* @IFNAMSIZ, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %136

53:                                               ; preds = %46
  br label %64

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %18, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @IFNAMSIZ, align 4
  %59 = call i32 @strlcpy(i8* %23, i8* %57, i32 %58)
  %60 = load i32, i32* @IFNAMSIZ, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %136

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  %65 = call %struct.tc_action_ops* @tc_lookup_action_n(i8* %23)
  store %struct.tc_action_ops* %65, %struct.tc_action_ops** %13, align 8
  %66 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %67 = icmp eq %struct.tc_action_ops* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %18, align 4
  br label %136

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.tc_action* @kzalloc(i32 8, i32 %74)
  store %struct.tc_action* %75, %struct.tc_action** %12, align 8
  %76 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  %77 = icmp eq %struct.tc_action* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %131

79:                                               ; preds = %71
  %80 = load i8*, i8** %9, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %84 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %83, i32 0, i32 0
  %85 = load i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action.0*, i32, i32)*, i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action.0*, i32, i32)** %84, align 8
  %86 = load i64, i64* @TCA_ACT_OPTIONS, align 8
  %87 = getelementptr inbounds %struct.nlattr.1*, %struct.nlattr.1** %27, i64 %86
  %88 = load %struct.nlattr.1*, %struct.nlattr.1** %87, align 8
  %89 = bitcast %struct.nlattr.1* %88 to %struct.nlattr*
  %90 = load %struct.nlattr.1*, %struct.nlattr.1** %8, align 8
  %91 = bitcast %struct.nlattr.1* %90 to %struct.nlattr*
  %92 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  %93 = bitcast %struct.tc_action* %92 to %struct.tc_action.0*
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 %85(%struct.nlattr* %89, %struct.nlattr* %91, %struct.tc_action.0* %93, i32 %94, i32 %95)
  store i32 %96, i32* %18, align 4
  br label %110

97:                                               ; preds = %79
  %98 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %99 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %98, i32 0, i32 0
  %100 = load i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action.0*, i32, i32)*, i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action.0*, i32, i32)** %99, align 8
  %101 = load %struct.nlattr.1*, %struct.nlattr.1** %7, align 8
  %102 = bitcast %struct.nlattr.1* %101 to %struct.nlattr*
  %103 = load %struct.nlattr.1*, %struct.nlattr.1** %8, align 8
  %104 = bitcast %struct.nlattr.1* %103 to %struct.nlattr*
  %105 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  %106 = bitcast %struct.tc_action* %105 to %struct.tc_action.0*
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 %100(%struct.nlattr* %102, %struct.nlattr* %104, %struct.tc_action.0* %106, i32 %107, i32 %108)
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %97, %82
  %111 = load i32, i32* %18, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %128

114:                                              ; preds = %110
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @ACT_P_CREATED, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %120 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @module_put(i32 %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %125 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  %126 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %125, i32 0, i32 0
  store %struct.tc_action_ops* %124, %struct.tc_action_ops** %126, align 8
  %127 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  store %struct.tc_action* %127, %struct.tc_action** %6, align 8
  store i32 1, i32* %19, align 4
  br label %139

128:                                              ; preds = %113
  %129 = load %struct.tc_action*, %struct.tc_action** %12, align 8
  %130 = call i32 @kfree(%struct.tc_action* %129)
  br label %131

131:                                              ; preds = %128, %78
  %132 = load %struct.tc_action_ops*, %struct.tc_action_ops** %13, align 8
  %133 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @module_put(i32 %134)
  br label %136

136:                                              ; preds = %131, %68, %62, %52, %45, %36
  %137 = load i32, i32* %18, align 4
  %138 = call %struct.tc_action* @ERR_PTR(i32 %137)
  store %struct.tc_action* %138, %struct.tc_action** %6, align 8
  store i32 1, i32* %19, align 4
  br label %139

139:                                              ; preds = %136, %123
  %140 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  ret %struct.tc_action* %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr.1**, i32, %struct.nlattr.1*, i32*) #2

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr.1*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local %struct.tc_action_ops* @tc_lookup_action_n(i8*) #2

declare dso_local %struct.tc_action* @kzalloc(i32, i32) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @kfree(%struct.tc_action*) #2

declare dso_local %struct.tc_action* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
