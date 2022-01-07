; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_cred_alloc_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_cred_alloc_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cred_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRED_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @cred_alloc_blank() #0 {
  %1 = alloca %struct.cred*, align 8
  %2 = alloca %struct.cred*, align 8
  %3 = load i32, i32* @cred_jar, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.cred* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.cred* %5, %struct.cred** %2, align 8
  %6 = load %struct.cred*, %struct.cred** %2, align 8
  %7 = icmp ne %struct.cred* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %23

9:                                                ; preds = %0
  %10 = load %struct.cred*, %struct.cred** %2, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 1
  %12 = call i32 @atomic_set(i32* %11, i32 1)
  %13 = load %struct.cred*, %struct.cred** %2, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @security_cred_alloc_blank(%struct.cred* %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %20

18:                                               ; preds = %9
  %19 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %19, %struct.cred** %1, align 8
  br label %23

20:                                               ; preds = %17
  %21 = load %struct.cred*, %struct.cred** %2, align 8
  %22 = call i32 @abort_creds(%struct.cred* %21)
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %23

23:                                               ; preds = %20, %18, %8
  %24 = load %struct.cred*, %struct.cred** %1, align 8
  ret %struct.cred* %24
}

declare dso_local %struct.cred* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @security_cred_alloc_blank(%struct.cred*, i32) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
