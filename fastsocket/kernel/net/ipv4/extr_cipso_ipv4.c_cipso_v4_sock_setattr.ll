; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_sock_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_sock_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.ip_options = type { i32, i32, i32 }
%struct.inet_sock = type { i32, i64 }
%struct.inet_connection_sock = type { i32, i32, i32 (%struct.sock*, i32)* }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CIPSO_V4_OPT_LEN_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opt_kfree_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_sock_setattr(%struct.sock* %0, %struct.cipso_v4_doi* %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.cipso_v4_doi*, align 8
  %7 = alloca %struct.netlbl_lsm_secattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_options*, align 8
  %13 = alloca %struct.ip_options*, align 8
  %14 = alloca %struct.inet_sock*, align 8
  %15 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.cipso_v4_doi* %1, %struct.cipso_v4_doi** %6, align 8
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %7, align 8
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct.ip_options* null, %struct.ip_options** %13, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = icmp eq %struct.sock* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %127

21:                                               ; preds = %3
  %22 = load i32, i32* @CIPSO_V4_OPT_LEN_MAX, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %121

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %6, align 8
  %35 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %7, align 8
  %36 = call i32 @cipso_v4_genopt(i8* %32, i32 %33, %struct.cipso_v4_doi* %34, %struct.netlbl_lsm_secattr* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %121

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 3
  %44 = and i32 %43, -4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.ip_options* @kzalloc_ip_options(i32 %45, i32 %46)
  store %struct.ip_options* %47, %struct.ip_options** %13, align 8
  %48 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %49 = icmp eq %struct.ip_options* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %121

53:                                               ; preds = %40
  %54 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %55 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %62 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %64 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %63, i32 0, i32 1
  store i32 4, i32* %64, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @kfree(i8* %65)
  store i8* null, i8** %9, align 8
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = call %struct.inet_sock* @inet_sk(%struct.sock* %67)
  store %struct.inet_sock* %68, %struct.inet_sock** %14, align 8
  %69 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %70 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.ip_options* @rcu_dereference(i32 %71)
  store %struct.ip_options* %72, %struct.ip_options** %12, align 8
  %73 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %74 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %53
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %78)
  store %struct.inet_connection_sock* %79, %struct.inet_connection_sock** %15, align 8
  %80 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %81 = icmp ne %struct.ip_options* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %84 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %15, align 8
  %87 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %92 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %15, align 8
  %95 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %15, align 8
  %99 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %98, i32 0, i32 2
  %100 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %99, align 8
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %15, align 8
  %103 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 %100(%struct.sock* %101, i32 %104)
  br label %106

106:                                              ; preds = %90, %53
  %107 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %108 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %111 = call i32 @rcu_assign_pointer(i32 %109, %struct.ip_options* %110)
  %112 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %113 = icmp ne %struct.ip_options* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.ip_options*, %struct.ip_options** %12, align 8
  %116 = call %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options* %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* @opt_kfree_rcu, align 4
  %119 = call i32 @call_rcu(i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %106
  store i32 0, i32* %4, align 4
  br label %127

121:                                              ; preds = %50, %39, %28
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @kfree(i8* %122)
  %124 = load %struct.ip_options*, %struct.ip_options** %13, align 8
  %125 = call i32 @kfree_ip_options(%struct.ip_options* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %120, %20
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cipso_v4_genopt(i8*, i32, %struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*) #1

declare dso_local %struct.ip_options* @kzalloc_ip_options(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ip_options* @rcu_dereference(i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ip_options*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options*) #1

declare dso_local i32 @kfree_ip_options(%struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
