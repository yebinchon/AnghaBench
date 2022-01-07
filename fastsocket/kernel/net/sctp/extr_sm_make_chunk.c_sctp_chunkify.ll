; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunkify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunkify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32, i32, i32, i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.sctp_association*, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sock = type { i32 }

@sctp_chunk_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"chunkifying skb %p w/o an sk\0A\00", align 1
@SCTP_CAN_FRTX = common dso_local global i32 0, align 4
@chunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff* %0, %struct.sctp_association* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load i32, i32* @sctp_chunk_cachep, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sctp_chunk* @kmem_cache_zalloc(i32 %8, i32 %9)
  store %struct.sctp_chunk* %10, %struct.sctp_chunk** %7, align 8
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %12 = icmp ne %struct.sctp_chunk* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %66

14:                                               ; preds = %3
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 17
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 16
  store %struct.sk_buff* %24, %struct.sk_buff** %26, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 15
  store %struct.sctp_association* %27, %struct.sctp_association** %29, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 14
  store i64 0, i64* %31, align 8
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 11
  store i64 0, i64* %37, align 8
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %45 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @SCTP_CAN_FRTX, align 4
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 3
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %59 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %58, i32 0, i32 2
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load i32, i32* @chunk, align 4
  %62 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %61)
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %63, i32 0, i32 1
  %65 = call i32 @atomic_set(i32* %64, i32 1)
  br label %66

66:                                               ; preds = %20, %13
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %67
}

declare dso_local %struct.sctp_chunk* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sk_buff*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
