; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@nf_ct_expect_hsize = common dso_local global i32 0, align 4
@nf_ct_expect_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nf_conntrack_expect\00", align 1
@nf_ct_expect_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_expect_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call i64 @net_eq(%struct.net* %7, i32* @init_net)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @nf_ct_expect_hsize, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 256
  store i32 %18, i32* @nf_ct_expect_hsize, align 4
  %19 = load i32, i32* @nf_ct_expect_hsize, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 1, i32* @nf_ct_expect_hsize, align 4
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* @nf_ct_expect_hsize, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* @nf_ct_expect_max, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.net*, %struct.net** %3, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32* @nf_ct_alloc_hashtable(i32* @nf_ct_expect_hsize, i32* %32, i32 0)
  %34 = load %struct.net*, %struct.net** %3, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = load %struct.net*, %struct.net** %3, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %79

43:                                               ; preds = %26
  %44 = load %struct.net*, %struct.net** %3, align 8
  %45 = call i64 @net_eq(%struct.net* %44, i32* @init_net)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i32 %48, i32* @nf_ct_expect_cachep, align 4
  %49 = load i32, i32* @nf_ct_expect_cachep, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %68

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.net*, %struct.net** %3, align 8
  %55 = call i32 @exp_proc_init(%struct.net* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %81

60:                                               ; preds = %58
  %61 = load %struct.net*, %struct.net** %3, align 8
  %62 = call i64 @net_eq(%struct.net* %61, i32* @init_net)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @nf_ct_expect_cachep, align 4
  %66 = call i32 @kmem_cache_destroy(i32 %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.net*, %struct.net** %3, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.net*, %struct.net** %3, align 8
  %74 = getelementptr inbounds %struct.net, %struct.net* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @nf_ct_expect_hsize, align 4
  %78 = call i32 @nf_ct_free_hashtable(i32* %72, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %42
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %59
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @net_eq(%struct.net*, i32*) #1

declare dso_local i32* @nf_ct_alloc_hashtable(i32*, i32*, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @exp_proc_init(%struct.net*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @nf_ct_free_hashtable(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
