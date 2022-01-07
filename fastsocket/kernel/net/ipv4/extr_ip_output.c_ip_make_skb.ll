; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_make_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.ipcm_cookie = type { i32 }
%struct.rtable = type { i32 }
%struct.inet_cork = type { i32 }
%struct.sk_buff_head = type { i32 }

@MSG_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ip_make_skb(%struct.sock* %0, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i8* %2, i32 %3, i32 %4, %struct.ipcm_cookie* %5, %struct.rtable** %6, i32 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipcm_cookie*, align 8
  %16 = alloca %struct.rtable**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.inet_cork, align 4
  %19 = alloca %struct.sk_buff_head, align 4
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.ipcm_cookie* %5, %struct.ipcm_cookie** %15, align 8
  store %struct.rtable** %6, %struct.rtable*** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = bitcast %struct.inet_cork* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* @MSG_PROBE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %57

27:                                               ; preds = %8
  %28 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %19)
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %15, align 8
  %31 = load %struct.rtable**, %struct.rtable*** %16, align 8
  %32 = call i32 @ip_setup_cork(%struct.sock* %29, %struct.inet_cork* %18, %struct.ipcm_cookie* %30, %struct.rtable** %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %20, align 4
  %37 = call %struct.sk_buff* @ERR_PTR(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %9, align 8
  br label %57

38:                                               ; preds = %27
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %15, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @__ip_append_data(%struct.sock* %39, %struct.sk_buff_head* %19, %struct.inet_cork* %18, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %40, i8* %41, i32 %42, i32 %43, %struct.ipcm_cookie* %44, i32 %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = call i32 @__ip_flush_pending_frames(%struct.sock* %50, %struct.sk_buff_head* %19, %struct.inet_cork* %18)
  %52 = load i32, i32* %20, align 4
  %53 = call %struct.sk_buff* @ERR_PTR(i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %9, align 8
  br label %57

54:                                               ; preds = %38
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = call %struct.sk_buff* @__ip_make_skb(%struct.sock* %55, %struct.sk_buff_head* %19, %struct.inet_cork* %18)
  store %struct.sk_buff* %56, %struct.sk_buff** %9, align 8
  br label %57

57:                                               ; preds = %54, %49, %35, %26
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #2

declare dso_local i32 @ip_setup_cork(%struct.sock*, %struct.inet_cork*, %struct.ipcm_cookie*, %struct.rtable**) #2

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #2

declare dso_local i32 @__ip_append_data(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32, i32, %struct.ipcm_cookie*, i32) #2

declare dso_local i32 @__ip_flush_pending_frames(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork*) #2

declare dso_local %struct.sk_buff* @__ip_make_skb(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
