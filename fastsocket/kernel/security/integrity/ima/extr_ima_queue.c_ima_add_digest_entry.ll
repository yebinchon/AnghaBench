; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_queue.c_ima_add_digest_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_queue.c_ima_add_digest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.ima_template_entry = type { i32 }
%struct.ima_queue_entry = type { i32, i32, %struct.ima_template_entry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"IMA: OUT OF MEMORY ERROR creating queue entry.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ima_measurements = common dso_local global i32 0, align 4
@ima_htable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ima_template_entry*)* @ima_add_digest_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_add_digest_entry(%struct.ima_template_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ima_template_entry*, align 8
  %4 = alloca %struct.ima_queue_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ima_template_entry* %0, %struct.ima_template_entry** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ima_queue_entry* @kmalloc(i32 16, i32 %6)
  store %struct.ima_queue_entry* %7, %struct.ima_queue_entry** %4, align 8
  %8 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %4, align 8
  %9 = icmp eq %struct.ima_queue_entry* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.ima_template_entry*, %struct.ima_template_entry** %3, align 8
  %16 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %16, i32 0, i32 2
  store %struct.ima_template_entry* %15, %struct.ima_template_entry** %17, align 8
  %18 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %4, align 8
  %19 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %4, align 8
  %22 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %21, i32 0, i32 1
  %23 = call i32 @list_add_tail_rcu(i32* %22, i32* @ima_measurements)
  %24 = call i32 @atomic_long_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ima_htable, i32 0, i32 1))
  %25 = load %struct.ima_template_entry*, %struct.ima_template_entry** %3, align 8
  %26 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ima_hash_key(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %4, align 8
  %30 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %29, i32 0, i32 0
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ima_htable, i32 0, i32 0), align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @hlist_add_head_rcu(i32* %30, i32* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ima_queue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ima_hash_key(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
