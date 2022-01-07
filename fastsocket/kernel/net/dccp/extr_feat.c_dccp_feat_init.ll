; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.list_head = type { i32 }
%struct.anon = type { i32*, i32 }
%struct.TYPE_2__ = type { %struct.list_head }

@DCCPF_SEQUENCE_WINDOW = common dso_local global i32 0, align 4
@sysctl_dccp_sequence_window = common dso_local global i32 0, align 4
@DCCPF_SHORT_SEQNOS = common dso_local global i32 0, align 4
@DCCPF_ECN_INCAPABLE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@sysctl_dccp_tx_ccid = common dso_local global i32 0, align 4
@sysctl_dccp_rx_ccid = common dso_local global i32 0, align 4
@DCCPF_CCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_init(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 8
  %9 = alloca %struct.anon, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.list_head* %12, %struct.list_head** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8
  %14 = load i32, i32* @DCCPF_SEQUENCE_WINDOW, align 4
  %15 = load i32, i32* @sysctl_dccp_sequence_window, align 4
  %16 = call i32 @__feat_register_nn(%struct.list_head* %13, i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = load i32, i32* @DCCPF_SHORT_SEQNOS, align 4
  %24 = call i32 @__feat_register_sp(%struct.list_head* %22, i32 %23, i32 1, i32 1, i32* %6, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %21
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = load i32, i32* @DCCPF_ECN_INCAPABLE, align 4
  %32 = call i32 @__feat_register_sp(%struct.list_head* %30, i32 %31, i32 1, i32 1, i32* %5, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %94

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %40 = call i64 @ccid_get_builtin_ccids(i32** %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %45 = call i64 @ccid_get_builtin_ccids(i32** %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @ENOBUFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %94

50:                                               ; preds = %42
  %51 = load i32, i32* @sysctl_dccp_tx_ccid, align 4
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dccp_feat_prefer(i32 %51, i32* %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32, i32* @sysctl_dccp_rx_ccid, align 4
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dccp_feat_prefer(i32 %59, i32* %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58, %50
  br label %86

67:                                               ; preds = %58
  %68 = load %struct.list_head*, %struct.list_head** %4, align 8
  %69 = load i32, i32* @DCCPF_CCID, align 4
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @__feat_register_sp(%struct.list_head* %68, i32 %69, i32 1, i32 0, i32* %71, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %86

78:                                               ; preds = %67
  %79 = load %struct.list_head*, %struct.list_head** %4, align 8
  %80 = load i32, i32* @DCCPF_CCID, align 4
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @__feat_register_sp(%struct.list_head* %79, i32 %80, i32 0, i32 0, i32* %82, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %78, %77, %66
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %47, %35, %27, %19
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @__feat_register_nn(%struct.list_head*, i32, i32, i32) #1

declare dso_local i32 @__feat_register_sp(%struct.list_head*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @ccid_get_builtin_ccids(i32**, i32*) #1

declare dso_local i32 @dccp_feat_prefer(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
