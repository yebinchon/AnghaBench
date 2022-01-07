; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_ext_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_ext_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_ext = type { i32*, i32, i32 }
%struct.nf_ct_ext_type = type { i32, i32, i32 }

@nf_ct_ext_types = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nf_ct_ext**, i32, i32)* @nf_ct_ext_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nf_ct_ext_create(%struct.nf_ct_ext** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nf_ct_ext**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_ct_ext_type*, align 8
  store %struct.nf_ct_ext** %0, %struct.nf_ct_ext*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load i32*, i32** @nf_ct_ext_types, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nf_ct_ext_type* @rcu_dereference(i32 %16)
  store %struct.nf_ct_ext_type* %17, %struct.nf_ct_ext_type** %10, align 8
  %18 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %10, align 8
  %19 = icmp eq %struct.nf_ct_ext_type* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %10, align 8
  %23 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ALIGN(i32 16, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %10, align 8
  %28 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %10, align 8
  %33 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.nf_ct_ext* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  store %struct.nf_ct_ext* %36, %struct.nf_ct_ext** %37, align 8
  %38 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  %39 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %38, align 8
  %40 = icmp ne %struct.nf_ct_ext* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %65

42:                                               ; preds = %3
  %43 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  %44 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %43, align 8
  %45 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %44, i32 0, i32 2
  %46 = call i32 @INIT_RCU_HEAD(i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  %49 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %48, align 8
  %50 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  %57 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %56, align 8
  %58 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.nf_ct_ext**, %struct.nf_ct_ext*** %5, align 8
  %60 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %59, align 8
  %61 = bitcast %struct.nf_ct_ext* %60 to i8*
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  store i8* %64, i8** %4, align 8
  br label %65

65:                                               ; preds = %42, %41
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_ext_type* @rcu_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_ct_ext* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
