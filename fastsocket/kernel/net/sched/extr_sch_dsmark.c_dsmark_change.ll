; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.dsmark_qdisc_data = type { i8**, i8** }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_DSMARK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"dsmark_change(sch %p,[qdisc %p],classid %x,parent %x),arg 0x%lx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@dsmark_policy = common dso_local global i32 0, align 4
@TCA_DSMARK_MASK = common dso_local global i64 0, align 8
@TCA_DSMARK_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*)* @dsmark_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_change(%struct.Qdisc* %0, i32 %1, i32 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.dsmark_qdisc_data*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %17)
  store %struct.dsmark_qdisc_data* %18, %struct.dsmark_qdisc_data** %11, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %20 = load i64, i64* @TCA_OPTIONS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  store %struct.nlattr* %22, %struct.nlattr** %12, align 8
  %23 = load i32, i32* @TCA_DSMARK_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %30, %struct.dsmark_qdisc_data* %31, i32 %32, i32 %33, i64 %35)
  %37 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %11, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dsmark_valid_index(%struct.dsmark_qdisc_data* %37, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  br label %99

45:                                               ; preds = %5
  %46 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %99

49:                                               ; preds = %45
  %50 = load i32, i32* @TCA_DSMARK_MAX, align 4
  %51 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %52 = load i32, i32* @dsmark_policy, align 4
  %53 = call i32 @nla_parse_nested(%struct.nlattr** %27, i32 %50, %struct.nlattr* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %99

57:                                               ; preds = %49
  %58 = load i64, i64* @TCA_DSMARK_MASK, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* @TCA_DSMARK_MASK, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i8* @nla_get_u8(%struct.nlattr* %65)
  store i8* %66, i8** %16, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i64, i64* @TCA_DSMARK_VALUE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i64, i64* @TCA_DSMARK_VALUE, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i8* @nla_get_u8(%struct.nlattr* %75)
  %77 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %11, align 8
  %78 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* %76, i8** %83, align 8
  br label %84

84:                                               ; preds = %72, %67
  %85 = load i64, i64* @TCA_DSMARK_MASK, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i8*, i8** %16, align 8
  %91 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %11, align 8
  %92 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  store i8* %90, i8** %97, align 8
  br label %98

98:                                               ; preds = %89, %84
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %98, %56, %48, %42
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.dsmark_qdisc_data*, i32, i32, i64) #1

declare dso_local i32 @dsmark_valid_index(%struct.dsmark_qdisc_data*, i64) #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
