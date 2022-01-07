; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_seq_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_pool_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s\09%-15s%-15s%-15s%-15s%-15s%-15s%-15s%-15s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Recycle\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Pool_hit\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Slab_hit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"C_free\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"C_recycle\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"C_pool_hit\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"C_slab_hit\00", align 1
@cpu_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @skb_pool_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skb_pool_seq_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* @cpu_id, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @skb_pool_get_online(i32* %7)
  ret i8* %8
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @skb_pool_get_online(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
