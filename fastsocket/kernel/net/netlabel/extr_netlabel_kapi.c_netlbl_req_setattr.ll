; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_req_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_req_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.netlbl_dom_map = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.cipso_v4_doi* }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_domaddr4_map = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.cipso_v4_doi* }
%struct.inet_request_sock = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NETLBL_NLTYPE_ADDRSELECT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_req_setattr(%struct.request_sock* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca %struct.request_sock*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_dom_map*, align 8
  %7 = alloca %struct.netlbl_domaddr4_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cipso_v4_doi*, align 8
  %10 = alloca %struct.inet_request_sock*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %13 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32 %14)
  store %struct.netlbl_dom_map* %15, %struct.netlbl_dom_map** %6, align 8
  %16 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %17 = icmp eq %struct.netlbl_dom_map* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %23 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %78 [
    i32 131, label %27
  ]

27:                                               ; preds = %21
  %28 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %29 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NETLBL_NLTYPE_ADDRSELECT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %35 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %34)
  store %struct.inet_request_sock* %35, %struct.inet_request_sock** %10, align 8
  %36 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %37 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %40 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32 %38, i32 %41)
  store %struct.netlbl_domaddr4_map* %42, %struct.netlbl_domaddr4_map** %7, align 8
  %43 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %7, align 8
  %44 = icmp eq %struct.netlbl_domaddr4_map* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %82

48:                                               ; preds = %33
  %49 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %7, align 8
  %50 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %7, align 8
  %53 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %54, align 8
  store %struct.cipso_v4_doi* %55, %struct.cipso_v4_doi** %9, align 8
  br label %64

56:                                               ; preds = %27
  %57 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %58 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %61 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %62, align 8
  store %struct.cipso_v4_doi* %63, %struct.cipso_v4_doi** %9, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %74 [
    i32 129, label %66
    i32 128, label %71
  ]

66:                                               ; preds = %64
  %67 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %68 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %9, align 8
  %69 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %70 = call i32 @cipso_v4_req_setattr(%struct.request_sock* %67, %struct.cipso_v4_doi* %68, %struct.netlbl_lsm_secattr* %69)
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %64
  %72 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %73 = call i32 @cipso_v4_req_delattr(%struct.request_sock* %72)
  store i32 0, i32* %5, align 4
  br label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %71, %66
  br label %81

78:                                               ; preds = %21
  %79 = load i32, i32* @EPROTONOSUPPORT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %45, %18
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32, i32) #1

declare dso_local i32 @cipso_v4_req_setattr(%struct.request_sock*, %struct.cipso_v4_doi*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_req_delattr(%struct.request_sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
