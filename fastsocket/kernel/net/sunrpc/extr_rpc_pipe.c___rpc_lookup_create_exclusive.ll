; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_lookup_create_exclusive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_lookup_create_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32* }
%struct.qstr = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.qstr*)* @__rpc_lookup_create_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__rpc_lookup_create_exclusive(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = load %struct.qstr*, %struct.qstr** %5, align 8
  %9 = call %struct.dentry* @__rpc_lookup_create(%struct.dentry* %7, %struct.qstr* %8)
  store %struct.dentry* %9, %struct.dentry** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call i64 @IS_ERR(%struct.dentry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %21, %struct.dentry** %3, align 8
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @dput(%struct.dentry* %23)
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %3, align 8
  br label %28

28:                                               ; preds = %22, %20, %13
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %29
}

declare dso_local %struct.dentry* @__rpc_lookup_create(%struct.dentry*, %struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
