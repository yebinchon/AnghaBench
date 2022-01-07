; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i32 }
%struct.cipso_v4_doi = type { i32 }

@ENOMSG = common dso_local global i32 0, align 4
@NETLBL_NLTYPE_CIPSOV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.netlbl_lsm_secattr*)* @cipso_v4_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipso_v4_getattr(i8* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netlbl_lsm_secattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cipso_v4_doi*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %5, align 8
  %9 = load i32, i32* @ENOMSG, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %16 = call i64 @cipso_v4_cache_check(i8* %11, i8 zeroext %14, %struct.netlbl_lsm_secattr* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = call i32 @get_unaligned_be32(i8* %21)
  store i32 %22, i32* %7, align 4
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.cipso_v4_doi* @cipso_v4_doi_search(i32 %24)
  store %struct.cipso_v4_doi* %25, %struct.cipso_v4_doi** %8, align 8
  %26 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %27 = icmp eq %struct.cipso_v4_doi* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %66

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %58 [
    i32 128, label %34
    i32 131, label %40
    i32 129, label %46
    i32 130, label %52
  ]

34:                                               ; preds = %29
  %35 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 6
  %38 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %39 = call i32 @cipso_v4_parsetag_rbm(%struct.cipso_v4_doi* %35, i8* %37, %struct.netlbl_lsm_secattr* %38)
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  %44 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %45 = call i32 @cipso_v4_parsetag_enum(%struct.cipso_v4_doi* %41, i8* %43, %struct.netlbl_lsm_secattr* %44)
  store i32 %45, i32* %6, align 4
  br label %58

46:                                               ; preds = %29
  %47 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %51 = call i32 @cipso_v4_parsetag_rng(%struct.cipso_v4_doi* %47, i8* %49, %struct.netlbl_lsm_secattr* %50)
  store i32 %51, i32* %6, align 4
  br label %58

52:                                               ; preds = %29
  %53 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %8, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %57 = call i32 @cipso_v4_parsetag_loc(%struct.cipso_v4_doi* %53, i8* %55, %struct.netlbl_lsm_secattr* %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %29, %52, %46, %40, %34
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @NETLBL_NLTYPE_CIPSOV4, align 4
  %63 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %5, align 8
  %64 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %28
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @cipso_v4_cache_check(i8*, i8 zeroext, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_search(i32) #1

declare dso_local i32 @cipso_v4_parsetag_rbm(%struct.cipso_v4_doi*, i8*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_parsetag_enum(%struct.cipso_v4_doi*, i8*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_parsetag_rng(%struct.cipso_v4_doi*, i8*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_parsetag_loc(%struct.cipso_v4_doi*, i8*, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
