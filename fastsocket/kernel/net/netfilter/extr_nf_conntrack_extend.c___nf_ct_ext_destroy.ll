; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c___nf_ct_ext_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c___nf_ct_ext_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_ct_ext_type = type { i32 (%struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque

@NF_CT_EXT_NUM = common dso_local global i32 0, align 4
@nf_ct_ext_types = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nf_ct_ext_destroy(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_ct_ext_type*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NF_CT_EXT_NUM, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @nf_ct_ext_exist(%struct.nf_conn* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %39

15:                                               ; preds = %9
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i32*, i32** @nf_ct_ext_types, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nf_ct_ext_type* @rcu_dereference(i32 %21)
  store %struct.nf_ct_ext_type* %22, %struct.nf_ct_ext_type** %4, align 8
  %23 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %24 = icmp ne %struct.nf_ct_ext_type* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %27 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %26, i32 0, i32 0
  %28 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.nf_conn.0*)* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %32 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %31, i32 0, i32 0
  %33 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %32, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %35 = bitcast %struct.nf_conn* %34 to %struct.nf_conn.0*
  %36 = call i32 %33(%struct.nf_conn.0* %35)
  br label %37

37:                                               ; preds = %30, %25, %15
  %38 = call i32 (...) @rcu_read_unlock()
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @nf_ct_ext_exist(%struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_ext_type* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
