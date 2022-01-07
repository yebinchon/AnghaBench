; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_disc_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_disc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.dn_scp = type { i32, i32, i32 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@DN_NR = common dso_local global i32 0, align 4
@NSP_REASON_DC = common dso_local global i16 0, align 2
@DN_DRC = common dso_local global i32 0, align 4
@NSP_REASON_NL = common dso_local global i16 0, align 2
@DN_CN = common dso_local global i8* null, align 8
@DN_DIC = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@dn_destroy_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_nsp_disc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_disc_conf(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.dn_scp* @DN_SK(%struct.sock* %7)
  store %struct.dn_scp* %8, %struct.dn_scp** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %101

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i16 @le16_to_cpu(i32 %19)
  store i16 %20, i16* %6, align 2
  %21 = load i32, i32* @TCP_CLOSE, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %25 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %68 [
    i32 131, label %27
    i32 129, label %31
    i32 130, label %53
    i32 128, label %57
    i32 132, label %63
  ]

27:                                               ; preds = %14
  %28 = load i32, i32* @DN_NR, align 4
  %29 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %68

31:                                               ; preds = %14
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @NSP_REASON_DC, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @DN_DRC, align 4
  %39 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i16, i16* %6, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @NSP_REASON_NL, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** @DN_CN, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %51 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %41
  br label %68

53:                                               ; preds = %14
  %54 = load i32, i32* @DN_DIC, align 4
  %55 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %56 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %68

57:                                               ; preds = %14
  %58 = load i32, i32* @SHUTDOWN_MASK, align 4
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %14, %57
  %64 = load i8*, i8** @DN_CN, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %67 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %14, %53, %52, %27
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load i32, i32* @SOCK_DEAD, align 4
  %71 = call i32 @sock_flag(%struct.sock* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %68
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SS_UNCONNECTED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i64, i64* @SS_DISCONNECTING, align 8
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %89, align 8
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = call i32 %90(%struct.sock* %91)
  br label %93

93:                                               ; preds = %87, %68
  %94 = load i32, i32* @dn_destroy_timer, align 4
  %95 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %96 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = call i32 @dn_nsp_persist(%struct.sock* %97)
  %99 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %100 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %13
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
