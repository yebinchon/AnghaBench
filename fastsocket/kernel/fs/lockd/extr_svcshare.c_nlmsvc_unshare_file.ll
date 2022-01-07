; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcshare.c_nlmsvc_unshare_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svcshare.c_nlmsvc_unshare_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.nlm_file = type { %struct.nlm_share* }
%struct.nlm_share = type { %struct.nlm_share*, %struct.nlm_host* }
%struct.nlm_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xdr_netobj }
%struct.xdr_netobj = type { i32 }

@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_unshare_file(%struct.nlm_host* %0, %struct.nlm_file* %1, %struct.nlm_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_host*, align 8
  %6 = alloca %struct.nlm_file*, align 8
  %7 = alloca %struct.nlm_args*, align 8
  %8 = alloca %struct.nlm_share*, align 8
  %9 = alloca %struct.nlm_share**, align 8
  %10 = alloca %struct.xdr_netobj*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %5, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %6, align 8
  store %struct.nlm_args* %2, %struct.nlm_args** %7, align 8
  %11 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.xdr_netobj* %13, %struct.xdr_netobj** %10, align 8
  %14 = load %struct.nlm_file*, %struct.nlm_file** %6, align 8
  %15 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %14, i32 0, i32 0
  store %struct.nlm_share** %15, %struct.nlm_share*** %9, align 8
  br label %16

16:                                               ; preds = %40, %3
  %17 = load %struct.nlm_share**, %struct.nlm_share*** %9, align 8
  %18 = load %struct.nlm_share*, %struct.nlm_share** %17, align 8
  store %struct.nlm_share* %18, %struct.nlm_share** %8, align 8
  %19 = icmp ne %struct.nlm_share* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %22 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %21, i32 0, i32 1
  %23 = load %struct.nlm_host*, %struct.nlm_host** %22, align 8
  %24 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %25 = icmp eq %struct.nlm_host* %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %28 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %29 = call i64 @nlm_cmp_owner(%struct.nlm_share* %27, %struct.xdr_netobj* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %33 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %32, i32 0, i32 0
  %34 = load %struct.nlm_share*, %struct.nlm_share** %33, align 8
  %35 = load %struct.nlm_share**, %struct.nlm_share*** %9, align 8
  store %struct.nlm_share* %34, %struct.nlm_share** %35, align 8
  %36 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %37 = call i32 @kfree(%struct.nlm_share* %36)
  %38 = load i32, i32* @nlm_granted, align 4
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %26, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.nlm_share*, %struct.nlm_share** %8, align 8
  %42 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %41, i32 0, i32 0
  store %struct.nlm_share** %42, %struct.nlm_share*** %9, align 8
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* @nlm_granted, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @nlm_cmp_owner(%struct.nlm_share*, %struct.xdr_netobj*) #1

declare dso_local i32 @kfree(%struct.nlm_share*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
