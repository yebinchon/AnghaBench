; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_mk_ack_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_mk_ack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i32, i32, i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sock*, %struct.sk_buff*, i8, i32, i32)* @dn_mk_ack_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dn_mk_ack_header(%struct.sock* %0, %struct.sk_buff* %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dn_scp*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32*, align 8
  %15 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.dn_scp* @DN_SK(%struct.sock* %16)
  store %struct.dn_scp* %17, %struct.dn_scp** %11, align 8
  %18 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %19 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 4095
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %12, align 2
  %23 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %24 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4095
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %13, align 2
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 9
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i16, i16* %12, align 2
  %33 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %34 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %33, i32 0, i32 2
  store i16 %32, i16* %34, align 4
  %35 = load i16, i16* %13, align 2
  %36 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %37 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %36, i32 0, i32 3
  store i16 %35, i16* %37, align 2
  %38 = load i16, i16* %12, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, 32768
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %12, align 2
  %42 = load i16, i16* %13, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, 32768
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %13, align 2
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load i16, i16* %12, align 2
  store i16 %49, i16* %15, align 2
  %50 = load i16, i16* %13, align 2
  store i16 %50, i16* %12, align 2
  %51 = load i16, i16* %15, align 2
  store i16 %51, i16* %13, align 2
  br label %52

52:                                               ; preds = %48, %5
  %53 = load i16, i16* %13, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %54, 8192
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %13, align 2
  %57 = load %struct.dn_scp*, %struct.dn_scp** %11, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i8, i8* %8, align 1
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @dn_mk_common_header(%struct.dn_scp* %57, %struct.sk_buff* %58, i8 zeroext %59, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %14, align 8
  %63 = load i16, i16* %12, align 2
  %64 = call i8* @cpu_to_le16(i16 zeroext %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i16, i16* %13, align 2
  %69 = call i8* @cpu_to_le16(i16 zeroext %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  ret i32* %73
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dn_mk_common_header(%struct.dn_scp*, %struct.sk_buff*, i8 zeroext, i32) #1

declare dso_local i8* @cpu_to_le16(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
