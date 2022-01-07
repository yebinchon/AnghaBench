; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_req_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_req_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.ip_options = type { i32, i32, i32 }
%struct.inet_request_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CIPSO_V4_OPT_LEN_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opt_kfree_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_req_setattr(%struct.request_sock* %0, %struct.cipso_v4_doi* %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_options*, align 8
  %13 = alloca %struct.inet_request_sock*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %5, align 8
  store %struct.cipso_v4_doi* %1, %struct.cipso_v4_doi** %6, align 8
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %7, align 8
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct.ip_options* null, %struct.ip_options** %12, align 8
  %16 = load i32, i32* @CIPSO_V4_OPT_LEN_MAX, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %76

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %29 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %30 = call i32 @cipso_v4_genopt(i8* %26, i32 %27, %struct.cipso_v4_doi* %28, %struct.netlbl_lsm_secattr* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %76

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 3
  %38 = and i32 %37, -4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.ip_options* @kzalloc_ip_options(i32 %39, i32 %40)
  store %struct.ip_options* %41, %struct.ip_options** %12, align 8
  %42 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %43 = icmp eq %struct.ip_options* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %76

47:                                               ; preds = %34
  %48 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %49 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %56 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %58 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %57, i32 0, i32 1
  store i32 4, i32* %58, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @kfree(i8* %59)
  store i8* null, i8** %9, align 8
  %61 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %62 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %61)
  store %struct.inet_request_sock* %62, %struct.inet_request_sock** %13, align 8
  %63 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %64 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %63, i32 0, i32 0
  %65 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %66 = call %struct.ip_options* @xchg(i32* %64, %struct.ip_options* %65)
  store %struct.ip_options* %66, %struct.ip_options** %12, align 8
  %67 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %68 = icmp ne %struct.ip_options* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %47
  %70 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %71 = call %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* @opt_kfree_rcu, align 4
  %74 = call i32 @call_rcu(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %47
  store i32 0, i32* %4, align 4
  br label %82

76:                                               ; preds = %44, %33, %22
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %80 = call i32 @kfree_ip_options(%struct.ip_options* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %75
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cipso_v4_genopt(i8*, i32, %struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*) #1

declare dso_local %struct.ip_options* @kzalloc_ip_options(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.ip_options* @xchg(i32*, %struct.ip_options*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options*) #1

declare dso_local i32 @kfree_ip_options(%struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
