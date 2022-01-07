; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.dsmark_qdisc_data = type { i32, i32*, i32, i8*, i32*, i32* }

@TCA_DSMARK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_DEFAULT_INDEX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"dsmark_init(sch %p,[qdisc %p],opt %p)\0A\00", align 1
@dsmark_policy = common dso_local global i32 0, align 4
@TCA_DSMARK_INDICES = common dso_local global i64 0, align 8
@TCA_DSMARK_DEFAULT_INDEX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCA_DSMARK_SET_TC_INDEX = common dso_local global i64 0, align 8
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dsmark_init: qdisc %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @dsmark_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.dsmark_qdisc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.dsmark_qdisc_data* %13, %struct.dsmark_qdisc_data** %5, align 8
  %14 = load i32, i32* @TCA_DSMARK_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** @NO_DEFAULT_INDEX, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %23 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %25 = call i32 (i8*, %struct.Qdisc*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %22, %struct.dsmark_qdisc_data* %23, %struct.nlattr* %24)
  %26 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %127

29:                                               ; preds = %2
  %30 = load i32, i32* @TCA_DSMARK_MAX, align 4
  %31 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %32 = load i32, i32* @dsmark_policy, align 4
  %33 = call i32 @nla_parse_nested(%struct.nlattr** %18, i32 %30, %struct.nlattr* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %127

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* @TCA_DSMARK_INDICES, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i8* @nla_get_u16(%struct.nlattr* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @hweight32(i32 %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %127

49:                                               ; preds = %37
  %50 = load i64, i64* @TCA_DSMARK_DEFAULT_INDEX, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, i64* @TCA_DSMARK_DEFAULT_INDEX, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_get_u16(%struct.nlattr* %57)
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 2
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32* @kmalloc(i32 %61, i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %127

69:                                               ; preds = %59
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %72 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %71, i32 0, i32 5
  store i32* %70, i32** %72, align 8
  %73 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %74 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @memset(i32* %75, i32 255, i32 %76)
  %78 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %79 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %85 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %84, i32 0, i32 4
  store i32* %83, i32** %85, align 8
  %86 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %87 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @memset(i32* %88, i32 0, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %93 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %96 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @TCA_DSMARK_SET_TC_INDEX, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @nla_get_flag(%struct.nlattr* %99)
  %101 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %102 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %104 = call i32 @qdisc_dev(%struct.Qdisc* %103)
  %105 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %106 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %109 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @qdisc_create_dflt(i32 %104, i32 %107, i32* @pfifo_qdisc_ops, i32 %110)
  %112 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %113 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %115 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %69
  %119 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %120 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %119, i32 0, i32 1
  store i32* @noop_qdisc, i32** %120, align 8
  br label %121

121:                                              ; preds = %118, %69
  %122 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %5, align 8
  %123 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = bitcast i32* %124 to %struct.Qdisc*
  %126 = call i32 (i8*, %struct.Qdisc*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.Qdisc* %125)
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %66, %48, %36, %28
  %128 = load i32, i32* %8, align 4
  %129 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %129)
  ret i32 %128
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, ...) #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nla_get_flag(%struct.nlattr*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
