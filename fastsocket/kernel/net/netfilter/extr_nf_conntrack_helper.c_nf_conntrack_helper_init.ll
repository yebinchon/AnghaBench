; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nf_ct_helper_hsize = common dso_local global i32 0, align 4
@nf_ct_helper_vmalloc = common dso_local global i32 0, align 4
@nf_ct_helper_hash = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@helper_extend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_helper_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @nf_ct_helper_hsize, align 4
  %3 = call i32 @nf_ct_alloc_hashtable(i32* @nf_ct_helper_hsize, i32* @nf_ct_helper_vmalloc, i32 0)
  store i32 %3, i32* @nf_ct_helper_hash, align 4
  %4 = load i32, i32* @nf_ct_helper_hash, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %21

9:                                                ; preds = %0
  %10 = call i32 @nf_ct_extend_register(i32* @helper_extend)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %21

15:                                               ; preds = %13
  %16 = load i32, i32* @nf_ct_helper_hash, align 4
  %17 = load i32, i32* @nf_ct_helper_vmalloc, align 4
  %18 = load i32, i32* @nf_ct_helper_hsize, align 4
  %19 = call i32 @nf_ct_free_hashtable(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %15, %14, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @nf_ct_alloc_hashtable(i32*, i32*, i32) #1

declare dso_local i32 @nf_ct_extend_register(i32*) #1

declare dso_local i32 @nf_ct_free_hashtable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
