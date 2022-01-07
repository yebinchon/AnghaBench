; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_port_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32 }

@port_alloc.port = internal global i16 8192, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.sock*)* @port_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @port_alloc(%struct.sock* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  %5 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.dn_scp* @DN_SK(%struct.sock* %6)
  store %struct.dn_scp* %7, %struct.dn_scp** %4, align 8
  %8 = load i16, i16* @port_alloc.port, align 2
  store i16 %8, i16* %5, align 2
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i16, i16* @port_alloc.port, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* @port_alloc.port, align 2
  %12 = call i32 @cpu_to_le16(i16 zeroext %11)
  %13 = call i64 @check_port(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i16, i16* @port_alloc.port, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i16 0, i16* %2, align 2
  br label %28

22:                                               ; preds = %15
  br label %9

23:                                               ; preds = %9
  %24 = load i16, i16* @port_alloc.port, align 2
  %25 = call i32 @cpu_to_le16(i16 zeroext %24)
  %26 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %27 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i16 1, i16* %2, align 2
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i16, i16* %2, align 2
  ret i16 %29
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i64 @check_port(i32) #1

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
