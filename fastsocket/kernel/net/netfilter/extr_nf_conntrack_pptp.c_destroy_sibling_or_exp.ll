; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_destroy_sibling_or_exp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_destroy_sibling_or_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_expect = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (i64)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nf_conn = type { %struct.TYPE_6__, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [39 x i8] c"trying to timeout ct or exp for tuple \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting timeout of conntrack %p to 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpect_related of expect %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nf_conntrack_tuple*)* @destroy_sibling_or_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_sibling_or_exp(%struct.net* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %7 = alloca %struct.nf_conntrack_expect*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %11 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %10)
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %14 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %12, %struct.nf_conntrack_tuple* %13)
  store %struct.nf_conntrack_tuple_hash* %14, %struct.nf_conntrack_tuple_hash** %6, align 8
  %15 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %6, align 8
  %16 = icmp ne %struct.nf_conntrack_tuple_hash* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %6, align 8
  %19 = call %struct.nf_conntrack_expect* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %18)
  %20 = bitcast %struct.nf_conntrack_expect* %19 to %struct.nf_conn*
  store %struct.nf_conn* %20, %struct.nf_conn** %8, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %21)
  %23 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %32 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %31, i32 0, i32 0
  %33 = call i64 @del_timer(%struct.TYPE_6__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %17
  %36 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (i64)*, i32 (i64)** %38, align 8
  %40 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %41 = ptrtoint %struct.nf_conn* %40 to i64
  %42 = call i32 %39(i64 %41)
  br label %43

43:                                               ; preds = %35, %17
  %44 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %45 = bitcast %struct.nf_conn* %44 to %struct.nf_conntrack_expect*
  %46 = call i32 @nf_ct_put(%struct.nf_conntrack_expect* %45)
  store i32 1, i32* %3, align 4
  br label %62

47:                                               ; preds = %2
  %48 = load %struct.net*, %struct.net** %4, align 8
  %49 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %50 = call %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net* %48, %struct.nf_conntrack_tuple* %49)
  store %struct.nf_conntrack_expect* %50, %struct.nf_conntrack_expect** %7, align 8
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %52 = icmp ne %struct.nf_conntrack_expect* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %55 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.nf_conntrack_expect* %54)
  %56 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %57 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %56)
  %58 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %59 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %58)
  store i32 1, i32* %3, align 4
  br label %62

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %53, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conntrack_expect*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
