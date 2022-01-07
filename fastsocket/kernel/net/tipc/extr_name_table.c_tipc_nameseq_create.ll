; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nameseq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nameseq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_seq = type { i32, i32, i32, i32, %struct.name_seq*, i32, i32 }
%struct.hlist_head = type { i32 }
%struct.sub_seq = type { i32, i32, i32, i32, %struct.sub_seq*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Name sequence creation failed, no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"tipc_nameseq_create(): nseq = %p, type %u, ssseqs %p, ff: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.name_seq* (i32, %struct.hlist_head*)* @tipc_nameseq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.name_seq* @tipc_nameseq_create(i32 %0, %struct.hlist_head* %1) #0 {
  %3 = alloca %struct.name_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca %struct.name_seq*, align 8
  %7 = alloca %struct.sub_seq*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hlist_head* %1, %struct.hlist_head** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sub_seq* @kzalloc(i32 32, i32 %8)
  %10 = bitcast %struct.sub_seq* %9 to %struct.name_seq*
  store %struct.name_seq* %10, %struct.name_seq** %6, align 8
  %11 = call %struct.sub_seq* @tipc_subseq_alloc(i32 1)
  store %struct.sub_seq* %11, %struct.sub_seq** %7, align 8
  %12 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %13 = icmp ne %struct.name_seq* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.sub_seq*, %struct.sub_seq** %7, align 8
  %16 = icmp ne %struct.sub_seq* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %2
  %18 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %20 = bitcast %struct.name_seq* %19 to %struct.sub_seq*
  %21 = call i32 @kfree(%struct.sub_seq* %20)
  %22 = load %struct.sub_seq*, %struct.sub_seq** %7, align 8
  %23 = call i32 @kfree(%struct.sub_seq* %22)
  store %struct.name_seq* null, %struct.name_seq** %3, align 8
  br label %59

24:                                               ; preds = %14
  %25 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %26 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %25, i32 0, i32 6
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %30 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sub_seq*, %struct.sub_seq** %7, align 8
  %32 = bitcast %struct.sub_seq* %31 to %struct.name_seq*
  %33 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %34 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %33, i32 0, i32 4
  store %struct.name_seq* %32, %struct.name_seq** %34, align 8
  %35 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %36 = bitcast %struct.name_seq* %35 to %struct.sub_seq*
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %39 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %38, i32 0, i32 4
  %40 = load %struct.name_seq*, %struct.name_seq** %39, align 8
  %41 = bitcast %struct.name_seq* %40 to %struct.sub_seq*
  %42 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %43 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dbg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), %struct.sub_seq* %36, i32 %37, %struct.sub_seq* %41, i32 %44)
  %46 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %47 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %49 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %48, i32 0, i32 1
  %50 = call i32 @INIT_HLIST_NODE(i32* %49)
  %51 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %52 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  %55 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %54, i32 0, i32 1
  %56 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %57 = call i32 @hlist_add_head(i32* %55, %struct.hlist_head* %56)
  %58 = load %struct.name_seq*, %struct.name_seq** %6, align 8
  store %struct.name_seq* %58, %struct.name_seq** %3, align 8
  br label %59

59:                                               ; preds = %24, %17
  %60 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  ret %struct.name_seq* %60
}

declare dso_local %struct.sub_seq* @kzalloc(i32, i32) #1

declare dso_local %struct.sub_seq* @tipc_subseq_alloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @kfree(%struct.sub_seq*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dbg(i8*, %struct.sub_seq*, i32, %struct.sub_seq*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
