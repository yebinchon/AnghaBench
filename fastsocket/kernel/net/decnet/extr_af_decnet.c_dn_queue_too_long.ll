; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_queue_too_long.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_queue_too_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_scp = type { i8, i64, i64, i64 }
%struct.sk_buff_head = type { i32 }

@NSP_FC_MASK = common dso_local global i8 0, align 1
@NSP_FC_NONE = common dso_local global i8 0, align 1
@MSG_OOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_scp*, %struct.sk_buff_head*, i32)* @dn_queue_too_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_queue_too_long(%struct.dn_scp* %0, %struct.sk_buff_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.dn_scp* %0, %struct.dn_scp** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %10 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @NSP_FC_MASK, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %8, align 1
  %17 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %18 = call i64 @skb_queue_len(%struct.sk_buff_head* %17)
  %19 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %20 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %51

24:                                               ; preds = %3
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @NSP_FC_NONE, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MSG_OOB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %37 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %51

41:                                               ; preds = %35
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %44 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %51

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %24
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %40, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
