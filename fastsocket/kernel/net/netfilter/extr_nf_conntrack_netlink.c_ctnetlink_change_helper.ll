; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn_help = type { %struct.nf_conntrack_helper*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CTA_HELP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@nf_conntrack_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_helper(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nf_conntrack_helper*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %11 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %10)
  store %struct.nf_conn_help* %11, %struct.nf_conn_help** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @CTA_HELP, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @ctnetlink_parse_help(%struct.nlattr* %23, i8** %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %95

29:                                               ; preds = %19
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %35 = icmp ne %struct.nf_conn_help* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %38 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %37, i32 0, i32 0
  %39 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %38, align 8
  %40 = icmp ne %struct.nf_conntrack_helper* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %43 = call i32 @nf_ct_remove_expectations(%struct.nf_conn* %42)
  %44 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %45 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %44, i32 0, i32 0
  %46 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %45, align 8
  %47 = call i32 @rcu_assign_pointer(%struct.nf_conntrack_helper* %46, %struct.nf_conntrack_helper* null)
  br label %48

48:                                               ; preds = %41, %36, %33
  store i32 0, i32* %3, align 4
  br label %95

49:                                               ; preds = %29
  %50 = load i8*, i8** %8, align 8
  %51 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find_byname(i8* %50)
  store %struct.nf_conntrack_helper* %51, %struct.nf_conntrack_helper** %6, align 8
  %52 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %53 = icmp eq %struct.nf_conntrack_helper* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %95

57:                                               ; preds = %49
  %58 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %59 = icmp ne %struct.nf_conn_help* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %62 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %61, i32 0, i32 0
  %63 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %62, align 8
  %64 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %65 = icmp eq %struct.nf_conntrack_helper* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %95

67:                                               ; preds = %60
  %68 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %69 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %68, i32 0, i32 0
  %70 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %69, align 8
  %71 = icmp ne %struct.nf_conntrack_helper* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %67
  %76 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %77 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %76, i32 0, i32 1
  %78 = call i32 @memset(i32* %77, i32 0, i32 4)
  br label %89

79:                                               ; preds = %57
  %80 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %80, i32 %81)
  store %struct.nf_conn_help* %82, %struct.nf_conn_help** %7, align 8
  %83 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %84 = icmp eq %struct.nf_conn_help* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %95

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %75
  %90 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %91 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %90, i32 0, i32 0
  %92 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %91, align 8
  %93 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %94 = call i32 @rcu_assign_pointer(%struct.nf_conntrack_helper* %92, %struct.nf_conntrack_helper* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %85, %72, %66, %54, %48, %27, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @ctnetlink_parse_help(%struct.nlattr*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @nf_ct_remove_expectations(%struct.nf_conn*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_conntrack_helper*, %struct.nf_conntrack_helper*) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find_byname(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
