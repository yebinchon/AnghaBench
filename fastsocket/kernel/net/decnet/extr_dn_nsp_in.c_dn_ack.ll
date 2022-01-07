; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i16, i16, i32, i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i16)* @dn_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_ack(%struct.sock* %0, %struct.sk_buff* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.dn_scp*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %7, align 8
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 3
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %8, align 2
  store i32 0, i32* %9, align 4
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  switch i32 %18, label %67 [
    i32 0, label %19
    i32 1, label %42
    i32 2, label %43
    i32 3, label %66
  ]

19:                                               ; preds = %3
  %20 = load i16, i16* %6, align 2
  %21 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %22 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 4
  %24 = call i32 @dn_after(i16 zeroext %20, i16 zeroext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 4095
  %30 = trunc i32 %29 to i16
  %31 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %32 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %31, i32 0, i32 0
  store i16 %30, i16* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %36 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %35, i32 0, i32 3
  %37 = load i16, i16* %6, align 2
  %38 = call i32 @dn_nsp_check_xmit_queue(%struct.sock* %33, %struct.sk_buff* %34, i32* %36, i16 zeroext %37)
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %26, %19
  br label %67

42:                                               ; preds = %3
  br label %67

43:                                               ; preds = %3
  %44 = load i16, i16* %6, align 2
  %45 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %46 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 2
  %48 = call i32 @dn_after(i16 zeroext %44, i16 zeroext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 4095
  %54 = trunc i32 %53 to i16
  %55 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %56 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %55, i32 0, i32 1
  store i16 %54, i16* %56, align 2
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load %struct.dn_scp*, %struct.dn_scp** %7, align 8
  %60 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %59, i32 0, i32 2
  %61 = load i16, i16* %6, align 2
  %62 = call i32 @dn_nsp_check_xmit_queue(%struct.sock* %57, %struct.sk_buff* %58, i32* %60, i16 zeroext %61)
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %50, %43
  br label %67

66:                                               ; preds = %3
  br label %67

67:                                               ; preds = %3, %66, %65, %42, %41
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = load i32, i32* @SOCK_DEAD, align 4
  %73 = call i32 @sock_flag(%struct.sock* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %77, align 8
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 %78(%struct.sock* %79)
  br label %81

81:                                               ; preds = %75, %70, %67
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_after(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @dn_nsp_check_xmit_queue(%struct.sock*, %struct.sk_buff*, i32*, i16 zeroext) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
